@echo off

REM Change Windows Update Service Startup Type to Disabled (in Services)

echo Disable Windows Update Startup Type

net stop "wuauserv"

sc config "wuauserv" start= disabled 

net stop  "UsoSvc"

sc config "UsoSvc" start= disabled

net stop "WaaSMedicSvc"

sc config "WaaSMedicSv" start= disabled 


echo Disable Windows Update

@echo off