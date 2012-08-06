# Microsoft Developer Studio Generated NMAKE File, Based on mod_authz_groupfile.dsp
!IF "$(CFG)" == ""
CFG=mod_authz_groupfile - Win32 Debug
!MESSAGE No configuration specified. Defaulting to mod_authz_groupfile - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "mod_authz_groupfile - Win32 Release" && "$(CFG)" != "mod_authz_groupfile - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_authz_groupfile.mak" CFG="mod_authz_groupfile - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_authz_groupfile - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_authz_groupfile - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_authz_groupfile.so"

!ELSE 

ALL : "mod_auth_basic - Win32 Release" "libhttpd - Win32 Release" "$(OUTDIR)\mod_authz_groupfile.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" "mod_auth_basic - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_authz_groupfile.obj"
	-@erase "$(INTDIR)\mod_authz_groupfile.res"
	-@erase "$(INTDIR)\mod_authz_groupfile_src.idb"
	-@erase "$(INTDIR)\mod_authz_groupfile_src.pdb"
	-@erase "$(OUTDIR)\mod_authz_groupfile.exp"
	-@erase "$(OUTDIR)\mod_authz_groupfile.lib"
	-@erase "$(OUTDIR)\mod_authz_groupfile.pdb"
	-@erase "$(OUTDIR)\mod_authz_groupfile.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_authz_groupfile_src" /FD /c 

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
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL" 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_authz_groupfile.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_authz_groupfile.so" /d LONG_NAME="authz_groupfile_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_authz_groupfile.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_authz_groupfile.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_authz_groupfile.so" /implib:"$(OUTDIR)\mod_authz_groupfile.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_authz_groupfile.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_authz_groupfile.obj" \
	"$(INTDIR)\mod_authz_groupfile.res" \
	"..\..\Release\libhttpd.lib" \
	"$(OUTDIR)\mod_auth_basic.lib"

"$(OUTDIR)\mod_authz_groupfile.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_authz_groupfile.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_auth_basic - Win32 Release" "libhttpd - Win32 Release" "$(OUTDIR)\mod_authz_groupfile.so"
   if exist .\Release\mod_authz_groupfile.so.manifest mt.exe -manifest .\Release\mod_authz_groupfile.so.manifest -outputresource:.\Release\mod_authz_groupfile.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_authz_groupfile.so"

!ELSE 

ALL : "mod_auth_basic - Win32 Debug" "libhttpd - Win32 Debug" "$(OUTDIR)\mod_authz_groupfile.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" "mod_auth_basic - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_authz_groupfile.obj"
	-@erase "$(INTDIR)\mod_authz_groupfile.res"
	-@erase "$(INTDIR)\mod_authz_groupfile_src.idb"
	-@erase "$(INTDIR)\mod_authz_groupfile_src.pdb"
	-@erase "$(OUTDIR)\mod_authz_groupfile.exp"
	-@erase "$(OUTDIR)\mod_authz_groupfile.lib"
	-@erase "$(OUTDIR)\mod_authz_groupfile.pdb"
	-@erase "$(OUTDIR)\mod_authz_groupfile.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_authz_groupfile_src" /FD /EHsc /c 

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
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL" 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_authz_groupfile.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_authz_groupfile.so" /d LONG_NAME="authz_groupfile_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_authz_groupfile.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_authz_groupfile.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_authz_groupfile.so" /implib:"$(OUTDIR)\mod_authz_groupfile.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_authz_groupfile.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_authz_groupfile.obj" \
	"$(INTDIR)\mod_authz_groupfile.res" \
	"..\..\Release\libhttpd.lib" \
	"$(OUTDIR)\mod_auth_basic.lib"

"$(OUTDIR)\mod_authz_groupfile.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_authz_groupfile.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "mod_auth_basic - Win32 Debug" "libhttpd - Win32 Debug" "$(OUTDIR)\mod_authz_groupfile.so"
   if exist .\Debug\mod_authz_groupfile.so.manifest mt.exe -manifest .\Debug\mod_authz_groupfile.so.manifest -outputresource:.\Debug\mod_authz_groupfile.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_authz_groupfile.dep")
!INCLUDE "mod_authz_groupfile.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_authz_groupfile.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_authz_groupfile - Win32 Release" || "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\aaa"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\aaa"

!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\aaa"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\aaa"

!ENDIF 

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"

"mod_auth_basic - Win32 Release" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\mod_auth_basic.mak CFG="mod_auth_basic - Win32 Release" 
   cd "."

"mod_auth_basic - Win32 ReleaseCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\mod_auth_basic.mak CFG="mod_auth_basic - Win32 Release" RECURSE=1 CLEAN 
   cd "."

!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"

"mod_auth_basic - Win32 Debug" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\mod_auth_basic.mak CFG="mod_auth_basic - Win32 Debug" 
   cd "."

"mod_auth_basic - Win32 DebugCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\mod_auth_basic.mak CFG="mod_auth_basic - Win32 Debug" RECURSE=1 CLEAN 
   cd "."

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_authz_groupfile - Win32 Release"


"$(INTDIR)\mod_authz_groupfile.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_authz_groupfile.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_authz_groupfile.so" /d LONG_NAME="authz_groupfile_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_authz_groupfile - Win32 Debug"


"$(INTDIR)\mod_authz_groupfile.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_authz_groupfile.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_authz_groupfile.so" /d LONG_NAME="authz_groupfile_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_authz_groupfile.c

"$(INTDIR)\mod_authz_groupfile.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

