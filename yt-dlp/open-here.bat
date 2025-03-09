@echo off
@REM 1. 399 + 140 (1080.mp4)
@REM 2. 303 + 251 (1080.webm)
@REM 3. 299 + 140 (1080.mp4)
@REM 4. 248 + 251 (1080.webm)
@REM 5. 137 + 140 (1080.mp4)

@REM 4. 398 + 140 (720.mp4)
@REM 5. 247 + 251 (720.webm)
@REM 6. 136 + 140 (720.mp4)


:down_process 
    set isDone=0
    set /p url=URL YT : 

    echo "Try 1080P AV1 MP4..."
    yt-dlp --config-locations C:\arsya-apps\yt-dlp\config --ffmpeg-location C:\ffmpeg\bin -f 399+140 %url%
    if ERRORLEVEL == 1 (
        echo "1080P AV1 MP4 - Not Found"
    ) else (
        echo "Done - 1080P AV1 MP4 399"
        set isDone=1
    )
    
    if %isDone%==0 (
        echo "Try 1080P VP9 WEBM..."
        yt-dlp --config-locations C:\arsya-apps\yt-dlp\config --ffmpeg-location C:\ffmpeg\bin -f 303+251 %url%
        if ERRORLEVEL == 1 (
            echo "1080P VP9 WEBM - Not Found"
        ) else (
            echo "Done - 1080P VP9 WEBM 303"
            set isDone=1
        )
    )

    if %isDone%==0 (
        echo "Try 1080P VP9 WEBM..."
        yt-dlp --config-locations C:\arsya-apps\yt-dlp\config --ffmpeg-location C:\ffmpeg\bin -f 248+251 %url%
        if ERRORLEVEL == 1 (
            echo "1080P 1080P VP9 WEBM - Not Found"
        ) else (
            echo "Done - 1080P VP9 WEBM 248"
            set isDone=1
        )
    )
    
pause

CALL :down_process

pause