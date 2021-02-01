#!/bin/sh

# Take a video file and change it to a new type.
echo "This shell script was designed by: Justin N. Pilon"
echo ""
echo "What is your file's current name?"
read oldName
echo "What would you like to call your new file?"
read newName
echo "Old video file extention? "
read oldExtention
echo "New video file extention? "
read newExtention
ffmpeg -i $oldName.$oldExtention $newName.$newExtention

