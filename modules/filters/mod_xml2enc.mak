# Microsoft Developer Studio Generated NMAKE File, Based on mod_xml2enc.dsp
!IF "$(CFG)" == ""
CFG=mod_xml2enc - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_xml2enc - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_xml2enc - Win32 Release" && "$(CFG)" != "mod_xml2enc - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_xml2enc.mak" CFG="mod_xml2enc - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_xml2enc - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_xml2enc - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_xml2enc - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_xml2enc.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "$(OUTDIR)\mod_xml2enc.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\httpd.res"
	-@erase "$(INTDIR)\mod_xml2enc.obj"
	-@erase "$(INTDIR)\mod_xml2enc_src.idb"
	-@erase "$(INTDIR)\mod_xml2enc_src.pdb"
	-@erase "$(OUTDIR)\mod_xml2enc.exp"
	-@erase "$(OUTDIR)\mod_xml2enc.lib"
	-@erase "$(OUTDIR)\mod_xml2enc.pdb"
	-@erase "$(OUTDIR)\mod_xml2enc.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../../srclib/libxml2/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_xml2enc_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\httpd.res" /i "../../include" /i "../../srclib/apr/include" /i "../../srclib/apr-util/include" /i "../../srclib/libxml2/include" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_xml2enc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib libxml2.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_xml2enc.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_xml2enc.so" /implib:"$(OUTDIR)\mod_xml2enc.lib" /libpath:"../../srclib/libxml2/win32/bin.msvc" /base:@..\..\os\win32\BaseAddr.ref,mod_xml2enc.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_xml2enc.obj" \
	"$(INTDIR)\httpd.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_xml2enc.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_xml2enc.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\mod_xml2enc.so"
   if exist .\Release\mod_xml2enc.so.manifest mt.exe -manifest .\Release\mod_xml2enc.so.manifest -outputresource:.\Release\mod_xml2enc.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_xml2enc - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_xml2enc.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_xml2enc.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\httpd.res"
	-@erase "$(INTDIR)\mod_xml2enc.obj"
	-@erase "$(INTDIR)\mod_xml2enc_src.idb"
	-@erase "$(INTDIR)\mod_xml2enc_src.pdb"
	-@erase "$(OUTDIR)\mod_xml2enc.exp"
	-@erase "$(OUTDIR)\mod_xml2enc.lib"
	-@erase "$(OUTDIR)\mod_xml2enc.pdb"
	-@erase "$(OUTDIR)\mod_xml2enc.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../../srclib/libxml2/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_xml2enc_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\httpd.res" /i "../../srclib/apr/include" /i "../../srclib/apr-util/include" /i "../../srclib/libxml2/include" /d "_DEBUG" /i "../../include" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_xml2enc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib libxml2.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_xml2enc.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_xml2enc.so" /implib:"$(OUTDIR)\mod_xml2enc.lib" /libpath:"../../srclib/libxml2/win32/bin.msvc" /base:@..\..\os\win32\BaseAddr.ref,mod_xml2enc.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_xml2enc.obj" \
	"$(INTDIR)\httpd.res" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_xml2enc.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_xml2enc.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "$(OUTDIR)\mod_xml2enc.so"
   if exist .\Debug\mod_xml2enc.so.manifest mt.exe -manifest .\Debug\mod_xml2enc.so.manifest -outputresource:.\Debug\mod_xml2enc.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_xml2enc.dep")
!INCLUDE "mod_xml2enc.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_xml2enc.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_xml2enc - Win32 Release" || "$(CFG)" == "mod_xml2enc - Win32 Debug"
SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_xml2enc - Win32 Release"


"$(INTDIR)\httpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\httpd.res" /i "../../include" /i "../../srclib/apr/include" /i "../../srclib/apr-util/include" /i "../../srclib/libxml2/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_xml2enc - Win32 Debug"


"$(INTDIR)\httpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\httpd.res" /i "../../srclib/apr/include" /i "../../srclib/apr-util/include" /i "../../srclib/libxml2/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /i "../../include" $(SOURCE)


!ENDIF 

SOURCE=.\mod_xml2enc.c

"$(INTDIR)\mod_xml2enc.obj" : $(SOURCE) "$(INTDIR)"


!IF  "$(CFG)" == "mod_xml2enc - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_xml2enc - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_xml2enc - Win32 Release"

!ELSEIF  "$(CFG)" == "mod_xml2enc - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "mod_xml2enc - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd ".\modules\filters"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\filters"

!ELSEIF  "$(CFG)" == "mod_xml2enc - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd ".\modules\filters"

"libhttpd - Win32 DebugCLEAN" : 
   cd "\tmp\httpd"
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\filters"

!ENDIF 


!ENDIF 

