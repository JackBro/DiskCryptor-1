@echo off
@if "%fasm%"=="" goto :error_no_fasm
@if "%VS100COMNTOOLS%"=="" goto :error_no_vstools
@call "%VS100COMNTOOLS%\vsvars32.bat"

devenv dcrypt_vs10.sln /Build "Release|win32"
@if errorlevel 1 goto :error_build_fail
devenv dcrypt_vs10.sln /Build "Release|x64"
@if errorlevel 1 goto :error_build_fail


@goto end
:error_no_fasm
@echo ERROR: FASM variable not defined
@goto end
:error_no_vstools
@set errorlevel=1
@echo ERROR: VS100COMNTOOLS variable is not set. 
@goto end
:error_build_fail
@echo ERROR: Can not build solution. 
@goto end

:end
