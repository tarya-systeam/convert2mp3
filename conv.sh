#!/bin/bash
[[ -d mp3 ]] || mkdir mp3
for i in *.mp4 *.ape *.flac *.webm *.wv *.wav *.mkv *.aiff; do
        if [[ $i =~ .*mp4$ ]]; then
                [ -f mp3/"${i%mp4}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%mp4}mp3"
        elif [[ $i =~ .*ape$ ]]; then
                [ -f mp3/"${i%ape}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%ape}mp3"
        elif [[ $i =~ .*flac$ ]]; then
                [ -f mp3/"${i%flac}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%flac}mp3"
        elif [[ $i =~ .*webm$ ]]; then
                [ -f mp3/"${i%webm}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%webm}mp3"
        elif [[ $i =~ .*wv$ ]]; then
                [ -f mp3/"${i%wv}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%wv}mp3"
        elif [[ $i =~ .*wav$ ]]; then
                [ -f mp3/"${i%wav}mp3" ] || ffmpeg -i "$i" -ac 2 -ar 44100 -ab 320k mp3/"${i%wav}mp3"
        elif [[ $i =~ .*mkv$ ]]; then
                [ -f mp3/"${i%mkv}mp3" ] || ffmpeg -i "$i" -vn -b:a 320k mp3/"${i%mkv}mp3"
        elif [[ $i =~ .*aiff$ ]]; then
                [ -f mp3/"${i%aiff}mp3" ] || ffmpeg -i "$i" -f mp3 -acodec libmp3lame -ab 320k -ar 44100 mp3/"${i%aiff}mp3"
        fi
done
