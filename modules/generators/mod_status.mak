# Microsoft Developer Studio Generated NMAKE File, Based on mod_status.dsp
!IF "$(CFG)" == ""
CFG=mod_status - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_status - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_status - Win32 Release" && "$(CFG)" != "mod_status - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_status.mak" CFG="mod_status - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_status - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_status - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_status - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_status.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\mod_status.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_status.obj"
	-@erase "$(INTDIR)\mod_status.res"
	-@erase "$(INTDIR)\mod_status_src.idb"
	-@erase "$(INTDIR)\mod_status_src.pdb"
	-@erase "$(OUTDIR)\mod_status.exp"
	-@erase "$(OUTDIR)\mod_status.lib"
	-@erase "$(OUTDIR)\mod_status.pdb"
	-@erase "$(OUTDIR)\mod_status.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "STATUS_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_status_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_status.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_status.so" /d LONG_NAME="status_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_status.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_status.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_status.so" /implib:"$(OUTDIR)\mod_status.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_status.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_status.obj" \
	"$(INTDIR)\mod_status.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_status.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_status.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\mod_status.so"
   if exist .\Release\mod_status.so.manifest mt.exe -manifest .\Release\mod_status.so.manifest -outputresource:.\Release\mod_status.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_status - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_status.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_status.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_status.obj"
	-@erase "$(INTDIR)\mod_status.res"
	-@erase "$(INTDIR)\mod_status_src.idb"
	-@erase "$(INTDIR)\mod_status_src.pdb"
	-@erase "$(OUTDIR)\mod_status.exp"
	-@erase "$(OUTDIR)\mod_status.lib"
	-@erase "$(OUTDIR)\mod_status.pdb"
	-@erase "$(OUTDIR)\mod_status.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "STATUS_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_status_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_status.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_status.so" /d LONG_NAME="status_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_status.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_status.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_status.so" /implib:"$(OUTDIR)\mod_status.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_status.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_status.obj" \
	"$(INTDIR)\mod_status.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_status.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_status.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_status.so"
   if exist .\Debug\mod_status.so.manifest mt.exe -manifest .\Debug\mod_status.so.manifest -outputresource:.\Debug\mod_status.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_status.dep")
!INCLUDE "mod_status.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_status.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_status - Win32 Release" || "$(CFG)" == "mod_status - Win32 Debug"

!IF  "$(CFG)" == "mod_status - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_status - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_status - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_status - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_status - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\generators"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\generators"

!ELSEIF  "$(CFG)" == "mod_status - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\generators"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\generators"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_status - Win32 Release"


"$(INTDIR)\mod_status.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_status.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_status.so" /d LONG_NAME="status_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_status - Win32 Debug"


"$(INTDIR)\mod_status.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_status.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_status.so" /d LONG_NAME="status_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_status.c

"$(INTDIR)\mod_status.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

