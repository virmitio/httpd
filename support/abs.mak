# Microsoft Developer Studio Generated NMAKE File, Based on abs.dsp
!IF "$(CFG)" == ""
CFG=abs - Win32 Debug
!MESSAGE No configuration specified. Defaulting to abs - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "abs - Win32 Release" && "$(CFG)" != "abs - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "abs.mak" CFG="abs - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "abs - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "abs - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

ARCH=IX86
APR_INC=../srclib/apr/include
APR_LIB=libapr-1.lib
APU_INC=../srclib/apr-util/include
APU_LIB=libaprutil-1.lib
OPENSSL_INC=../srclib/openssl/inc32
OPENSSL_LIBS=ssleay32.lib libeay32.lib
LIB_DIR=../srclib/pcre
HTTPD_OUT=..\Release

!IF  "$(CFG)" == "abs - Win32 Release"
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

ALL : "$(OUTDIR)\abs.exe"
CLEAN :
	-@erase "$(INTDIR)\ab.res"
	-@erase "$(INTDIR)\abs.obj"
	-@erase "$(INTDIR)\abs_src.idb"
	-@erase "$(INTDIR)\abs_src.pdb"
	-@erase "$(OUTDIR)\abs.exe"
	-@erase "$(OUTDIR)\abs.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /W3 /Zi /I "$(APR_INC)" /I "$(APU_INC)" $(CPP_VAR) /I "../include" /I "$(OPENSSL_INC)" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /D "HAVE_OPENSSL" /D "WIN32_LEAN_AND_MEAN" /D "NO_IDEA" /D "NO_RC5" /D "NO_MDC2" /D "OPENSSL_NO_IDEA" /D "OPENSSL_NO_RC5" /D "OPENSSL_NO_MDC2" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\abs_src" /FD /c 

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


RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ab.res" /i "../include" /i "$(APR_INC)"  $(RSC_VAR)  /d "APP_FILE" /d BIN_NAME="ab.exe" /d LONG_NAME="ApacheBench/SSL command line utility"  /i "\tmp\httpd\build\win32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\abs.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib $(OPENSSL_LIBS) $(APR_LIB) $(APU_LIB) $(LINK32_VAR) /libpath:"$(LIB_DIR)" /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\abs.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\abs.exe" /libpath:"../srclib/openssl/out32dll" 
LINK32_OBJS= \
	"$(INTDIR)\abs.obj" \
	"$(INTDIR)\ab.res"

"$(OUTDIR)\abs.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\abs.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\abs.exe"
   if exist $(OUTDIR)\abs.exe.manifest mt.exe -manifest $(OUTDIR)\abs.exe.manifest -outputresource:$(OUTDIR)\abs.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("abs.dep")
!INCLUDE "abs.dep"
!ELSE 
!MESSAGE Warning: cannot find "abs.dep"
!ENDIF 
!ENDIF 



SOURCE=.\ab.c

"$(INTDIR)\abs.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) \
  $(CPP_PROJ) $(SOURCE) /Fo$@



SOURCE=..\build\win32\httpd.rc


"$(INTDIR)\ab.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)

