# Microsoft Developer Studio Generated NMAKE File, Based on mod_heartmonitor.dsp
!IF "$(CFG)" == ""
CFG=mod_heartmonitor - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_heartmonitor - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_heartmonitor - Win32 Release" && "$(CFG)" != "mod_heartmonitor - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_heartmonitor.mak" CFG="mod_heartmonitor - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_heartmonitor - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_heartmonitor - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_heartmonitor.so"

!ELSE 

ALL : "mod_watchdog - Win32 Release" "libhttpd - Win32 Release" "$(OUTDIR)\mod_heartmonitor.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" "mod_watchdog - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_heartmonitor.obj"
	-@erase "$(INTDIR)\mod_heartmonitor.res"
	-@erase "$(INTDIR)\mod_heartmonitor_src.idb"
	-@erase "$(INTDIR)\mod_heartmonitor_src.pdb"
	-@erase "$(OUTDIR)\mod_heartmonitor.exp"
	-@erase "$(OUTDIR)\mod_heartmonitor.lib"
	-@erase "$(OUTDIR)\mod_heartmonitor.pdb"
	-@erase "$(OUTDIR)\mod_heartmonitor.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../core" /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_heartmonitor_src" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_heartmonitor.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_heartmonitor.so" /d LONG_NAME="heartmonitor_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_heartmonitor.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_heartmonitor.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_heartmonitor.so" /implib:"$(OUTDIR)\mod_heartmonitor.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_heartmonitor.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_heartmonitor.obj" \
	"$(INTDIR)\mod_heartmonitor.res" \
	"..\..\Release\libhttpd.lib" \
	"..\core\Release\mod_watchdog.lib"

"$(OUTDIR)\mod_heartmonitor.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_heartmonitor.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_watchdog - Win32 Release" "libhttpd - Win32 Release" "$(OUTDIR)\mod_heartmonitor.so"
   if exist .\Release\mod_heartmonitor.so.manifest mt.exe -manifest .\Release\mod_heartmonitor.so.manifest -outputresource:.\Release\mod_heartmonitor.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_heartmonitor.so"

!ELSE 

ALL : "mod_watchdog - Win32 Debug" "libhttpd - Win32 Debug" "$(OUTDIR)\mod_heartmonitor.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" "mod_watchdog - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_heartmonitor.obj"
	-@erase "$(INTDIR)\mod_heartmonitor.res"
	-@erase "$(INTDIR)\mod_heartmonitor_src.idb"
	-@erase "$(INTDIR)\mod_heartmonitor_src.pdb"
	-@erase "$(OUTDIR)\mod_heartmonitor.exp"
	-@erase "$(OUTDIR)\mod_heartmonitor.lib"
	-@erase "$(OUTDIR)\mod_heartmonitor.pdb"
	-@erase "$(OUTDIR)\mod_heartmonitor.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../core" /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_heartmonitor_src" /FD /EHsc /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_heartmonitor.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_heartmonitor.so" /d LONG_NAME="heartmonitor_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_heartmonitor.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_heartmonitor.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_heartmonitor.so" /implib:"$(OUTDIR)\mod_heartmonitor.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_heartmonitor.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_heartmonitor.obj" \
	"$(INTDIR)\mod_heartmonitor.res" \
	"..\..\Release\libhttpd.lib" \
	"..\core\Debug\mod_watchdog.lib"

"$(OUTDIR)\mod_heartmonitor.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_heartmonitor.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_watchdog - Win32 Debug" "libhttpd - Win32 Debug" "$(OUTDIR)\mod_heartmonitor.so"
   if exist .\Debug\mod_heartmonitor.so.manifest mt.exe -manifest .\Debug\mod_heartmonitor.so.manifest -outputresource:.\Debug\mod_heartmonitor.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_heartmonitor.dep")
!INCLUDE "mod_heartmonitor.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_heartmonitor.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_heartmonitor - Win32 Release" || "$(CFG)" == "mod_heartmonitor - Win32 Debug"
SOURCE=.\mod_heartmonitor.c

"$(INTDIR)\mod_heartmonitor.obj" : $(SOURCE) "$(INTDIR)"


!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\cluster"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\cluster"

!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\cluster"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\cluster"

!ENDIF 

!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"

"mod_watchdog - Win32 Release" : 
   cd "\tmp\httpd\modules\core"
   $(MAKE) /$(MAKEFLAGS) /F .\mod_watchdog.mak CFG="mod_watchdog - Win32 Release" 
   cd "..\cluster"

"mod_watchdog - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd\modules\core"
   $(MAKE) /$(MAKEFLAGS) /F .\mod_watchdog.mak CFG="mod_watchdog - Win32 Release" RECURSE=1 CLEAN 
   cd "..\cluster"

!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"

"mod_watchdog - Win32 Debug" : 
   cd "\tmp\httpd\modules\core"
   $(MAKE) /$(MAKEFLAGS) /F .\mod_watchdog.mak CFG="mod_watchdog - Win32 Debug" 
   cd "..\cluster"

"mod_watchdog - Win32 DebugCLEAN" : 
   cd "\tmp\httpd\modules\core"
   $(MAKE) /$(MAKEFLAGS) /F .\mod_watchdog.mak CFG="mod_watchdog - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\cluster"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_heartmonitor - Win32 Release"


"$(INTDIR)\mod_heartmonitor.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_heartmonitor.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_heartmonitor.so" /d LONG_NAME="heartmonitor_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_heartmonitor - Win32 Debug"


"$(INTDIR)\mod_heartmonitor.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_heartmonitor.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_heartmonitor.so" /d LONG_NAME="heartmonitor_module for Apache" $(SOURCE)


!ENDIF 


!ENDIF 

