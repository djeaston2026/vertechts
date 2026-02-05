import os
import sys

def generate_sqlcl_notes(version):
    # Path follows the SQLcl 'project' standard
    base_path = f"demo/dist/releases/1.0/changes/release-1.0/demo1"
    
    if not os.path.exists(base_path):
        return f"Release folder for {version} not found."

    notes = [f"## 🚀 Release Notes - Version {version}\n"]
    
    # SQLcl organizes by object type folders (TABLE, VIEW, PACKAGE_BODY, etc.)
    for obj_type in sorted(os.listdir(base_path)):
        type_path = os.path.join(base_path, obj_type)
        if os.path.isdir(type_path):
            notes.append(f"### {obj_type.replace('_', ' ').title()}")
            
            for sql_file in os.listdir(type_path):
                if sql_file.endswith(".sql"):
                    # Extract description from the file if available
                    desc = "Updated object definition."
                    file_full_path = os.path.join(type_path, sql_file)
                    
                    with open(file_full_path, 'r') as f:
                        for line in f:
                            if "Description:" in line:
                                desc = line.split("Description:")[1].strip()
                                break
                    
                    notes.append(f"* `{sql_file}`: {desc}")
            notes.append("") # Add newline

    return "\n".join(notes)

if __name__ == "__main__":
    # Pass the version number as an argument (e.g., python script.py 1.0.1)
    ver = sys.argv[1] if len(sys.argv) > 1 else "next"
    print(generate_sqlcl_notes(ver))