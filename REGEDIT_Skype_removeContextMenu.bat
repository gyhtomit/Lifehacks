@echo off
set KEY_NAME="HKEY_LOCAL_MACHINE\SOFTWARE\Classes\PackagedCom\Package"
set CLASS_NAME="{776DBC8D-7347-478C-8D71-791E12EF49D8}"

for /f "usebackq" %%A in (`reg query %KEY_NAME% /s /f SkypeContext`) do (
	reg delete %%A /v DllPath /f
	reg add %%A /v DllPath /t REG_SZ /d "~Skype\SkypeContext.dll"
	exit
)
