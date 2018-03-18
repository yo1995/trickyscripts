@echo off
REM 将引号内部分改成你要查找的服务名称
sc query |find /i "PanGPS" >nul 2>nul
REM 如果服务存在，跳转至exist标签
if not errorlevel 1 (goto exist) else goto notexist

:exist
REM 服务存在/启动时
@echo VPN服务已启动...正在关闭服务...
@net stop "PanGPS"
@pause...
goto :eof

:notexist
REM 服务不存在/停止时
@echo VPN服务已停止...正在启动服务...
@net start "PanGPS"
@start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Palo Alto Networks\GlobalProtect\GlobalProtect.lnk" "cmd /c echo 2秒关闭 &ping -n 2 localhost>nul"
@pause...
goto :eof