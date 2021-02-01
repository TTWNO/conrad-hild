#!/bin/sh

# Take sub clip from a video.
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
echo "What time would you like to start from? "
echo "Example: 00:00:00.000 (hrs:mnts:secs:millsecs)"
read startTime
echo "How long would you like the clip to be? "
echo "Provide the integer value in seconds."
read timeLength
ffmpeg -ss $startTime -i $oldName.$oldExtention -t $timeLength -c:v libx264 -c:a copy $newName.$newExtention

