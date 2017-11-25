@ECHO off
setlocal EnableDelayedExpansion
cd "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client"
for /f "tokens=4" %%g in ('vpncli.exe state ^| FIND "state:"') do set vpnstate=%%g
taskkill /F /IM vpnui.exe
if %vpnstate%==Disconnected (
	set /P case="Press (y) to access vpn.case.edu / press (n) to cancel:"
	REM #batch is f**king stupid, so heres some botched logical or code
	if /i !case!==y (
		vpncli.exe -s < case_cisco_profile.txt
		start vpnui.exe
	) else (
		if /i !case!==n (
		EXIT
		) else (
			vpncli.exe -s < 4Corners_cisco_profile.txt
			start vpnui.exe
		)
	)	
) else ( vpncli.exe disconnect )