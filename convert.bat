@echo off
for /R %%f in (quakec_cleaned\*.qc) do (
    setlocal disableDelayedExpansion    
    set "src=%%f"
    echo Converting: %%f
    setlocal enableDelayedExpansion
    REM set "out=!src:lqsrc=out!"
    set "out=!src:quakec_cleaned=out_quakec_cleaned!"
    set "out=!out:.qc=.lua!"
    lua53 run.lua !src! > !out!
    endlocal
    endlocal
)