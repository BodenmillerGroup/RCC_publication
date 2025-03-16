import pandas as pd
import os
import argparse

def remove_file_extensions(file_path, slide_ext):

    process_df = pd.read_csv(os.path.join(file_path, 'process_list_autogen.csv'))

    # Remove the specified file extension from 'slide_id'
    process_df['slide_id'] = process_df['slide_id'].str.split(slide_ext).str[0]

    # Save updated DataFrame
    process_df.to_csv(os.path.join(file_path, 'process_list_autogen.csv'), index=False)
    print(f"Updated CSV saved successfully at: {file_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Remove specified file extensions from 'slide_id' column in CSV.")
    parser.add_argument(
        '--file_path', 
        type=str, 
        required=True, 
        help="Directory path containing 'process_list_autogen.csv'."
    )
    parser.add_argument(
        '--slide_ext', 
        type=str, 
        required=True, 
        help="File extension to remove (e.g., '.svs', '.tif')."
    )

    args = parser.parse_args()
    remove_file_extensions(args.file_path, args.slide_ext)