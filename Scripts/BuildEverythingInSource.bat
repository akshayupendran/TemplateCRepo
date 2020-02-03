REM Assumes you have the image and the shared folder as projects/TemplateCRepo
@ECHO OFF
SETLOCAL
SET REPO_LOCATION=/home/docker/projects/TemplateCRepo
SET IMAGE_NAME=template_repo/alpine:1.0
@echo on
docker run --rm -v %REPO_LOCATION%:/projects %IMAGE_NAME% /usr/bin/clang /projects/src/main.c -Werror -Weverything -pedantic-errors -o main.out || GOTO FAILURE
:SUCCESS
ENDLOCAL
EXIT /B 0

:FAILURE
ECHO UNKNOWN ERROR
ENDLOCAL
EXIT /B 1
