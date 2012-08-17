# Microsoft Developer Studio Generated NMAKE File, Based on httpd.dsp
!IF "$(CFG)" == ""
CFG=httpd - Win32 Release
!MESSAGE No configuration specified. Defaulting to httpd - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "httpd - Win32 Release" && "$(CFG)" != "httpd - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "httpd.mak" CFG="httpd - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "httpd - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "httpd - Win32 Debug" (based on "Win32 (x86) Console Application")
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


!IF  "$(CFG)" == "httpd - Win32 Release"
OUTDIR=.\Release
INTDIR=.\Release

CPP_VAR=/MD /O2 /Oy- /D "NDEBUG" 
RSC_VAR=/d "NDEBUG" 
LINK32_VAR=/opt:ref 

!ELSEIF  "$(CFG)" == "httpd - Win32 Debug"
OUTDIR=.\Debug
INTDIR=.\Debug

CPP_VAR=/MDd /Od /D "_DEBUG" /EHsc 
RSC_VAR=/d "_DEBUG" 
LINK32_VAR=

!ENDIF 

!IF "$(RECURSE)" == "1" 
ALL : "libhttpd - Win32 Release" "$(OUTDIR)\httpd.exe"
CLEAN :"libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
ALL : "$(OUTDIR)\httpd.exe"
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\httpd.idb"
	-@erase "$(INTDIR)\httpd.res"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(OUTDIR)\httpd.exe"
	-@erase "$(OUTDIR)\httpd.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo $(CPP_VAR) /W3 /Zi /I "./include" /I "$(APR_INC)" /I "$(APU_INC)" /D "WIN32" /D "_CONSOLE" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\httpd" /FD /c 

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

RSC=rc.exe
RSC_PROJ=/l 0x409 $(RSC_VAR) /fo"$(INTDIR)\httpd.res" /i "./include" /i "$(APR_INC)" /d "APP_FILE" /d BIN_NAME="httpd.exe" /d LONG_NAME="Apache HTTP Server" /d ICON_FILE="apache.ico" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\httpd.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=$(APR_LIB) $(APU_LIB) kernel32.lib user32.lib advapi32.lib ws2_32.lib mswsock.lib /nologo /stack:0x40000 /subsystem:console /incremental:no /libpath:"$(LIB_DIR)" /pdb:"$(OUTDIR)\httpd.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\httpd.exe" $(LINK32_VAR) 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\httpd.res" \
	"$(OUTDIR)\libhttpd.lib"

"$(OUTDIR)\httpd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=$(OUTDIR)\httpd.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

!IF "$(RECURSE)" == "1" 
$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "$(OUTDIR)\httpd.exe"
!ELSE 
$(DS_POSTBUILD_DEP) : "$(OUTDIR)\httpd.exe"
!ENDIF 
   if exist $(OUTDIR)\httpd.exe.manifest mt.exe -manifest $(OUTDIR)\httpd.exe.manifest -outputresource:$(OUTDIR)\httpd.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("httpd.dep")
!INCLUDE "httpd.dep"
!ELSE 
!MESSAGE Warning: cannot find "httpd.dep"
!ENDIF 
!ENDIF 


"libhttpd - Win32 Release" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" 
   cd "."

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd "."

"libhttpd - Win32 Debug" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" 
   cd "."

"libhttpd - Win32 DebugCLEAN" : 
   cd "."
   $(MAKE) /$(MAKEFLAGS) /F .\libhttpd.mak CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd "."

SOURCE=.\build\win32\httpd.rc

"$(INTDIR)\httpd.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) /i "build\win32" $(SOURCE)


SOURCE=.\server\main.c

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


