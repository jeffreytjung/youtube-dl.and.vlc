#! /bin/bash

read -p "Enter URL: " url

~/.local/bin/youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '%(title)s.%(ext)s' $url

video=$(~/.local/bin/youtube-dl --get-title $url)

vlc "$video".mp4
