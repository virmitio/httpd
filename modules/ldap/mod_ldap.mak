# Microsoft Developer Studio Generated NMAKE File, Based on mod_ldap.dsp
!IF "$(CFG)" == ""
CFG=mod_ldap - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_ldap - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_ldap - Win32 Release" && "$(CFG)" != "mod_ldap - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_ldap.mak" CFG="mod_ldap - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_ldap - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_ldap - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "mod_ldap - Win32 Release"
OUTDIR=.\Release
INTDIR=.\Release

CPP_VAR=/MD /O2 /Oy- /D "NDEBUG" 
MTL_VAR=/D "NDEBUG" 
RSC_VAR=/d "NDEBUG" 
LINK32_VAR=/opt:ref 

!ELSEIF  "$(CFG)" == "mod_ldap - Win32 Debug"
OUTDIR=.\Debug
INTDIR=.\Debug

CPP_VAR=/MDd /Od /D "_DEBUG" 
MTL_VAR=/D "_DEBUG" 
RSC_VAR=/d "_DEBUG" 
LINK32_VAR= 

!ENDIF 


ALL : "$(OUTDIR)\mod_ldap.so"
CLEAN :
	-@erase "$(INTDIR)\mod_ldap.res"
	-@erase "$(INTDIR)\mod_ldap_src.idb"
	-@erase "$(INTDIR)\mod_ldap_src.pdb"
	-@erase "$(INTDIR)\util_ldap.obj"
	-@erase "$(INTDIR)\util_ldap_cache.obj"
	-@erase "$(INTDIR)\util_ldap_cache_mgr.obj"
	-@erase "$(OUTDIR)\mod_ldap.exp"
	-@erase "$(OUTDIR)\mod_ldap.lib"
	-@erase "$(OUTDIR)\mod_ldap.pdb"
	-@erase "$(OUTDIR)\mod_ldap.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo $(CPP_VAR) /W3 /Zi /I "../../include" /I "$(APR_INC)" /I "$(APU_INC)" /D "WIN32" /D "_WINDOWS" /D "LDAP_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_ldap_src" /FD /c 

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
MTL_PROJ=/nologo $(MTL_VAR) /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_ldap.res" $(RSC_VAR) /i "../../include" /i "$(APR_INC)" /d BIN_NAME="mod_ldap.so" /d LONG_NAME="ldap_module for Apache"  /i "\tmp\httpd\build\win32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_ldap.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=$(APR_LIB) $(APU_LIB) kernel32.lib wldap32.lib $(LINK32_VAR) /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_ldap.pdb" /debug /machine:$(ARCH) /libpath:"$(LIB_DIR)" /out:"$(OUTDIR)\mod_ldap.so" /implib:"$(OUTDIR)\mod_ldap.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_ldap.so 
LINK32_OBJS= \
	"$(INTDIR)\util_ldap.obj" \
	"$(INTDIR)\util_ldap_cache.obj" \
	"$(INTDIR)\util_ldap_cache_mgr.obj" \
	"$(INTDIR)\mod_ldap.res" \
	"$(OUTDIR)\libhttpd.lib"

"$(OUTDIR)\mod_ldap.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\mod_ldap.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\mod_ldap.so"
   if exist $(OUTDIR)\mod_ldap.so.manifest mt.exe -manifest $(OUTDIR)\mod_ldap.so.manifest -outputresource:$(OUTDIR)\mod_ldap.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"



!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_ldap.dep")
!INCLUDE "mod_ldap.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_ldap.dep"
!ENDIF 
!ENDIF 


SOURCE=..\..\build\win32\httpd.rc

"$(INTDIR)\mod_ldap.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) /i "\tmp\httpd\build\win32" $(SOURCE)


SOURCE=.\util_ldap.c

"$(INTDIR)\util_ldap.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\util_ldap_cache.c

"$(INTDIR)\util_ldap_cache.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\util_ldap_cache_mgr.c

"$(INTDIR)\util_ldap_cache_mgr.obj" : $(SOURCE) "$(INTDIR)"


