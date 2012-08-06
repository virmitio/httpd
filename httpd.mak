# Microsoft Developer Studio Generated NMAKE File, Based on httpd.dsp
!IF "$(CFG)" == ""
CFG=httpd - Win32 Release
!MESSAGE No configuration specified. Defaulting to httpd - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "httpd - Win32 Release" && "$(CFG)" != "httpd - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "httpd.mak" CFG="httpd - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "httpd - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "httpd - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "httpd - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\httpd.exe"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\httpd.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\httpd.idb"
	-@erase "$(INTDIR)\httpd.res"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(OUTDIR)\httpd.exe"
	-@erase "$(OUTDIR)\httpd.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./include" /I "./srclib/apr/include" /I "./srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\httpd" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\httpd.res" /i "./include" /i "./srclib/apr/include" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="httpd.exe" /d LONG_NAME="Apache HTTP Server" /d ICON_FILE="apache.ico" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\httpd.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib advapi32.lib ws2_32.lib mswsock.lib /nologo /stack:0x40000 /subsystem:console /incremental:no /pdb:"$(OUTDIR)\httpd.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\httpd.exe" /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\httpd.res" \
	"$(OUTDIR)\libhttpd.lib"

"$(OUTDIR)\httpd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\httpd.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\httpd.exe"
   if exist .\Release\httpd.exe.manifest mt.exe -manifest .\Release\httpd.exe.manifest -outputresource:.\Release\httpd.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\httpd.exe"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\httpd.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\httpd.idb"
	-@erase "$(INTDIR)\httpd.res"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(OUTDIR)\httpd.exe"
	-@erase "$(OUTDIR)\httpd.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "./include" /I "./srclib/apr/include" /I "./srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\httpd" /FD /EHsc /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\httpd.res" /i "./include" /i "./srclib/apr/include" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="httpd.exe" /d LONG_NAME="Apache HTTP Server" /d ICON_FILE="apache.ico" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\httpd.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib advapi32.lib ws2_32.lib mswsock.lib /nologo /stack:0x40000 /subsystem:console /incremental:no /pdb:"$(OUTDIR)\httpd.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\httpd.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\httpd.res" \
	".\Release\libhttpd.lib"

"$(OUTDIR)\httpd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\httpd.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\httpd.exe"
   if exist .\Debug\httpd.exe.manifest mt.exe -manifest .\Debug\httpd.exe.manifest -outputresource:.\Debug\httpd.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("httpd.dep")
!INCLUDE "httpd.dep"
!ELSE 
!MESSAGE Warning: cannot find "httpd.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "httpd - Win32 Release" || "$(CFG)" == "httpd - Win32 Debug"

!IF  "$(CFG)" == "httpd - Win32 Release"

!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "httpd - Win32 Release"

!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "httpd - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd "."

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd "."

"libhttpd - Win32 DebugCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd "."

!ENDIF 

SOURCE=.\build\win32\httpd.rc

!IF  "$(CFG)" == "httpd - Win32 Release"


"$(INTDIR)\httpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\httpd.res" /i "./include" /i "./srclib/apr/include" /i "build\win32" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="httpd.exe" /d LONG_NAME="Apache HTTP Server" /d ICON_FILE="apache.ico" $(SOURCE)


!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"


"$(INTDIR)\httpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\httpd.res" /i "./include" /i "./srclib/apr/include" /i "build\win32" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="httpd.exe" /d LONG_NAME="Apache HTTP Server" /d ICON_FILE="apache.ico" $(SOURCE)


!ENDIF 

SOURCE=.\server\main.c

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

