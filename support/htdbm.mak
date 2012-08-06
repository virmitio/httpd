# Microsoft Developer Studio Generated NMAKE File, Based on htdbm.dsp
!IF "$(CFG)" == ""
CFG=htdbm - Win32 Debug
!MESSAGE No configuration specified. Defaulting to htdbm - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "htdbm - Win32 Release" && "$(CFG)" != "htdbm - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "htdbm.mak" CFG="htdbm - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "htdbm - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "htdbm - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "htdbm - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\htdbm.exe"

!ELSE 

ALL : "$(OUTDIR)\htdbm.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\htdbm.obj"
	-@erase "$(INTDIR)\htdbm.res"
	-@erase "$(INTDIR)\htdbm_src.idb"
	-@erase "$(INTDIR)\htdbm_src.pdb"
	-@erase "$(OUTDIR)\htdbm.exe"
	-@erase "$(OUTDIR)\htdbm.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../srclib/apr/include" /I "../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\htdbm_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\htdbm.res" /i "../include" /i "../srclib/apr/include" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="htdbm.exe" /d LONG_NAME="Apache htdbm command line utility" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\htdbm.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\htdbm.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\htdbm.exe" /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\htdbm.obj" \
	"$(INTDIR)\htdbm.res"

"$(OUTDIR)\htdbm.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\htdbm.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\htdbm.exe"
   if exist .\Release\htdbm.exe.manifest mt.exe -manifest .\Release\htdbm.exe.manifest -outputresource:.\Release\htdbm.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "htdbm - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\htdbm.exe"

!ELSE 

ALL : "$(OUTDIR)\htdbm.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\htdbm.obj"
	-@erase "$(INTDIR)\htdbm.res"
	-@erase "$(INTDIR)\htdbm_src.idb"
	-@erase "$(INTDIR)\htdbm_src.pdb"
	-@erase "$(OUTDIR)\htdbm.exe"
	-@erase "$(OUTDIR)\htdbm.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../srclib/apr/include" /I "../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\htdbm_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\htdbm.res" /i "../include" /i "../srclib/apr/include" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="htdbm.exe" /d LONG_NAME="Apache htdbm command line utility" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\htdbm.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\htdbm.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\htdbm.exe" 
LINK32_OBJS= \
	"$(INTDIR)\htdbm.obj" \
	"$(INTDIR)\htdbm.res"

"$(OUTDIR)\htdbm.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\htdbm.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\htdbm.exe"
   if exist .\Debug\htdbm.exe.manifest mt.exe -manifest .\Debug\htdbm.exe.manifest -outputresource:.\Debug\htdbm.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("htdbm.dep")
!INCLUDE "htdbm.dep"
!ELSE 
!MESSAGE Warning: cannot find "htdbm.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "htdbm - Win32 Release" || "$(CFG)" == "htdbm - Win32 Debug"

!IF  "$(CFG)" == "htdbm - Win32 Release"

!ELSEIF  "$(CFG)" == "htdbm - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "htdbm - Win32 Release"

!ELSEIF  "$(CFG)" == "htdbm - Win32 Debug"

!ENDIF 

SOURCE=.\htdbm.c

"$(INTDIR)\htdbm.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=..\build\win32\httpd.rc

!IF  "$(CFG)" == "htdbm - Win32 Release"


"$(INTDIR)\htdbm.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\htdbm.res" /i "../include" /i "../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="htdbm.exe" /d LONG_NAME="Apache htdbm command line utility" $(SOURCE)


!ELSEIF  "$(CFG)" == "htdbm - Win32 Debug"


"$(INTDIR)\htdbm.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\htdbm.res" /i "../include" /i "../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="htdbm.exe" /d LONG_NAME="Apache htdbm command line utility" $(SOURCE)


!ENDIF 


!ENDIF 

