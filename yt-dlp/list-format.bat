@ECHO OFF

:format_checker
    echo --YT Format Checker--
    set /p url=Enter YT URL: 
    yt-dlp -F %url%
pause

CALL :format_checker

pause