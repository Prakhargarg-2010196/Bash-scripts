#! /bin/bash 
# space is inclusive 
IFS='' 
LINK_TO_PLAYLIST=$1 # first parameter or argument for the script to get the playlist url
DIRECTORY=$2  # second parameter or argument for the script to get the location of the download
#cat $LINK_TO_PLAYLIST
#cat $DIRECTORY 
# To check if the directory exist or not
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
  else 
   echo "$DIRECTORY doesn't exist"
   mkdir -pv "$DIRECTORY"
fi

TEMPFILE=$(mktemp) #should generate a temp file in the /tmp directory
 # To get the urls of the videos in playlist 
echo $(yt-dlp --flat-playlist --print urls $LINK_TO_PLAYLIST)>>$TEMPFILE
cat $TEMPFILE
while read -r line; 
	do yt-dlp -P $DIRECTORY -o '%(title)s' -i  --write-sub --sub-lang en,en-US,en-UK,hi --embed-subs --no-playlist --write-auto-sub -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' "$line"
done < $TEMPFILE


 
