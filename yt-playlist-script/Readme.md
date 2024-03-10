# Youtube Playlist Script 

This script is a bash script(unstable yet but usable) that can be used to download videos of playlist in the best format available with both audio best(<=1080p) and video best(<=1080p) and also combines those formats.

Also the best of all the hindi,english subtitles either auto-generated or present are embeded and as well downloaded in the same folder  

Able to take two parameters as of now 
- youtube-playlist-link as the first parameter that needs to be downloaded
- download folder as the second parameter where the videos be downloaded

As this script is bit unstable take care of the following things while downloading
- Use " " while giving paths.
- To stop downloading instead of Ctrl+C just close the terminal window.

USAGE:

```bash
 
 bash ytp.sh "Playlist_Link" "Path_To_Folder_Of_Download" 
 
 ```

NOTE : This script is tested on Linux Mint 21.3 x86_64 and may or may not work on your system handle with care. 

DEPENDENCIES REQUIRED BEFORE USING: 
- [yt-dlp](https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file#installation)
- [ffmpeg](https://ffmpeg.org/download.html) : sudo apt install ffmpeg
 