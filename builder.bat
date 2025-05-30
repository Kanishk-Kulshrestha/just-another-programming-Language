@echo off
IF "%1"=="" GOTO fault
IF "%2"=="" GOTO default
GOTO saveFile

:fault
echo "No input file given"
exit /B 1

:fileError
echo "%1 does not exist"
exit /B 2

:default
echo "Compiling JAPL code to middle level.."
IF NOT EXIST %1 goto fileError
python main.py %1
echo "Compilation to middle level successful"
echo "Converting middle level to an executable.."
gcc japl_mid_compiled_code.c -o output
echo "Convertion to executable successful.."
del japl_mid_compiled_code.c
exit /B 0

:saveFile
echo "Compiling JAPL code to middle level.."
IF NOT EXIST %1 goto fileError
python main.py %1
echo "Compilation to middle level successful"
echo "Converting middle level to an executable.."
gcc japl_mid_compiled_code.c -o %2
echo "Convertion to executable successful.."
del japl_mid_compiled_code.c
exit /B 0