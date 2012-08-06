# Microsoft Developer Studio Generated NMAKE File, Based on mod_ext_filter.dsp
!IF "$(CFG)" == ""
CFG=mod_ext_filter - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_ext_filter - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_ext_filter - Win32 Release" && "$(CFG)" != "mod_ext_filter - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_ext_filter.mak" CFG="mod_ext_filter - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_ext_filter - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_ext_filter - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_ext_filter - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_ext_filter.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\mod_ext_filter.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_ext_filter.obj"
	-@erase "$(INTDIR)\mod_ext_filter.res"
	-@erase "$(INTDIR)\mod_ext_filter_src.idb"
	-@erase "$(INTDIR)\mod_ext_filter_src.pdb"
	-@erase "$(OUTDIR)\mod_ext_filter.exp"
	-@erase "$(OUTDIR)\mod_ext_filter.lib"
	-@erase "$(OUTDIR)\mod_ext_filter.pdb"
	-@erase "$(OUTDIR)\mod_ext_filter.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_ext_filter_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_ext_filter.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_ext_filter.so" /d LONG_NAME="ext_filter_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_ext_filter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_ext_filter.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_ext_filter.so" /implib:"$(OUTDIR)\mod_ext_filter.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_ext_filter.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_ext_filter.obj" \
	"$(INTDIR)\mod_ext_filter.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_ext_filter.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_ext_filter.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\mod_ext_filter.so"
   if exist .\Release\mod_ext_filter.so.manifest mt.exe -manifest .\Release\mod_ext_filter.so.manifest -outputresource:.\Release\mod_ext_filter.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_ext_filter - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_ext_filter.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_ext_filter.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_ext_filter.obj"
	-@erase "$(INTDIR)\mod_ext_filter.res"
	-@erase "$(INTDIR)\mod_ext_filter_src.idb"
	-@erase "$(INTDIR)\mod_ext_filter_src.pdb"
	-@erase "$(OUTDIR)\mod_ext_filter.exp"
	-@erase "$(OUTDIR)\mod_ext_filter.lib"
	-@erase "$(OUTDIR)\mod_ext_filter.pdb"
	-@erase "$(OUTDIR)\mod_ext_filter.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_ext_filter_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_ext_filter.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_ext_filter.so" /d LONG_NAME="ext_filter_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_ext_filter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_ext_filter.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_ext_filter.so" /implib:"$(OUTDIR)\mod_ext_filter.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_ext_filter.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_ext_filter.obj" \
	"$(INTDIR)\mod_ext_filter.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_ext_filter.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_ext_filter.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_ext_filter.so"
   if exist .\Debug\mod_ext_filter.so.manifest mt.exe -manifest .\Debug\mod_ext_filter.so.manifest -outputresource:.\Debug\mod_ext_filter.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_ext_filter.dep")
!INCLUDE "mod_ext_filter.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_ext_filter.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_ext_filter - Win32 Release" || "$(CFG)" == "mod_ext_filter - Win32 Debug"

!IF  "$(CFG)" == "mod_ext_filter - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_ext_filter - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_ext_filter - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_ext_filter - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_ext_filter - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\filters"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\filters"

!ELSEIF  "$(CFG)" == "mod_ext_filter - Win32 Debug"

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

!IF  "$(CFG)" == "mod_ext_filter - Win32 Release"


"$(INTDIR)\mod_ext_filter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_ext_filter.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_ext_filter.so" /d LONG_NAME="ext_filter_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_ext_filter - Win32 Debug"


"$(INTDIR)\mod_ext_filter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_ext_filter.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_ext_filter.so" /d LONG_NAME="ext_filter_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_ext_filter.c

"$(INTDIR)\mod_ext_filter.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

