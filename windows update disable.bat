@echo off

REM Change Windows Update Service Startup Type to Disabled (in Services)

echo Disable Windows Update Service

net stop "wuauserv"

REM Change Windows Update Service Startup Type to Disabled (in Services)

sc config "wuauserv" start= disabled 

REM Change Update Orchestrator Service Startup Type to Disabled (in Services)

echo Disable Update Orchestrator Service 

net stop  "UsoSvc"

sc config "UsoSvc" start= disabled

REM Change Windows Update Medic Service Startup Type to Disabled (in Services)

echo Disable Windows Update Medic Service

net stop "WaaSMedicSvc"

sc config "WaaSMedicSv" start= disabled 

echo Windows Update Disabled

@echo off
