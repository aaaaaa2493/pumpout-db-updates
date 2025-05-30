# Updates of Pumpout database

Download Phoenix 2.09.1 database: https://github.com/aaaaaa2493/pumpout-db-updates/releases/download/Phoenix-2.09.1/pumpout-phoenix-2.09.1.db

### How to perform an update 
At the moment, I'm doing it regularly, so you don't have to

1. Copy patchnotes from [piugame.com](piugame.com) into `patchnote.txt` file. Remove unnecessary info (like `Exclusive song for premium only` text). Example of patchnote: https://piugame.com/phoenix_notice?wr_id=236
2. Edit [patchnote_parser.py](patchnote_parser.py) `PATCH_VERSION` variable
3. Run [patchnote_parser.py](patchnote_parser.py)
4. Copy the content that is before the line (`----`) into [data.py](data.py) into `STEPMAKERS` and `KOREAN_TITLES` variables. Fill the info about stepmakers and korean titles based on [Official YouTube channel](https://www.youtube.com/@PUMPITUPOfficial)
5. Copy the content that is after the line (`----`) into [data.py](data.py) into `data` variable right at the top as first entries. Check for correctness
6. Add new patch version into [main.py](main.py) `patches` variable
7. Run [main.py](main.py) and get `.sql` file in `sql` folder.
8. Copy latest database from `db` folder and name it with the latest patch name
9. Perform SQL query with the generated `.sql` file on the new `db` file
10. Copy images into `img_big` and `img` folders. Files in `img` folder should be 250px in width or less.

How to get images:
- Use [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- Use content update teaser videos from [Official YouTube channel](https://www.youtube.com/@PUMPITUPOfficial). Make sure no watermark is present (for example, Phoenix logo)
- In case there is no good preview use [NEVSISTER channel](https://www.youtube.com/@NEVSISTER). Make sure to remove stepmaker info from the corners
- In case you can't remove stepmakers from corners, copy song previews from somewhere else.
- Use the following command:
```bash
yt-dlp -f bestvideo+bestaudio --merge-output-format mkv --extractor-args youtube:player_client=android -o 1.mkv https://www.youtube.com/watch?v=rcdPlWC_5mo && ffmpeg -ss 1:28 -i 1.mkv -vframes 1 Phoenix_Curiosity_Overdrive.png && rm 1.mkv
```
1. Replace `https://www.youtube.com/watch?v=rcdPlWC_5mo` with actual video
2. Replace `1:28` with actual minute:second of the song preview
3. Replace `Phoenix_Curiosity_Overdrive.png` with actual file name generated in the SQL file (look in the database after applying SQL patch)
4. You end up with image exactly at the start of the desired second of the video.

Example of changes for Phoenix 1.05 patch: [commit](https://github.com/aaaaaa2493/pumpout-db-updates/commit/345732013181cad314ff54afce22eb6a9c7c78c9)
