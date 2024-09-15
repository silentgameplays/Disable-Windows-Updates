@echo off

REM Change Windows Update Service Startup Type to Disabled (in Services)

echo Disable Windows Update Startup Type

sc config "wuauserv" start= demand

REM can use 'auto' or 'delayed-auto' instead of 'demand makes no difference to this service'

net start "wuauserv"

sc config "UsoSvc" start= demand

net start  "UsoSvc"

sc config "WaaSMedicSvc" start= demand

net start "WaaSMedicSvc"

echo Enable Windows Update

@echo off