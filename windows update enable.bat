@echo off

REM Change Windows Update Service Startup Type to Enabled (in Services)

echo Enable Windows Update Startup Type

sc config "wuauserv" start= demand

REM can use 'auto' or 'delayed-auto' instead of 'demand makes no difference to this service'

net start "wuauserv"

echo Enable Windows Update Service

REM Change Update Orchestrator Service Startup Type to Enabled (in Services)

echo Enable Update Orchestrator Service 

sc config "UsoSvc" start= demand

REM can use 'auto' or 'delayed-auto' instead of 'demand makes no difference to this service'

net start  "UsoSvc"

REM Change  Windows Update Medic Service Startup Type to Enabled (in Services)

sc config "WaaSMedicSvc" start= demand

REM can use 'auto' or 'delayed-auto' instead of 'demand makes no difference to this service'

net start "WaaSMedicSvc"

echo Enable Windows Update Medic Service

@echo off
