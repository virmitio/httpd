# Microsoft Developer Studio Generated NMAKE File, Based on mod_proxy.dsp
!IF "$(CFG)" == ""
CFG=mod_proxy - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_proxy - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_proxy - Win32 Release" && "$(CFG)" != "mod_proxy - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_proxy.mak" CFG="mod_proxy - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_proxy - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_proxy - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_proxy - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_proxy.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\mod_proxy.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_proxy.obj"
	-@erase "$(INTDIR)\mod_proxy.res"
	-@erase "$(INTDIR)\mod_proxy_src.idb"
	-@erase "$(INTDIR)\mod_proxy_src.pdb"
	-@erase "$(INTDIR)\proxy_util.obj"
	-@erase "$(OUTDIR)\mod_proxy.exp"
	-@erase "$(OUTDIR)\mod_proxy.lib"
	-@erase "$(OUTDIR)\mod_proxy.pdb"
	-@erase "$(OUTDIR)\mod_proxy.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../ssl" /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../generators" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "PROXY_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_proxy_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_proxy.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_proxy.so" /d LONG_NAME="proxy_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_proxy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_proxy.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_proxy.so" /implib:"$(OUTDIR)\mod_proxy.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_proxy.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_proxy.obj" \
	"$(INTDIR)\proxy_util.obj" \
	"$(INTDIR)\mod_proxy.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_proxy.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_proxy.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\mod_proxy.so"
   if exist .\Release\mod_proxy.so.manifest mt.exe -manifest .\Release\mod_proxy.so.manifest -outputresource:.\Release\mod_proxy.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_proxy - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_proxy.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_proxy.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_proxy.obj"
	-@erase "$(INTDIR)\mod_proxy.res"
	-@erase "$(INTDIR)\mod_proxy_src.idb"
	-@erase "$(INTDIR)\mod_proxy_src.pdb"
	-@erase "$(INTDIR)\proxy_util.obj"
	-@erase "$(OUTDIR)\mod_proxy.exp"
	-@erase "$(OUTDIR)\mod_proxy.lib"
	-@erase "$(OUTDIR)\mod_proxy.pdb"
	-@erase "$(OUTDIR)\mod_proxy.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../ssl" /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../generators" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "PROXY_DECLARE_EXPORT" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_proxy_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_proxy.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_proxy.so" /d LONG_NAME="proxy_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_proxy.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib ws2_32.lib mswsock.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_proxy.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_proxy.so" /implib:"$(OUTDIR)\mod_proxy.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_proxy.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_proxy.obj" \
	"$(INTDIR)\proxy_util.obj" \
	"$(INTDIR)\mod_proxy.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_proxy.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_proxy.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_proxy.so"
   if exist .\Debug\mod_proxy.so.manifest mt.exe -manifest .\Debug\mod_proxy.so.manifest -outputresource:.\Debug\mod_proxy.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_proxy.dep")
!INCLUDE "mod_proxy.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_proxy.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_proxy - Win32 Release" || "$(CFG)" == "mod_proxy - Win32 Debug"
SOURCE=.\mod_proxy.c

"$(INTDIR)\mod_proxy.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\proxy_util.c

"$(INTDIR)\proxy_util.obj" : $(SOURCE) "$(INTDIR)"


!IF  "$(CFG)" == "mod_proxy - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_proxy - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_proxy - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_proxy - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_proxy - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\proxy"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\proxy"

!ELSEIF  "$(CFG)" == "mod_proxy - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\proxy"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\proxy"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_proxy - Win32 Release"


"$(INTDIR)\mod_proxy.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_proxy.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d BIN_NAME="mod_proxy.so" /d LONG_NAME="proxy_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_proxy - Win32 Debug"


"$(INTDIR)\mod_proxy.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_proxy.res" /i "../../include" /i "../../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d BIN_NAME="mod_proxy.so" /d LONG_NAME="proxy_module for Apache" $(SOURCE)


!ENDIF 


!ENDIF 

