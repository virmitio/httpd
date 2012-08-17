# Microsoft Developer Studio Generated NMAKE File, Based on mod_access_compat.dsp
!IF "$(CFG)" == ""
CFG=mod_access_compat - Win32 Debug
!MESSAGE No configuration specified. Defaulting to mod_access_compat - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "mod_access_compat - Win32 Release" && "$(CFG)" != "mod_access_compat - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_access_compat.mak" CFG="mod_access_compat - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_access_compat - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_access_compat - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

ARCH=IX86
APR_INC=../../srclib/apr/include
APR_LIB=libapr-1.lib
APU_INC=../../srclib/apr-util/include
APU_LIB=libaprutil-1.lib
PCRE_INC=../../srclib/pcre/include
PCRE_LIB=pcre.lib
LIB_DIR=../../srclib/pcre
HTTPD_OUT=..\..\Release

!IF  "$(CFG)" == "mod_access_compat - Win32 Release"
OUTDIR=.\Release
INTDIR=.\Release

CPP_VAR=/MD /O2 /Oy- /D "NDEBUG" 
MTL_VAR=/D "NDEBUG" 
RSC_VAR=/d "NDEBUG" 
LINK32_VAR=/opt:ref 

!ELSE 
OUTDIR=.\Debug
INTDIR=.\Debug

CPP_VAR=/MDd /Od /D "_DEBUG" /EHsc 
MTL_VAR=/D "_DEBUG" 
RSC_VAR=/d "_DEBUG" 
LINK32_VAR= 

!ENDIF 

ALL : "$(OUTDIR)\mod_access_compat.so"
CLEAN :
	-@erase "$(INTDIR)\mod_access_compat.obj"
	-@erase "$(INTDIR)\mod_access_compat.res"
	-@erase "$(INTDIR)\mod_access_compat_src.idb"
	-@erase "$(INTDIR)\mod_access_compat_src.pdb"
	-@erase "$(OUTDIR)\mod_access_compat.exp"
	-@erase "$(OUTDIR)\mod_access_compat.lib"
	-@erase "$(OUTDIR)\mod_access_compat.pdb"
	-@erase "$(OUTDIR)\mod_access_compat.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe 
CPP_PROJ=/nologo /W3 /Zi /I "../../include" /I "$(APR_INC)" /I "$(APU_INC)" $(CPP_VAR) /D "WIN32" /D "_WINDOWS" /D "AAA_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_access_compat_src" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) \
   $(CPP_PROJ) $< 


.cpp{$(INTDIR)}.obj::
   $(CPP) \
   $(CPP_PROJ) $< 


.cxx{$(INTDIR)}.obj::
   $(CPP) \
   $(CPP_PROJ) $< 


.c{$(INTDIR)}.sbr::
   $(CPP) \
   $(CPP_PROJ) $< 


.cpp{$(INTDIR)}.sbr::
   $(CPP) \
   $(CPP_PROJ) $< 


.cxx{$(INTDIR)}.sbr::
   $(CPP) \
   $(CPP_PROJ) $< 


MTL=midl.exe
MTL_PROJ=/nologo $(MTL_VAR) /mktyplib203 /o /win32 "NUL" 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_access_compat.res" /i "../../include" /i "$(APR_INC)" $(RSC_VAR) /d BIN_NAME="mod_access_compat.so" /d LONG_NAME="auth_basic_module for Apache"  /i "\tmp\httpd\build\win32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_access_compat.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib $(APR_LIB) $(APU_LIB) $(LINK32_VAR) /libpath:"$(LIB_DIR)" /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_access_compat.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\mod_access_compat.so" /implib:"$(OUTDIR)\mod_access_compat.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_access_compat.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_access_compat.obj" \
	"$(INTDIR)\mod_access_compat.res" \
	"$(HTTPD_OUT)\libhttpd.lib"

"$(OUTDIR)\mod_access_compat.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\mod_access_compat.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)


$(DS_POSTBUILD_DEP) : "$(OUTDIR)\mod_access_compat.so"
   if exist $(OUTDIR)\mod_access_compat.so.manifest mt.exe -manifest $(OUTDIR)\mod_access_compat.so.manifest -outputresource:$(OUTDIR)\mod_access_compat.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_access_compat.dep")
!INCLUDE "mod_access_compat.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_access_compat.dep"
!ENDIF 
!ENDIF 


"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\aaa"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\aaa"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\aaa"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\aaa"

SOURCE=..\..\build\win32\httpd.rc

"$(INTDIR)\mod_access_compat.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) /i "\tmp\httpd\build\win32" $(SOURCE)


SOURCE=.\mod_access_compat.c

"$(INTDIR)\mod_access_compat.obj" : $(SOURCE) "$(INTDIR)"


