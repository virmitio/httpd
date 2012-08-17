# Microsoft Developer Studio Generated NMAKE File, Based on libhttpd.dsp
!IF "$(CFG)" == ""
CFG=libhttpd - Win32 Release
!MESSAGE No configuration specified. Defaulting to libhttpd - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "libhttpd - Win32 Release" && "$(CFG)" != "libhttpd - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libhttpd.mak" CFG="libhttpd - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libhttpd - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libhttpd - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 


ARCH=IX86
APR_INC=./srclib/apr/include
APR_LIB=libapr-1.lib
APU_INC=./srclib/apr-util/include
APU_LIB=libaprutil-1.lib
PCRE_INC=./srclib/pcre
PCRE_LIB=pcre.lib
LIB_DIR=./srclib/pcre

OUTDIR=.\Release
INTDIR=.\Release

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe
BSC32=bscmake.exe
LINK32=link.exe

!IF  "$(CFG)" == "libhttpd - Win32 Release"
!MESSAGE Running Release
CPP_VAR= 
MTL_VAR= 
RSC_VAR= 
PCRE_LIB=pcre.lib
!ELSEIF  "$(CFG)" == "libhttpd - Win32 Debug"
!MESSAGE Running Debug
CPP_VAR=/D "_DEBUG" /EHsc 
MTL_VAR=/D "_DEBUG" 
RSC_VAR=/d "_DEBUG" 
PCRE_LIB=pcred.lib
!ENDIF 

CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "./include" /I "$(APR_INC)" /I "$(APU_INC)" /I "$(PCRE_INC)" $(CPP_VAR) /D "WIN32" /D "_WINDOWS" /D "AP_DECLARE_EXPORT" /D "NDEBUG" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\libhttpd_cl" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 $(MTL_VAR) 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\libhttpd.res" /i "./include" /i "$(APR_INC)" $(RSC_VAR) /d BIN_NAME="libhttpd.dll" /d LONG_NAME="Apache HTTP Server Core" /d "NDEBUG" 
LINK32_FLAGS=$(PCRE_LIB) $(APR_LIB) $(APU_LIB) kernel32.lib user32.lib advapi32.lib ws2_32.lib mswsock.lib "$(INTDIR)\buildmark.obj" /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\libhttpd.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\libhttpd.dll" /implib:"$(OUTDIR)\libhttpd.lib" /libpath:"$(LIB_DIR)" /base:@"os\win32\BaseAddr.ref",libhttpd.dll  /base:@"os\win32\BaseAddr.ref",libhttpd.dll /opt:ref 
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libhttpd.bsc" 
BSC32_SBRS= \

ALL : ".\server\test_char.h" ".\include\mod_so.h" ".\include\mod_proxy.h" ".\include\mod_include.h" ".\include\mod_dav.h" ".\include\mod_cgi.h" ".\include\ap_config_layout.h" "$(OUTDIR)\libhttpd.dll"
CLEAN :
	-@erase "$(INTDIR)\ap_regkey.obj"
	-@erase "$(INTDIR)\byterange_filter.obj"
	-@erase "$(INTDIR)\child.obj"
	-@erase "$(INTDIR)\chunk_filter.obj"
	-@erase "$(INTDIR)\config.obj"
	-@erase "$(INTDIR)\connection.obj"
	-@erase "$(INTDIR)\core.obj"
	-@erase "$(INTDIR)\core_filters.obj"
	-@erase "$(INTDIR)\eoc_bucket.obj"
	-@erase "$(INTDIR)\eor_bucket.obj"
	-@erase "$(INTDIR)\error_bucket.obj"
	-@erase "$(INTDIR)\http_core.obj"
	-@erase "$(INTDIR)\http_etag.obj"
	-@erase "$(INTDIR)\http_filters.obj"
	-@erase "$(INTDIR)\http_protocol.obj"
	-@erase "$(INTDIR)\http_request.obj"
	-@erase "$(INTDIR)\libhttpd.res"
	-@erase "$(INTDIR)\libhttpd_cl.idb"
	-@erase "$(INTDIR)\libhttpd_cl.pdb"
	-@erase "$(INTDIR)\listen.obj"
	-@erase "$(INTDIR)\log.obj"
	-@erase "$(INTDIR)\mod_so.obj"
	-@erase "$(INTDIR)\mod_win32.obj"
	-@erase "$(INTDIR)\modules.obj"
	-@erase "$(INTDIR)\mpm_common.obj"
	-@erase "$(INTDIR)\mpm_winnt.obj"
	-@erase "$(INTDIR)\nt_eventlog.obj"
	-@erase "$(INTDIR)\protocol.obj"
	-@erase "$(INTDIR)\provider.obj"
	-@erase "$(INTDIR)\request.obj"
	-@erase "$(INTDIR)\scoreboard.obj"
	-@erase "$(INTDIR)\service.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\util_cfgtree.obj"
	-@erase "$(INTDIR)\util_cookies.obj"
	-@erase "$(INTDIR)\util_expr_eval.obj"
	-@erase "$(INTDIR)\util_expr_parse.obj"
	-@erase "$(INTDIR)\util_expr_scan.obj"
	-@erase "$(INTDIR)\util_filter.obj"
	-@erase "$(INTDIR)\util_md5.obj"
	-@erase "$(INTDIR)\util_mutex.obj"
	-@erase "$(INTDIR)\util_pcre.obj"
	-@erase "$(INTDIR)\util_regex.obj"
	-@erase "$(INTDIR)\util_script.obj"
	-@erase "$(INTDIR)\util_time.obj"
	-@erase "$(INTDIR)\util_win32.obj"
	-@erase "$(INTDIR)\util_xml.obj"
	-@erase "$(INTDIR)\vhost.obj"
	-@erase "$(OUTDIR)\libhttpd.dll"
	-@erase "$(OUTDIR)\libhttpd.exp"
	-@erase "$(OUTDIR)\libhttpd.lib"
	-@erase "$(OUTDIR)\libhttpd.pdb"
	-@erase ".\include\ap_config_layout.h"
	-@erase ".\include\mod_cgi.h"
	-@erase ".\include\mod_dav.h"
	-@erase ".\include\mod_include.h"
	-@erase ".\include\mod_proxy.h"
	-@erase ".\include\mod_so.h"
!IF  "$(CFG)" == "libhttpd - Win32 Debug"
	-@erase ".\server\test_char.h"
!ENDIF

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

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


LINK32_OBJS= \
	"$(INTDIR)\byterange_filter.obj" \
	"$(INTDIR)\chunk_filter.obj" \
	"$(INTDIR)\config.obj" \
	"$(INTDIR)\connection.obj" \
	"$(INTDIR)\core.obj" \
	"$(INTDIR)\core_filters.obj" \
	"$(INTDIR)\http_core.obj" \
	"$(INTDIR)\http_etag.obj" \
	"$(INTDIR)\http_filters.obj" \
	"$(INTDIR)\http_protocol.obj" \
	"$(INTDIR)\http_request.obj" \
	"$(INTDIR)\log.obj" \
	"$(INTDIR)\protocol.obj" \
	"$(INTDIR)\request.obj" \
	"$(INTDIR)\vhost.obj" \
	"$(INTDIR)\mod_so.obj" \
	"$(INTDIR)\mod_win32.obj" \
	"$(INTDIR)\modules.obj" \
	"$(INTDIR)\eoc_bucket.obj" \
	"$(INTDIR)\eor_bucket.obj" \
	"$(INTDIR)\error_bucket.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\util_cfgtree.obj" \
	"$(INTDIR)\util_cookies.obj" \
	"$(INTDIR)\util_expr_eval.obj" \
	"$(INTDIR)\util_expr_scan.obj" \
	"$(INTDIR)\util_expr_parse.obj" \
	"$(INTDIR)\util_filter.obj" \
	"$(INTDIR)\util_md5.obj" \
	"$(INTDIR)\util_mutex.obj" \
	"$(INTDIR)\util_pcre.obj" \
	"$(INTDIR)\util_regex.obj" \
	"$(INTDIR)\util_script.obj" \
	"$(INTDIR)\util_time.obj" \
	"$(INTDIR)\util_win32.obj" \
	"$(INTDIR)\util_xml.obj" \
	"$(INTDIR)\ap_regkey.obj" \
	"$(INTDIR)\child.obj" \
	"$(INTDIR)\listen.obj" \
	"$(INTDIR)\mpm_common.obj" \
	"$(INTDIR)\mpm_winnt.obj" \
	"$(INTDIR)\nt_eventlog.obj" \
	"$(INTDIR)\provider.obj" \
	"$(INTDIR)\scoreboard.obj" \
	"$(INTDIR)\service.obj" \
	"$(INTDIR)\libhttpd.res"

"$(OUTDIR)\libhttpd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
#   cl.exe /nologo /MD /W3 /O2 /Oy- /Zi /I "./include" /I "./srclib/apr/include" /I "./srclib/apr-util/include" /I "./srclib/pcre" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "AP_DECLARE_EXPORT" /Fd"Release\libhttpd" /FD /c server\buildmark.c /Fo"Release\buildmark.obj"
   $(CPP) $(CPP_PROJ) server\buildmark.c  
	 $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\libhttpd.dll
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

!IF  "$(CFG)" == "libhttpd - Win32 Release"
$(DS_POSTBUILD_DEP) : ".\include\mod_so.h" ".\include\mod_proxy.h" ".\include\mod_include.h" ".\include\mod_dav.h" ".\include\mod_cgi.h" ".\include\ap_config_layout.h" "$(OUTDIR)\libhttpd.dll"
!ELSEIF  "$(CFG)" == "libhttpd - Win32 Debug"
$(DS_POSTBUILD_DEP) : ".\server\test_char.h" ".\include\mod_so.h" ".\include\mod_proxy.h" ".\include\mod_include.h" ".\include\mod_dav.h" ".\include\mod_cgi.h" ".\include\ap_config_layout.h" "$(OUTDIR)\libhttpd.dll"
!ENDIF 
   if exist $(OUTDIR)\libhttpd.dll.manifest mt.exe -manifest $(OUTDIR)\libhttpd.dll.manifest -outputresource:$(OUTDIR)\libhttpd.dll;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("libhttpd.dep")
!INCLUDE "libhttpd.dep"
!ELSE 
!MESSAGE Warning: cannot find "libhttpd.dep"
!ENDIF 
!ENDIF 


SOURCE=.\modules\generators\mod_cgi.h

InputPath=.\modules\generators\mod_cgi.h

".\include\mod_cgi.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat 
	@echo off 
	type .\modules\generators\mod_cgi.h > .\include\mod_cgi.h
<< 
	

SOURCE=.\modules\dav\main\mod_dav.h

InputPath=.\modules\dav\main\mod_dav.h

".\include\mod_dav.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\modules\dav\main\mod_dav.h > .\include\mod_dav.h
	

SOURCE=.\modules\filters\mod_include.h

InputPath=.\modules\filters\mod_include.h

".\include\mod_include.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\modules\filters\mod_include.h > .\include\mod_include.h
	

SOURCE=.\modules\proxy\mod_proxy.h

InputPath=.\modules\proxy\mod_proxy.h

".\include\mod_proxy.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\modules\proxy\mod_proxy.h > .\include\mod_proxy.h
	

SOURCE=.\modules\core\mod_so.h

InputPath=.\modules\core\mod_so.h

".\include\mod_so.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\modules\core\mod_so.h > .\include\mod_so.h
	

SOURCE=.\os\win32\os.h

InputPath=.\os\win32\os.h

".\include\os.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\os\win32\os.h > .\include\os.h
	

SOURCE=.\os\win32\win32_config_layout.h

InputPath=.\os\win32\win32_config_layout.h

".\include\ap_config_layout.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	type .\os\win32\win32_config_layout.h > .\include\ap_config_layout.h
	

SOURCE=.\server\buildmark.c
SOURCE=.\modules\http\byterange_filter.c

"$(INTDIR)\byterange_filter.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\chunk_filter.c

"$(INTDIR)\chunk_filter.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\config.c

"$(INTDIR)\config.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\connection.c

"$(INTDIR)\connection.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\core.c

"$(INTDIR)\core.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\core_filters.c

"$(INTDIR)\core_filters.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\http_core.c

"$(INTDIR)\http_core.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\http_etag.c

"$(INTDIR)\http_etag.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\http_filters.c

"$(INTDIR)\http_filters.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\http_protocol.c

"$(INTDIR)\http_protocol.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\http\http_request.c

"$(INTDIR)\http_request.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\log.c

"$(INTDIR)\log.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\protocol.c

"$(INTDIR)\protocol.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\request.c

"$(INTDIR)\request.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\vhost.c

"$(INTDIR)\vhost.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\core\mod_so.c

"$(INTDIR)\mod_so.obj" : $(SOURCE) "$(INTDIR)" ".\modules\core\mod_so.h"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\modules\arch\win32\mod_win32.c

"$(INTDIR)\mod_win32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os\win32\modules.c

"$(INTDIR)\modules.obj" : $(SOURCE) "$(INTDIR)" ".\os\win32\os.h"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\eoc_bucket.c

"$(INTDIR)\eoc_bucket.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\eor_bucket.c

"$(INTDIR)\eor_bucket.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\error_bucket.c

"$(INTDIR)\error_bucket.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util.c

"$(INTDIR)\util.obj" : $(SOURCE) "$(INTDIR)" ".\server\test_char.h"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_cfgtree.c

"$(INTDIR)\util_cfgtree.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_cookies.c

"$(INTDIR)\util_cookies.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_expr_eval.c

"$(INTDIR)\util_expr_eval.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_expr_parse.c

"$(INTDIR)\util_expr_parse.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_expr_scan.c

"$(INTDIR)\util_expr_scan.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_filter.c

"$(INTDIR)\util_filter.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_md5.c

"$(INTDIR)\util_md5.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_mutex.c

"$(INTDIR)\util_mutex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_pcre.c

"$(INTDIR)\util_pcre.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_regex.c

"$(INTDIR)\util_regex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_script.c

"$(INTDIR)\util_script.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_time.c

"$(INTDIR)\util_time.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os\win32\util_win32.c

"$(INTDIR)\util_win32.obj" : $(SOURCE) "$(INTDIR)" ".\os\win32\os.h"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_xml.c

"$(INTDIR)\util_xml.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\os\win32\ap_regkey.c

"$(INTDIR)\ap_regkey.obj" : $(SOURCE) "$(INTDIR)" ".\os\win32\os.h"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\mpm\winnt\child.c

"$(INTDIR)\child.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\listen.c

"$(INTDIR)\listen.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\mpm_common.c

"$(INTDIR)\mpm_common.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\mpm\winnt\mpm_winnt.c

"$(INTDIR)\mpm_winnt.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\mpm\winnt\nt_eventlog.c

"$(INTDIR)\nt_eventlog.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\provider.c

"$(INTDIR)\provider.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\scoreboard.c

"$(INTDIR)\scoreboard.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\mpm\winnt\service.c

"$(INTDIR)\service.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\server\util_expr_parse.y

SOURCE=.\server\util_expr_scan.l

SOURCE=$(OUTDIR)\gen_test_char.exe

InputPath=$(OUTDIR)\gen_test_char.exe
USERDEP__GEN_T=".\include\os.h"	".\include\os.h"	

".\server\test_char.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)" $(USERDEP__GEN_T)
	$(OUTDIR)\gen_test_char.exe >.\server\test_char.h
	

SOURCE=.\build\win32\httpd.rc

"$(INTDIR)\libhttpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) /i "build\win32" $(SOURCE)


