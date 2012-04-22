@echo off
del   *.ncb /S /Q
del   *.suo /S /Q /F /A:H
del   *.user /S /Q
del   BuildLog.htm /S /Q
del    dcapi.lib  /S /Q
del    *.exp /S /Q
del    *.dll /S /Q
del    *.pdb /S /Q
del    *.sys  /S /Q
del    *.exe  /S /Q
del    debug\*.lib  /S /Q
del    release\*.lib  /S /Q
del    *.log  /S /Q
del    *.obj  /S /Q
del    *.aps  /S /Q
del    *.ilk  /S /Q
del    boot\bin\* /S /Q
del    boot\*.lastbuildstate /S /Q
del    boot\*.unsuccessfulbuild /S /Q
del    boot\*.tlog /S /Q
del    crypto\crypto_fast\*.lastbuildstate /S /Q
del    crypto\crypto_fast\*.unsuccessfulbuild /S /Q
del    crypto\crypto_fast\*.tlog /S /Q
del    crypto\crypto_small\*.lastbuildstate /S /Q
del    crypto\crypto_small\*.unsuccessfulbuild /S /Q
del    crypto\crypto_small\*.tlog /S /Q
del    dcapi\*.lastbuildstate /S /Q
del    dcapi\*.unsuccessfulbuild /S /Q
del    dcapi\*.tlog /S /Q
del    dccon\*.lastbuildstate /S /Q
del    dccon\*.unsuccessfulbuild /S /Q
del    dccon\*.tlog /S /Q
del    dcinst\*.lastbuildstate /S /Q
del    dcinst\*.unsuccessfulbuild /S /Q
del    dcinst\*.tlog /S /Q
del    driver\*.lastbuildstate /S /Q
del    driver\*.unsuccessfulbuild /S /Q
del    driver\*.tlog /S /Q
del    gui\*.lastbuildstate /S /Q
del    gui\*.unsuccessfulbuild /S /Q
del    gui\*.tlog /S /Q

rmdir release\amd64\obj /S /Q
rmdir release\i386\obj /S /Q
rmdir release\boot\obj /S /Q

rmdir debug\amd64\obj /S /Q
rmdir debug\i386\obj /S /Q
rmdir debug\boot\obj /S /Q


