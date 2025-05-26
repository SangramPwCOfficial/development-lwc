import json
import subprocess
import pandas as pd
import time

# Configuration
METADATA_JSON_PATH = 'metadataTypes.json'
EXCEL_OUTPUT_PATH = 'org_metadata_inventory.xlsx'
ORG_ALIAS = 'lwcDev_01'  # Change to your org alias

def run_sfdx_listmetadata(metadata_type):
    try:
        result = subprocess.run(
            ['sfdx', 'force:mdapi:listmetadata', '--metadatatype', metadata_type, '-u', ORG_ALIAS, '--json'],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        output = json.loads(result.stdout)
        if 'result' in output and output['status'] == 0:
            return output['result']
        else:
            return []
    except Exception as e:
        print(f"Error listing metadata for type {metadata_type}: {e}")
        return []

def main():
    with open(METADATA_JSON_PATH, 'r') as f:
        metadata_info = json.load(f)

    metadata_rows = []
    summary_data = []

    for item in metadata_info.get('metadataObjects', []):
        metadata_type = item['xmlName']
        print(f"Processing: {metadata_type}")
        components = run_sfdx_listmetadata(metadata_type)

        if components:
            for comp in components:
                metadata_rows.append({
                    'MetadataType': metadata_type,
                    'ComponentName': comp.get('fullName', ''),
                    'Namespace': comp.get('namespacePrefix', ''),
                    'LastModifiedDate': comp.get('lastModifiedDate', '')
                })

        summary_data.append({
            'MetadataType': metadata_type,
            'ComponentCount': len(components) if components else 0
        })

        time.sleep(0.3)  # Avoid rate limits

    # Convert to dataframes
    df_components = pd.DataFrame(metadata_rows)
    df_summary = pd.DataFrame(summary_data)

    # Write to Excel with 2 sheets
    with pd.ExcelWriter(EXCEL_OUTPUT_PATH, engine='openpyxl') as writer:
        df_components.to_excel(writer, sheet_name='Metadata Components', index=False)
        df_summary.to_excel(writer, sheet_name='Metadata Type Summary', index=False)

    print(f"\n✅ Metadata inventory saved to {EXCEL_OUTPUT_PATH}")

if __name__ == "__main__":
    main()