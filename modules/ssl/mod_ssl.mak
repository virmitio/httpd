# Microsoft Developer Studio Generated NMAKE File, Based on mod_ssl.dsp
!IF "$(CFG)" == ""
CFG=mod_ssl - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_ssl - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_ssl - Win32 Release" && "$(CFG)" != "mod_ssl - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_ssl.mak" CFG="mod_ssl - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_ssl - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_ssl - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "mod_ssl - Win32 Release"
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

ALL : "$(OUTDIR)\mod_ssl.so"
CLEAN :
	-@erase "$(INTDIR)\mod_ssl.obj"
	-@erase "$(INTDIR)\mod_ssl.res"
	-@erase "$(INTDIR)\mod_ssl_src.idb"
	-@erase "$(INTDIR)\mod_ssl_src.pdb"
	-@erase "$(INTDIR)\ssl_engine_config.obj"
	-@erase "$(INTDIR)\ssl_engine_dh.obj"
	-@erase "$(INTDIR)\ssl_engine_init.obj"
	-@erase "$(INTDIR)\ssl_engine_io.obj"
	-@erase "$(INTDIR)\ssl_engine_kernel.obj"
	-@erase "$(INTDIR)\ssl_engine_log.obj"
	-@erase "$(INTDIR)\ssl_engine_mutex.obj"
	-@erase "$(INTDIR)\ssl_engine_ocsp.obj"
	-@erase "$(INTDIR)\ssl_engine_pphrase.obj"
	-@erase "$(INTDIR)\ssl_engine_rand.obj"
	-@erase "$(INTDIR)\ssl_engine_vars.obj"
	-@erase "$(INTDIR)\ssl_scache.obj"
	-@erase "$(INTDIR)\ssl_util.obj"
	-@erase "$(INTDIR)\ssl_util_ocsp.obj"
	-@erase "$(INTDIR)\ssl_util_ssl.obj"
	-@erase "$(INTDIR)\ssl_util_stapling.obj"
	-@erase "$(OUTDIR)\mod_ssl.exp"
	-@erase "$(OUTDIR)\mod_ssl.lib"
	-@erase "$(OUTDIR)\mod_ssl.pdb"
	-@erase "$(OUTDIR)\mod_ssl.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /W3 /Zi /I "../../include" /I "../generators" /I "$(APR_INC)" /I "$(APU_INC)" $(CPP_VAR) /I "../../srclib/openssl/inc32" /D "WIN32" /D "_WINDOWS" /D "WIN32_LEAN_AND_MEAN" /D "NO_IDEA" /D "NO_RC5" /D "NO_MDC2" /D "OPENSSL_NO_IDEA" /D "OPENSSL_NO_RC5" /D "OPENSSL_NO_MDC2" /D "HAVE_OPENSSL" /D "HAVE_SSL_SET_STATE" /D "HAVE_OPENSSL_ENGINE_H" /D "HAVE_ENGINE_INIT" /D "HAVE_ENGINE_LOAD_BUILTIN_ENGINES" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_ssl_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_ssl.res" /i "../../include" /i "$(APR_INC)"  $(RSC_VAR)  /d BIN_NAME="mod_ssl.so" /d LONG_NAME="proxy_ssl_module for Apache"  /i "\tmp\httpd\build\win32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_ssl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib wsock32.lib ws2_32.lib advapi32.lib gdi32.lib libeay32.lib ssleay32.lib $(APR_LIB) $(APU_LIB) $(LINK32_VAR) /libpath:"$(LIB_DIR)" /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_ssl.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\mod_ssl.so" /implib:"$(OUTDIR)\mod_ssl.lib" /libpath:"../../srclib/openssl/out32dll" /libpath:"../../srclib/openssl/out32" /base:@..\..\os\win32\BaseAddr.ref,mod_ssl.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_ssl.obj" \
	"$(INTDIR)\ssl_engine_config.obj" \
	"$(INTDIR)\ssl_engine_dh.obj" \
	"$(INTDIR)\ssl_engine_init.obj" \
	"$(INTDIR)\ssl_engine_io.obj" \
	"$(INTDIR)\ssl_engine_kernel.obj" \
	"$(INTDIR)\ssl_engine_log.obj" \
	"$(INTDIR)\ssl_engine_mutex.obj" \
	"$(INTDIR)\ssl_engine_pphrase.obj" \
	"$(INTDIR)\ssl_engine_rand.obj" \
	"$(INTDIR)\ssl_engine_vars.obj" \
	"$(INTDIR)\ssl_engine_ocsp.obj" \
	"$(INTDIR)\ssl_util_ocsp.obj" \
	"$(INTDIR)\ssl_scache.obj" \
	"$(INTDIR)\ssl_util_stapling.obj" \
	"$(INTDIR)\ssl_util.obj" \
	"$(INTDIR)\ssl_util_ssl.obj" \
	"$(INTDIR)\mod_ssl.res" \
	"$(HTTPD_OUT)\libhttpd.lib"

"$(OUTDIR)\mod_ssl.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\mod_ssl.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\mod_ssl.so"
   if exist $(OUTDIR)\mod_ssl.so.manifest mt.exe -manifest $(OUTDIR)\mod_ssl.so.manifest -outputresource:$(OUTDIR)\mod_ssl.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_ssl.dep")
!INCLUDE "mod_ssl.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_ssl.dep"
!ENDIF 
!ENDIF 


SOURCE=.\mod_ssl.c

"$(INTDIR)\mod_ssl.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_config.c

"$(INTDIR)\ssl_engine_config.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_dh.c

"$(INTDIR)\ssl_engine_dh.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_init.c

"$(INTDIR)\ssl_engine_init.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_io.c

"$(INTDIR)\ssl_engine_io.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_kernel.c

"$(INTDIR)\ssl_engine_kernel.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_log.c

"$(INTDIR)\ssl_engine_log.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_mutex.c

"$(INTDIR)\ssl_engine_mutex.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_ocsp.c

"$(INTDIR)\ssl_engine_ocsp.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_pphrase.c

"$(INTDIR)\ssl_engine_pphrase.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_rand.c

"$(INTDIR)\ssl_engine_rand.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_engine_vars.c

"$(INTDIR)\ssl_engine_vars.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_scache.c

"$(INTDIR)\ssl_scache.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_util.c

"$(INTDIR)\ssl_util.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_util_ocsp.c

"$(INTDIR)\ssl_util_ocsp.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_util_ssl.c

"$(INTDIR)\ssl_util_ssl.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ssl_util_stapling.c

"$(INTDIR)\ssl_util_stapling.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=..\..\build\win32\httpd.rc


"$(INTDIR)\mod_ssl.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)

