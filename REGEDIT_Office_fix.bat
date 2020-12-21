@echo off
set KEY_NAME="HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Common\Identity\Identities"
set EMAIL_PROV="@sts2.onmicrosoft.com"

for /f "usebackq" %%A in (`reg query %KEY_NAME% /f %EMAIL_PROV% /d /s`) do (
	reg delete %%A /f
	exit
)