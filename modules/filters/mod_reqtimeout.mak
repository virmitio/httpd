# Microsoft Developer Studio Generated NMAKE File, Based on mod_reqtimeout.dsp
!IF "$(CFG)" == ""
CFG=mod_reqtimeout - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_reqtimeout - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_reqtimeout - Win32 Release" && "$(CFG)" != "mod_reqtimeout - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_reqtimeout.mak" CFG="mod_reqtimeout - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_reqtimeout - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_reqtimeout - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_reqtimeout - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_reqtimeout.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\mod_reqtimeout.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_reqtimeout.obj"
	-@erase "$(INTDIR)\mod_reqtimeout.res"
	-@erase "$(INTDIR)\mod_reqtimeout_src.idb"
	-@erase "$(INTDIR)\mod_reqtimeout_src.pdb"
	-@erase "$(OUTDIR)\mod_reqtimeout.exp"
	-@erase "$(OUTDIR)\mod_reqtimeout.lib"
	-@erase "$(OUTDIR)\mod_reqtimeout.pdb"
	-@erase "$(OUTDIR)\mod_reqtimeout.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "AP_RL_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_reqtimeout_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_reqtimeout.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_reqtimeout.so" /d LONG_NAME="reqtimeout_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_reqtimeout.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_reqtimeout.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_reqtimeout.so" /implib:"$(OUTDIR)\mod_reqtimeout.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_reqtimeout.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_reqtimeout.obj" \
	"$(INTDIR)\mod_reqtimeout.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_reqtimeout.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_reqtimeout.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\mod_reqtimeout.so"
   if exist .\Release\mod_reqtimeout.so.manifest mt.exe -manifest .\Release\mod_reqtimeout.so.manifest -outputresource:.\Release\mod_reqtimeout.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_reqtimeout - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_reqtimeout.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_reqtimeout.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_reqtimeout.obj"
	-@erase "$(INTDIR)\mod_reqtimeout.res"
	-@erase "$(INTDIR)\mod_reqtimeout_src.idb"
	-@erase "$(INTDIR)\mod_reqtimeout_src.pdb"
	-@erase "$(OUTDIR)\mod_reqtimeout.exp"
	-@erase "$(OUTDIR)\mod_reqtimeout.lib"
	-@erase "$(OUTDIR)\mod_reqtimeout.pdb"
	-@erase "$(OUTDIR)\mod_reqtimeout.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "AP_RL_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_reqtimeout_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_reqtimeout.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_reqtimeout.so" /d LONG_NAME="reqtimeout_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_reqtimeout.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_reqtimeout.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_reqtimeout.so" /implib:"$(OUTDIR)\mod_reqtimeout.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_reqtimeout.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_reqtimeout.obj" \
	"$(INTDIR)\mod_reqtimeout.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_reqtimeout.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_reqtimeout.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_reqtimeout.so"
   if exist .\Debug\mod_reqtimeout.so.manifest mt.exe -manifest .\Debug\mod_reqtimeout.so.manifest -outputresource:.\Debug\mod_reqtimeout.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_reqtimeout.dep")
!INCLUDE "mod_reqtimeout.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_reqtimeout.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_reqtimeout - Win32 Release" || "$(CFG)" == "mod_reqtimeout - Win32 Debug"

!IF  "$(CFG)" == "mod_reqtimeout - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_reqtimeout - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_reqtimeout - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_reqtimeout - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_reqtimeout - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\filters"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\filters"

!ELSEIF  "$(CFG)" == "mod_reqtimeout - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\filters"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\filters"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_reqtimeout - Win32 Release"


"$(INTDIR)\mod_reqtimeout.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_reqtimeout.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_reqtimeout.so" /d LONG_NAME="reqtimeout_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_reqtimeout - Win32 Debug"


"$(INTDIR)\mod_reqtimeout.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_reqtimeout.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_reqtimeout.so" /d LONG_NAME="reqtimeout_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_reqtimeout.c

"$(INTDIR)\mod_reqtimeout.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

