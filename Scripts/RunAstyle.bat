REM Assumes you have the image and the shared folder as projects/TemplateCRepo
@ECHO OFF
SETLOCAL
SET REPO_LOCATION=/home/docker/projects/TemplateCRepo
SET IMAGE_NAME=template_repo/alpine:1.0
docker run --rm -v %REPO_LOCATION%:/projects %IMAGE_NAME% /usr/bin/astyle --options="/projects/astyle.options" "/projects/*.c" || GOTO FAILURE
:SUCCESS
ENDLOCAL
EXIT /B 0

:FAILURE
ECHO UNKNOWN ERROR
ENDLOCAL
EXIT /B 1
