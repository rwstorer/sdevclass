@ECHO OFF
IF "%1"=="build" GOTO BUILD
hugo.exe server --disableFastRender --ignoreCache --buildDrafts
GOTO END
:BUILD
hugo --minify --cleanDestinationDir
:END
EXIT