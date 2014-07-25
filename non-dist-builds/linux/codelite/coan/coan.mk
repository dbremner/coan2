##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=coan
ConfigurationName      :=Debug
WorkspacePath          := "/home/imk/develop/coan-5.2.1/non-dist-builds/linux/codelite/coan"
ProjectPath            := "/home/imk/develop/coan-5.2.1/non-dist-builds/linux/codelite/coan"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Mike Kinghan
Date                   :=07/12/14
CodeLitePath           :="/home/imk/.codelite"
LinkerName             :=/usr/bin/g++-4.8 
SharedObjectLinkerName :=/usr/bin/g++-4.8 -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)HAVE_CONFIG_H 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="coan.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++-4.8 
CC       := /usr/bin/gcc-4.8 
CXXFLAGS :=  -g -O0 -Wall -std=c++11 -pedantic $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/src_chew.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_contradiction.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_dataset.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_diagnostic.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_directive.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_expression_parser.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_filesys.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_file_tree.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_fs_nix.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_fs_win.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_get_options.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_hash_include.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_if_control.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_integer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_integer_constant.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_io.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_line_despatch.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_options.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_parameter_list.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_parsed_line.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_canonical.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_citable.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_help.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_syserr.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_version.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_argument_list.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_reference.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_symbol.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_parameter_substitution.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_expansion.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_chew.cpp$(ObjectSuffix): ../../../../src/chew.cpp $(IntermediateDirectory)/src_chew.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/chew.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_chew.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_chew.cpp$(DependSuffix): ../../../../src/chew.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_chew.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_chew.cpp$(DependSuffix) -MM "../../../../src/chew.cpp"

$(IntermediateDirectory)/src_chew.cpp$(PreprocessSuffix): ../../../../src/chew.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_chew.cpp$(PreprocessSuffix) "../../../../src/chew.cpp"

$(IntermediateDirectory)/src_contradiction.cpp$(ObjectSuffix): ../../../../src/contradiction.cpp $(IntermediateDirectory)/src_contradiction.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/contradiction.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_contradiction.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_contradiction.cpp$(DependSuffix): ../../../../src/contradiction.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_contradiction.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_contradiction.cpp$(DependSuffix) -MM "../../../../src/contradiction.cpp"

$(IntermediateDirectory)/src_contradiction.cpp$(PreprocessSuffix): ../../../../src/contradiction.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_contradiction.cpp$(PreprocessSuffix) "../../../../src/contradiction.cpp"

$(IntermediateDirectory)/src_dataset.cpp$(ObjectSuffix): ../../../../src/dataset.cpp $(IntermediateDirectory)/src_dataset.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/dataset.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dataset.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_dataset.cpp$(DependSuffix): ../../../../src/dataset.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_dataset.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dataset.cpp$(DependSuffix) -MM "../../../../src/dataset.cpp"

$(IntermediateDirectory)/src_dataset.cpp$(PreprocessSuffix): ../../../../src/dataset.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_dataset.cpp$(PreprocessSuffix) "../../../../src/dataset.cpp"

$(IntermediateDirectory)/src_diagnostic.cpp$(ObjectSuffix): ../../../../src/diagnostic.cpp $(IntermediateDirectory)/src_diagnostic.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/diagnostic.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_diagnostic.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_diagnostic.cpp$(DependSuffix): ../../../../src/diagnostic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_diagnostic.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_diagnostic.cpp$(DependSuffix) -MM "../../../../src/diagnostic.cpp"

$(IntermediateDirectory)/src_diagnostic.cpp$(PreprocessSuffix): ../../../../src/diagnostic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_diagnostic.cpp$(PreprocessSuffix) "../../../../src/diagnostic.cpp"

$(IntermediateDirectory)/src_directive.cpp$(ObjectSuffix): ../../../../src/directive.cpp $(IntermediateDirectory)/src_directive.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/directive.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_directive.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_directive.cpp$(DependSuffix): ../../../../src/directive.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_directive.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_directive.cpp$(DependSuffix) -MM "../../../../src/directive.cpp"

$(IntermediateDirectory)/src_directive.cpp$(PreprocessSuffix): ../../../../src/directive.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_directive.cpp$(PreprocessSuffix) "../../../../src/directive.cpp"

$(IntermediateDirectory)/src_expression_parser.cpp$(ObjectSuffix): ../../../../src/expression_parser.cpp $(IntermediateDirectory)/src_expression_parser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/expression_parser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_expression_parser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_expression_parser.cpp$(DependSuffix): ../../../../src/expression_parser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_expression_parser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_expression_parser.cpp$(DependSuffix) -MM "../../../../src/expression_parser.cpp"

$(IntermediateDirectory)/src_expression_parser.cpp$(PreprocessSuffix): ../../../../src/expression_parser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_expression_parser.cpp$(PreprocessSuffix) "../../../../src/expression_parser.cpp"

$(IntermediateDirectory)/src_filesys.cpp$(ObjectSuffix): ../../../../src/filesys.cpp $(IntermediateDirectory)/src_filesys.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/filesys.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_filesys.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_filesys.cpp$(DependSuffix): ../../../../src/filesys.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_filesys.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_filesys.cpp$(DependSuffix) -MM "../../../../src/filesys.cpp"

$(IntermediateDirectory)/src_filesys.cpp$(PreprocessSuffix): ../../../../src/filesys.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_filesys.cpp$(PreprocessSuffix) "../../../../src/filesys.cpp"

$(IntermediateDirectory)/src_file_tree.cpp$(ObjectSuffix): ../../../../src/file_tree.cpp $(IntermediateDirectory)/src_file_tree.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/file_tree.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_file_tree.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_file_tree.cpp$(DependSuffix): ../../../../src/file_tree.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_file_tree.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_file_tree.cpp$(DependSuffix) -MM "../../../../src/file_tree.cpp"

$(IntermediateDirectory)/src_file_tree.cpp$(PreprocessSuffix): ../../../../src/file_tree.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_file_tree.cpp$(PreprocessSuffix) "../../../../src/file_tree.cpp"

$(IntermediateDirectory)/src_fs_nix.cpp$(ObjectSuffix): ../../../../src/fs_nix.cpp $(IntermediateDirectory)/src_fs_nix.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/fs_nix.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fs_nix.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fs_nix.cpp$(DependSuffix): ../../../../src/fs_nix.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_fs_nix.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fs_nix.cpp$(DependSuffix) -MM "../../../../src/fs_nix.cpp"

$(IntermediateDirectory)/src_fs_nix.cpp$(PreprocessSuffix): ../../../../src/fs_nix.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fs_nix.cpp$(PreprocessSuffix) "../../../../src/fs_nix.cpp"

$(IntermediateDirectory)/src_fs_win.cpp$(ObjectSuffix): ../../../../src/fs_win.cpp $(IntermediateDirectory)/src_fs_win.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/fs_win.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fs_win.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fs_win.cpp$(DependSuffix): ../../../../src/fs_win.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_fs_win.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fs_win.cpp$(DependSuffix) -MM "../../../../src/fs_win.cpp"

$(IntermediateDirectory)/src_fs_win.cpp$(PreprocessSuffix): ../../../../src/fs_win.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fs_win.cpp$(PreprocessSuffix) "../../../../src/fs_win.cpp"

$(IntermediateDirectory)/src_get_options.cpp$(ObjectSuffix): ../../../../src/get_options.cpp $(IntermediateDirectory)/src_get_options.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/get_options.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_get_options.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_get_options.cpp$(DependSuffix): ../../../../src/get_options.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_get_options.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_get_options.cpp$(DependSuffix) -MM "../../../../src/get_options.cpp"

$(IntermediateDirectory)/src_get_options.cpp$(PreprocessSuffix): ../../../../src/get_options.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_get_options.cpp$(PreprocessSuffix) "../../../../src/get_options.cpp"

$(IntermediateDirectory)/src_hash_include.cpp$(ObjectSuffix): ../../../../src/hash_include.cpp $(IntermediateDirectory)/src_hash_include.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/hash_include.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_hash_include.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_hash_include.cpp$(DependSuffix): ../../../../src/hash_include.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_hash_include.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_hash_include.cpp$(DependSuffix) -MM "../../../../src/hash_include.cpp"

$(IntermediateDirectory)/src_hash_include.cpp$(PreprocessSuffix): ../../../../src/hash_include.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_hash_include.cpp$(PreprocessSuffix) "../../../../src/hash_include.cpp"

$(IntermediateDirectory)/src_if_control.cpp$(ObjectSuffix): ../../../../src/if_control.cpp $(IntermediateDirectory)/src_if_control.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/if_control.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_if_control.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_if_control.cpp$(DependSuffix): ../../../../src/if_control.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_if_control.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_if_control.cpp$(DependSuffix) -MM "../../../../src/if_control.cpp"

$(IntermediateDirectory)/src_if_control.cpp$(PreprocessSuffix): ../../../../src/if_control.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_if_control.cpp$(PreprocessSuffix) "../../../../src/if_control.cpp"

$(IntermediateDirectory)/src_integer.cpp$(ObjectSuffix): ../../../../src/integer.cpp $(IntermediateDirectory)/src_integer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/integer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_integer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_integer.cpp$(DependSuffix): ../../../../src/integer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_integer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_integer.cpp$(DependSuffix) -MM "../../../../src/integer.cpp"

$(IntermediateDirectory)/src_integer.cpp$(PreprocessSuffix): ../../../../src/integer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_integer.cpp$(PreprocessSuffix) "../../../../src/integer.cpp"

$(IntermediateDirectory)/src_integer_constant.cpp$(ObjectSuffix): ../../../../src/integer_constant.cpp $(IntermediateDirectory)/src_integer_constant.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/integer_constant.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_integer_constant.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_integer_constant.cpp$(DependSuffix): ../../../../src/integer_constant.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_integer_constant.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_integer_constant.cpp$(DependSuffix) -MM "../../../../src/integer_constant.cpp"

$(IntermediateDirectory)/src_integer_constant.cpp$(PreprocessSuffix): ../../../../src/integer_constant.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_integer_constant.cpp$(PreprocessSuffix) "../../../../src/integer_constant.cpp"

$(IntermediateDirectory)/src_io.cpp$(ObjectSuffix): ../../../../src/io.cpp $(IntermediateDirectory)/src_io.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/io.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_io.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_io.cpp$(DependSuffix): ../../../../src/io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_io.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_io.cpp$(DependSuffix) -MM "../../../../src/io.cpp"

$(IntermediateDirectory)/src_io.cpp$(PreprocessSuffix): ../../../../src/io.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_io.cpp$(PreprocessSuffix) "../../../../src/io.cpp"

$(IntermediateDirectory)/src_line_despatch.cpp$(ObjectSuffix): ../../../../src/line_despatch.cpp $(IntermediateDirectory)/src_line_despatch.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/line_despatch.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_line_despatch.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_line_despatch.cpp$(DependSuffix): ../../../../src/line_despatch.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_line_despatch.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_line_despatch.cpp$(DependSuffix) -MM "../../../../src/line_despatch.cpp"

$(IntermediateDirectory)/src_line_despatch.cpp$(PreprocessSuffix): ../../../../src/line_despatch.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_line_despatch.cpp$(PreprocessSuffix) "../../../../src/line_despatch.cpp"

$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): ../../../../src/main.cpp $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(DependSuffix): ../../../../src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.cpp$(DependSuffix) -MM "../../../../src/main.cpp"

$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): ../../../../src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) "../../../../src/main.cpp"

$(IntermediateDirectory)/src_options.cpp$(ObjectSuffix): ../../../../src/options.cpp $(IntermediateDirectory)/src_options.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/options.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_options.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_options.cpp$(DependSuffix): ../../../../src/options.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_options.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_options.cpp$(DependSuffix) -MM "../../../../src/options.cpp"

$(IntermediateDirectory)/src_options.cpp$(PreprocessSuffix): ../../../../src/options.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_options.cpp$(PreprocessSuffix) "../../../../src/options.cpp"

$(IntermediateDirectory)/src_parameter_list.cpp$(ObjectSuffix): ../../../../src/parameter_list.cpp $(IntermediateDirectory)/src_parameter_list.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/parameter_list.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_parameter_list.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_parameter_list.cpp$(DependSuffix): ../../../../src/parameter_list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_parameter_list.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_parameter_list.cpp$(DependSuffix) -MM "../../../../src/parameter_list.cpp"

$(IntermediateDirectory)/src_parameter_list.cpp$(PreprocessSuffix): ../../../../src/parameter_list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_parameter_list.cpp$(PreprocessSuffix) "../../../../src/parameter_list.cpp"

$(IntermediateDirectory)/src_parsed_line.cpp$(ObjectSuffix): ../../../../src/parsed_line.cpp $(IntermediateDirectory)/src_parsed_line.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/parsed_line.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_parsed_line.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_parsed_line.cpp$(DependSuffix): ../../../../src/parsed_line.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_parsed_line.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_parsed_line.cpp$(DependSuffix) -MM "../../../../src/parsed_line.cpp"

$(IntermediateDirectory)/src_parsed_line.cpp$(PreprocessSuffix): ../../../../src/parsed_line.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_parsed_line.cpp$(PreprocessSuffix) "../../../../src/parsed_line.cpp"

$(IntermediateDirectory)/src_canonical.cpp$(ObjectSuffix): ../../../../src/canonical.cpp $(IntermediateDirectory)/src_canonical.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/canonical.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_canonical.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_canonical.cpp$(DependSuffix): ../../../../src/canonical.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_canonical.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_canonical.cpp$(DependSuffix) -MM "../../../../src/canonical.cpp"

$(IntermediateDirectory)/src_canonical.cpp$(PreprocessSuffix): ../../../../src/canonical.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_canonical.cpp$(PreprocessSuffix) "../../../../src/canonical.cpp"

$(IntermediateDirectory)/src_citable.cpp$(ObjectSuffix): ../../../../src/citable.cpp $(IntermediateDirectory)/src_citable.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/citable.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_citable.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_citable.cpp$(DependSuffix): ../../../../src/citable.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_citable.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_citable.cpp$(DependSuffix) -MM "../../../../src/citable.cpp"

$(IntermediateDirectory)/src_citable.cpp$(PreprocessSuffix): ../../../../src/citable.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_citable.cpp$(PreprocessSuffix) "../../../../src/citable.cpp"

$(IntermediateDirectory)/src_help.cpp$(ObjectSuffix): ../../../../src/help.cpp $(IntermediateDirectory)/src_help.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/help.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_help.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_help.cpp$(DependSuffix): ../../../../src/help.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_help.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_help.cpp$(DependSuffix) -MM "../../../../src/help.cpp"

$(IntermediateDirectory)/src_help.cpp$(PreprocessSuffix): ../../../../src/help.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_help.cpp$(PreprocessSuffix) "../../../../src/help.cpp"

$(IntermediateDirectory)/src_syserr.cpp$(ObjectSuffix): ../../../../src/syserr.cpp $(IntermediateDirectory)/src_syserr.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/syserr.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_syserr.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_syserr.cpp$(DependSuffix): ../../../../src/syserr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_syserr.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_syserr.cpp$(DependSuffix) -MM "../../../../src/syserr.cpp"

$(IntermediateDirectory)/src_syserr.cpp$(PreprocessSuffix): ../../../../src/syserr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_syserr.cpp$(PreprocessSuffix) "../../../../src/syserr.cpp"

$(IntermediateDirectory)/src_version.cpp$(ObjectSuffix): ../../../../src/version.cpp $(IntermediateDirectory)/src_version.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/version.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_version.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_version.cpp$(DependSuffix): ../../../../src/version.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_version.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_version.cpp$(DependSuffix) -MM "../../../../src/version.cpp"

$(IntermediateDirectory)/src_version.cpp$(PreprocessSuffix): ../../../../src/version.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_version.cpp$(PreprocessSuffix) "../../../../src/version.cpp"

$(IntermediateDirectory)/src_argument_list.cpp$(ObjectSuffix): ../../../../src/argument_list.cpp $(IntermediateDirectory)/src_argument_list.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/argument_list.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_argument_list.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_argument_list.cpp$(DependSuffix): ../../../../src/argument_list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_argument_list.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_argument_list.cpp$(DependSuffix) -MM "../../../../src/argument_list.cpp"

$(IntermediateDirectory)/src_argument_list.cpp$(PreprocessSuffix): ../../../../src/argument_list.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_argument_list.cpp$(PreprocessSuffix) "../../../../src/argument_list.cpp"

$(IntermediateDirectory)/src_reference.cpp$(ObjectSuffix): ../../../../src/reference.cpp $(IntermediateDirectory)/src_reference.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/reference.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_reference.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_reference.cpp$(DependSuffix): ../../../../src/reference.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_reference.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_reference.cpp$(DependSuffix) -MM "../../../../src/reference.cpp"

$(IntermediateDirectory)/src_reference.cpp$(PreprocessSuffix): ../../../../src/reference.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_reference.cpp$(PreprocessSuffix) "../../../../src/reference.cpp"

$(IntermediateDirectory)/src_symbol.cpp$(ObjectSuffix): ../../../../src/symbol.cpp $(IntermediateDirectory)/src_symbol.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/symbol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_symbol.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_symbol.cpp$(DependSuffix): ../../../../src/symbol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_symbol.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_symbol.cpp$(DependSuffix) -MM "../../../../src/symbol.cpp"

$(IntermediateDirectory)/src_symbol.cpp$(PreprocessSuffix): ../../../../src/symbol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_symbol.cpp$(PreprocessSuffix) "../../../../src/symbol.cpp"

$(IntermediateDirectory)/src_parameter_substitution.cpp$(ObjectSuffix): ../../../../src/parameter_substitution.cpp $(IntermediateDirectory)/src_parameter_substitution.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/parameter_substitution.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_parameter_substitution.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_parameter_substitution.cpp$(DependSuffix): ../../../../src/parameter_substitution.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_parameter_substitution.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_parameter_substitution.cpp$(DependSuffix) -MM "../../../../src/parameter_substitution.cpp"

$(IntermediateDirectory)/src_parameter_substitution.cpp$(PreprocessSuffix): ../../../../src/parameter_substitution.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_parameter_substitution.cpp$(PreprocessSuffix) "../../../../src/parameter_substitution.cpp"

$(IntermediateDirectory)/src_expansion.cpp$(ObjectSuffix): ../../../../src/expansion.cpp $(IntermediateDirectory)/src_expansion.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/imk/develop/coan-5.2.1/src/expansion.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_expansion.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_expansion.cpp$(DependSuffix): ../../../../src/expansion.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_expansion.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_expansion.cpp$(DependSuffix) -MM "../../../../src/expansion.cpp"

$(IntermediateDirectory)/src_expansion.cpp$(PreprocessSuffix): ../../../../src/expansion.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_expansion.cpp$(PreprocessSuffix) "../../../../src/expansion.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_chew.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_chew.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_chew.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_contradiction.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_contradiction.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_contradiction.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_dataset.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_dataset.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_dataset.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_diagnostic.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_diagnostic.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_diagnostic.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_directive.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_directive.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_directive.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_expression_parser.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_expression_parser.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_expression_parser.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_filesys.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_filesys.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_filesys.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_file_tree.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_file_tree.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_file_tree.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_nix.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_nix.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_nix.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_win.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_win.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_fs_win.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_get_options.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_get_options.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_get_options.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_hash_include.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_hash_include.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_hash_include.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_if_control.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_if_control.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_if_control.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_integer.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_integer.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_integer.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_integer_constant.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_integer_constant.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_integer_constant.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_io.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_io.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_io.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_line_despatch.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_line_despatch.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_line_despatch.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_main.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_options.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_options.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_options.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_list.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_list.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_list.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_parsed_line.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_parsed_line.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_parsed_line.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_canonical.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_canonical.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_canonical.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_citable.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_citable.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_citable.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_help.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_help.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_help.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_syserr.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_syserr.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_syserr.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_version.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_version.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_version.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_argument_list.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_argument_list.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_argument_list.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_reference.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_reference.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_reference.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_symbol.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_symbol.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_symbol.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_substitution.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_substitution.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_parameter_substitution.cpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_expansion.cpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_expansion.cpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_expansion.cpp$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) ".build-debug/coan"


