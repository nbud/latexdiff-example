SET jobname=paper
SET rev=v1

latexdiff-vc --git --force -r "%rev%" "%jobname%.tex"
if %errorlevel% neq 0 exit /b %errorlevel%
latexmk --pdf --silent "%jobname%-diff%rev%"
if %errorlevel% neq 0 exit /b %errorlevel%
start "" /max "%jobname%-diff%rev%.pdf"
