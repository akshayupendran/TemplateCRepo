REM Assumes you have the image and the shared folder as projects/TemplateCRepo
@ECHO OFF
SETLOCAL
SET REPO_LOCATION=/home/docker/projects/TemplateCRepo
SET IMAGE_NAME=template_repo/alpine:1.0
docker run --rm -it -v %REPO_LOCATION%:/projects %IMAGE_NAME%
REM docker run --rm -v /home/docker/projects/TemplateCRepo:/projects template_repo/alpine:1.0

:SUCCESS
ENDLOCAL
EXIT /B 0

:FAILURE
ECHO UNKNOWN ERROR
ENDLOCAL
EXIT /B 1
