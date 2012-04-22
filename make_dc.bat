@echo off
@set vs_tools_found=0
@if not "%VS100COMNTOOLS%"=="" (
    @call "%VS100COMNTOOLS%\vsvars32.bat"
    @set vs_tools_found=1
) else (
    @if not "%VS90COMNTOOLS%"=="" (
        @call "%VS90COMNTOOLS%\vsvars32.bat"
        @set vs_tools_found=1
    )
)
@if %vs_tools_found%==0 goto :error_no_vstools

devenv dcrypt.sln /Build "Release|win32"
@if errorlevel 1 goto :error_build_fail
devenv dcrypt.sln /Build "Release|x64"
@if errorlevel 1 goto :error_build_fail


@goto end
:error_no_vstools
@set errorlevel=1
@echo ERROR: Neither the VS90COMNTOOLS or VS100COMNTOOLS variable is set. 
@goto end
:error_build_fail
@echo ERROR: Can not build solution. 
@goto end

:end
