# Microsoft Developer Studio Generated NMAKE File, Based on fcgistarter.dsp
!IF "$(CFG)" == ""
CFG=fcgistarter - Win32 Debug
!MESSAGE No configuration specified. Defaulting to fcgistarter - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "fcgistarter - Win32 Release" && "$(CFG)" != "fcgistarter - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "fcgistarter.mak" CFG="fcgistarter - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "fcgistarter - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "fcgistarter - Win32 Debug" (based on "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "fcgistarter - Win32 Release"
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

ALL : "$(OUTDIR)\fcgistarter.exe"
CLEAN :
	-@erase "$(INTDIR)\fcgistarter.obj"
	-@erase "$(INTDIR)\fcgistarter.res"
	-@erase "$(INTDIR)\fcgistarter_src.idb"
	-@erase "$(INTDIR)\fcgistarter_src.pdb"
	-@erase "$(OUTDIR)\fcgistarter.exe"
	-@erase "$(OUTDIR)\fcgistarter.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /W3 /Zi /I "$(APR_INC)" /I "$(APU_INC)" $(CPP_VAR) /I "../include" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\fcgistarter_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\fcgistarter.res" /i "../include" /i "$(APR_INC)"  $(RSC_VAR)  /d "APP_FILE" /d BIN_NAME="fcgistarter.exe" /d LONG_NAME="Apache fcgi command line utility"  /i "\tmp\httpd\build\win32" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\fcgistarter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib $(APR_LIB) $(APU_LIB) $(LINK32_VAR) /libpath:"$(LIB_DIR)" /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\fcgistarter.pdb" /debug /machine:$(ARCH) /out:"$(OUTDIR)\fcgistarter.exe" 
LINK32_OBJS= \
	"$(INTDIR)\fcgistarter.obj" \
	"$(INTDIR)\fcgistarter.res"

"$(OUTDIR)\fcgistarter.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) \
  $(LINK32_FLAGS) $(LINK32_OBJS)


TargetPath=$(OUTDIR)\fcgistarter.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\fcgistarter.exe"
   if exist $(OUTDIR)\fcgistarter.exe.manifest mt.exe -manifest $(OUTDIR)\fcgistarter.exe.manifest -outputresource:$(OUTDIR)\fcgistarter.exe;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("fcgistarter.dep")
!INCLUDE "fcgistarter.dep"
!ELSE 
!MESSAGE Warning: cannot find "fcgistarter.dep"
!ENDIF 
!ENDIF 



SOURCE=.\fcgistarter.c

"$(INTDIR)\fcgistarter.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=..\build\win32\httpd.rc

"$(INTDIR)\fcgistarter.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)
