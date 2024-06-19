import os
import shutil

def move_exe_files(root_folder):
    # Create a folder for .exe files inside the main directory
    exe_folder = os.path.join(root_folder, "exe_files")
    os.makedirs(exe_folder, exist_ok=True)
    
    # Traverse root directory, and list directories as dirs and files as files
    for root, dirs, files in os.walk(root_folder):
        for file in files:
            if file.endswith(".exe"):
                # Construct full source path
                src_path = os.path.join(root, file)
                
                # Construct relative destination path within exe_files folder
                relative_dest_path = os.path.relpath(src_path, root_folder)
                dest_path = os.path.join(exe_folder, relative_dest_path)
                
                # Create directories in exe_folder if they don't exist
                os.makedirs(os.path.dirname(dest_path), exist_ok=True)
                
                try:
                    # Attempt to move the file to the exe_files folder
                    shutil.move(src_path, dest_path)
                    print(f"Moved {src_path} to {dest_path}")
                except PermissionError as e:
                    print(f"PermissionError: {e}. Skipping {file}.")
                except Exception as e:
                    print(f"Error: {e}. Skipping {file}.")
    
    print("All .exe files from all directories have been moved to the 'exe_files' folder.")


# Example usage:
if __name__ == "__main__":
    main_directory = "C:\\Users\\Zach\\OneDrive\\Documents\\GitHub\\C"  # Replace with your main directory path
    move_exe_files(main_directory)
