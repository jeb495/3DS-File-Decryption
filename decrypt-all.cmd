@echo OFF
chcp 65001 > nul
cd Scripts
(
call ".\ncchinfo_gen_all.cmd"
call ".\XORpad_generator.cmd"
echo:
echo:
echo:
call ".\xorer_all.cmd"
del /F /Q ".\xorpad\*"
echo:
echo:
echo:
echo Done!
) > ..\decrypt-all.log & type ..\decrypt-all.log
echo Press any key to exit
pause > nul
