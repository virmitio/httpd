# Microsoft Developer Studio Generated NMAKE File, Based on ab.dsp
!IF "$(CFG)" == ""
CFG=ab - Win32 Debug
!MESSAGE No configuration specified. Defaulting to ab - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "ab - Win32 Release" && "$(CFG)" != "ab - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ab.mak" CFG="ab - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ab - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "ab - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ab - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ab.exe"

!ELSE 

ALL : "$(OUTDIR)\ab.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\ab.obj"
	-@erase "$(INTDIR)\ab.res"
	-@erase "$(INTDIR)\ab_src.idb"
	-@erase "$(INTDIR)\ab_src.pdb"
	-@erase "$(OUTDIR)\ab.exe"
	-@erase "$(OUTDIR)\ab.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../srclib/apr/include" /I "../srclib/apr-util/include" /I "../include" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\ab_src" /FD /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ab.res" /i "../include" /i "../srclib/apr/include" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="ab.exe" /d LONG_NAME="ApacheBench command line utility" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ab.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ab.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\ab.exe" /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\ab.obj" \
	"$(INTDIR)\ab.res"

"$(OUTDIR)\ab.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\ab.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\ab.exe"
   if exist .\Release\ab.exe.manifest mt.exe -manifest .\Release\ab.exe.manifest -outputresource:.\Release\ab.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "ab - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ab.exe"

!ELSE 

ALL : "$(OUTDIR)\ab.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\ab.obj"
	-@erase "$(INTDIR)\ab.res"
	-@erase "$(INTDIR)\ab_src.idb"
	-@erase "$(INTDIR)\ab_src.pdb"
	-@erase "$(OUTDIR)\ab.exe"
	-@erase "$(OUTDIR)\ab.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../srclib/apr/include" /I "../srclib/apr-util/include" /I "../include" /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "APR_DECLARE_STATIC" /D "APU_DECLARE_STATIC" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\ab_src" /FD /EHsc /c 

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
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ab.res" /i "../include" /i "../srclib/apr/include" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="ab.exe" /d LONG_NAME="ApacheBench command line utility" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ab.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib advapi32.lib wsock32.lib ws2_32.lib shell32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\ab.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\ab.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ab.obj" \
	"$(INTDIR)\ab.res"

"$(OUTDIR)\ab.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\ab.exe
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\ab.exe"
   if exist .\Debug\ab.exe.manifest mt.exe -manifest .\Debug\ab.exe.manifest -outputresource:.\Debug\ab.exe;1
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("ab.dep")
!INCLUDE "ab.dep"
!ELSE 
!MESSAGE Warning: cannot find "ab.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "ab - Win32 Release" || "$(CFG)" == "ab - Win32 Debug"

!IF  "$(CFG)" == "ab - Win32 Release"

!ELSEIF  "$(CFG)" == "ab - Win32 Debug"

!ENDIF 

!IF  "$(CFG)" == "ab - Win32 Release"

!ELSEIF  "$(CFG)" == "ab - Win32 Debug"

!ENDIF 

SOURCE=.\ab.c

"$(INTDIR)\ab.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=..\build\win32\httpd.rc

!IF  "$(CFG)" == "ab - Win32 Release"


"$(INTDIR)\ab.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\ab.res" /i "../include" /i "../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "NDEBUG" /d "APP_FILE" /d BIN_NAME="ab.exe" /d LONG_NAME="ApacheBench command line utility" $(SOURCE)


!ELSEIF  "$(CFG)" == "ab - Win32 Debug"


"$(INTDIR)\ab.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\ab.res" /i "../include" /i "../srclib/apr/include" /i "\tmp\httpd\build\win32" /d "_DEBUG" /d "APP_FILE" /d BIN_NAME="ab.exe" /d LONG_NAME="ApacheBench command line utility" $(SOURCE)


!ENDIF 


!ENDIF 

