#!/bin/bash

# add_border.sh - This script uses ImageMagick to process
# macOS screen shots for publication

# Usage: 
#  1. Take screen shots (Cmd-Shift-5) on macOS
#  2. Save the file with a name that would be a good suffix (e.g. Remote.png)
#  3. Run this script. The script outputs modified files prefixed with "Crusader-"
#  4. Discard the original files

# The script does the following - for the .png files in the directory:
# - find all .png files that don't begin with "Crusader"
# - remove the transparent area/drop shadow from a macOS screen shot
# - shrink the image to the size of the image
# - draw a grey border 1 px wide around the window.
# - save the resulting file as "Crusader-....png"
# Thanks, ChatGPT

# Get the directory where the script is located
script_dir="$(dirname "$0")"

# Define the border size (1 pixel) and colors
border_size=1
border_color="gray"
background_color="white"

# Loop through all .png files 
for input_file in "$script_dir"/[a-zA-Z]*.png; do
  # Check if the file actually exists (in case no files match)
  if [ ! -f "$input_file" ]; then
    continue
  fi

  # Ignore files that already start with "Crusader"
  if [[ $(basename "$input_file") == Crusader* ]]; then
    echo "Skipping: $input_file"
    continue
  fi

  # Output file name (prepend "Crusader-" to the original file name)
  output_file="$script_dir/Crusader-$(basename "$input_file")"

  # Process the image:
  # 1. Remove the alpha channel (transparency) by filling with white
  # 2. Trim the image to its non-transparent content
  # 3. Add a 1-pixel grey border
  magick "$input_file" \
    -alpha off \
    -trim \
    -bordercolor $border_color \
    -border ${border_size}x${border_size} \
    "$output_file"

  echo "Processed: $input_file -> $output_file"
done

echo "All matching .png files processed."
