@echo off
for /R %%f in (*.qc) do (
    setlocal disableDelayedExpansion    
    set "src=%%f"
    echo Converting: %%f
    setlocal enableDelayedExpansion
    set "out=!src:lqsrc=out!"
    set "out=!out:.qc=.lua!"
    lua53 run.lua !src! > !out!
    endlocal
    endlocal
)