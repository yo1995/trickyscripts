@echo off
REM �������ڲ��ָĳ���Ҫ���ҵķ�������
sc query |find /i "PanGPS" >nul 2>nul
REM ���������ڣ���ת��exist��ǩ
if not errorlevel 1 (goto exist) else goto notexist

:exist
REM �������/����ʱ
@echo VPN����������...���ڹرշ���...
@net stop "PanGPS"
@pause...
goto :eof

:notexist
REM ���񲻴���/ֹͣʱ
@echo VPN������ֹͣ...������������...
@net start "PanGPS"
@start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Palo Alto Networks\GlobalProtect\GlobalProtect.lnk" "cmd /c echo 2��ر� &ping -n 2 localhost>nul"
@pause...
goto :eof