# Microsoft Developer Studio Generated NMAKE File, Based on gen_test_char.dsp
!IF "$(CFG)" == ""
CFG=gen_test_char - Win32 Debug
!MESSAGE No configuration specified. Defaulting to gen_test_char - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "gen_test_char - Win32 Release" && "$(CFG)" != "gen_test_char - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "gen_test_char.mak" CFG="gen_test_char - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "gen_test_char - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "gen_test_char - Win32 Debug" (based on "Win32 (x86) Console Application")
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
APU_INC=../srclib/apr-util/include
PCRE_INC=../srclib/pcre
PCRE_LIB=../srclib/pcre/pcre.lib

OUTDIR=.

!IF  "$(CFG)" == "gen_test_char - Win32 Release"
INTDIR=.\Release
CPP_VAR=/MD /O2 /D "NDEBUG" 
LINK32_VAR=/opt:ref 
!ELSEIF  "$(CFG)" == "gen_test_char - Win32 Debug"
INTDIR=.\Debug
CPP_VAR=/MDd /Zi /Od /D "_DEBUG" /EHsc 
LINK32_VAR=/debug 
!ENDIF 

ALL : "$(OUTDIR)\gen_test_char.exe"

CLEAN :
	-@erase "$(INTDIR)\gen_test_char.idb"
	-@erase "$(INTDIR)\gen_test_char.obj"
	-@erase "$(OUTDIR)\gen_test_char.exe"
!IF  "$(CFG)" == "gen_test_char - Win32 Debug"
	-@erase "$(OUTDIR)\Debug\gen_test_char.pdb"
!ENDIF 

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo $(CPP_VAR) /W3 /I "..\include" /I "$(APR_INC)" /I "$(APU_INC)" /I "..\os\win32" /D "AP_DECLARE_EXPORT" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\gen_test_char" /FD /c 

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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\gen_test_char.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console $(LINK32_VAR) /incremental:no /pdb:"$(OUTDIR)\gen_test_char.pdb" /machine:$(ARCH) /out:"$(OUTDIR)\gen_test_char.exe" 
LINK32_OBJS= \
	"$(INTDIR)\gen_test_char.obj"

"$(OUTDIR)\gen_test_char.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("gen_test_char.dep")
!INCLUDE "gen_test_char.dep"
!ELSE 
!MESSAGE Warning: cannot find "gen_test_char.dep"
!ENDIF 
!ENDIF 


SOURCE=.\gen_test_char.c

"$(INTDIR)\gen_test_char.obj" : $(SOURCE) "$(INTDIR)"

