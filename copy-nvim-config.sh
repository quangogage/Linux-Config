
#!/bin/bash

# Define source and destination directories
source_dir="$HOME/.config/nvim/"
destination_dir="$HOME/Projects/Linux-Config/nvim/"

# Ensure the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist: $source_dir"
    exit 1
fi

# Ensure the destination directory exists, if not, create it
mkdir -p "$destination_dir"

# Copy the contents of the source directory to the destination directory
cp -r "$source_dir"* "$destination_dir"

echo "Neovim configuration copied successfully!"
