
########## Tcl recorder starts at 12/23/17 22:54:19 ##########

set version "2.0"
set proj_dir "Z:/Saturn/HW/CPLD"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 22:54:19 ###########


########## Tcl recorder starts at 12/23/17 23:03:49 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:03:49 ###########


########## Tcl recorder starts at 12/23/17 23:04:23 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv  -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -blifopt  saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" saturn.bl2 -sweep -mergefb -err automake.err -o saturn.bl3  @saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -diofft  saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" saturn.bl3 -pla -family AMDMACH -idev van -o saturn.tt2 -oxrf saturn.xrf -err automake.err  @saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj saturn -dir $proj_dir -log saturn.log -tti saturn.tt2 -tto saturn.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -prefit  saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp saturn.tt3 -out saturn.tt4 -err automake.err -log saturn.log -percent saturn.tte -mod Address  @saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" saturn.tte -o saturn.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci saturn.lct -out saturn.vct -log saturn.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rsp w} rspFile] {
	puts stderr "Cannot create response file saturn.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"saturn.tt4\" -vci \"saturn.vct\" -log \"saturn.log\" -eqn \"saturn.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"address_decoding.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@saturn.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci saturn.vco -out saturn.lco -log saturn.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj saturn -if saturn.jed -j2s -log saturn.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:04:23 ###########


########## Tcl recorder starts at 12/23/17 23:04:33 ##########

# Commands to make the Process: 
# Optimization Constraint
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci saturn.lct -touch saturn.imp
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/optedit\" @opt_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:04:33 ###########


########## Tcl recorder starts at 12/23/17 23:05:27 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:05:27 ###########


########## Tcl recorder starts at 12/23/17 23:05:36 ##########

# Commands to make the Process: 
# Optimization Constraint
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address_Decoding.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address_Decoding.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci saturn.lct -touch saturn.imp
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/optedit\" @opt_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:05:36 ###########


########## Tcl recorder starts at 12/23/17 23:05:55 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:05:55 ###########


########## Tcl recorder starts at 12/23/17 23:08:07 ##########

# Commands to make the Process: 
# Optimization Constraint
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address_Decoding.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address_Decoding.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci saturn.lct -touch saturn.imp
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/optedit\" @opt_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:08:07 ###########


########## Tcl recorder starts at 12/23/17 23:08:25 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -blifopt  saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" saturn.bl2 -sweep -mergefb -err automake.err -o saturn.bl3  @saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -diofft  saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" saturn.bl3 -pla -family AMDMACH -idev van -o saturn.tt2 -oxrf saturn.xrf -err automake.err  @saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj saturn -dir $proj_dir -log saturn.log -tti saturn.tt2 -tto saturn.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -prefit  saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp saturn.tt3 -out saturn.tt4 -err automake.err -log saturn.log -percent saturn.tte -mod Address_Decoding  @saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src saturn.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"saturn.lct\" -touch \"saturn.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:08:25 ###########


########## Tcl recorder starts at 12/23/17 23:08:52 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv  -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" saturn.tte -o saturn.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci saturn.lct -out saturn.vct -log saturn.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rsp w} rspFile] {
	puts stderr "Cannot create response file saturn.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"saturn.tt4\" -vci \"saturn.vct\" -log \"saturn.log\" -eqn \"saturn.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"address_decoding.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@saturn.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci saturn.vco -out saturn.lco -log saturn.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj saturn -if saturn.jed -j2s -log saturn.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:08:52 ###########


########## Tcl recorder starts at 12/23/17 23:09:28 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:09:28 ###########


########## Tcl recorder starts at 12/23/17 23:09:39 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv  -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address_Decoding.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address_Decoding.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -blifopt  saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" saturn.bl2 -sweep -mergefb -err automake.err -o saturn.bl3  @saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -diofft  saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" saturn.bl3 -pla -family AMDMACH -idev van -o saturn.tt2 -oxrf saturn.xrf -err automake.err  @saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj saturn -dir $proj_dir -log saturn.log -tti saturn.tt2 -tto saturn.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -prefit  saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp saturn.tt3 -out saturn.tt4 -err automake.err -log saturn.log -percent saturn.tte -mod Address_Decoding  @saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" saturn.tte -o saturn.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci saturn.lct -out saturn.vct -log saturn.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rsp w} rspFile] {
	puts stderr "Cannot create response file saturn.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"saturn.tt4\" -vci \"saturn.vct\" -log \"saturn.log\" -eqn \"saturn.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"address_decoding.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@saturn.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci saturn.vco -out saturn.lco -log saturn.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj saturn -if saturn.jed -j2s -log saturn.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:09:39 ###########


########## Tcl recorder starts at 12/23/17 23:09:59 ##########

# Commands to make the Process: 
# Post-Fit Pinouts
# - none -
# Application to view the Process: 
# Post-Fit Pinouts
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src saturn.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -postfit -lci saturn.lco
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:09:59 ###########


########## Tcl recorder starts at 12/23/17 23:10:28 ##########

# Commands to make the Process: 
# Timing Analysis
# - none -
# Application to view the Process: 
# Timing Analysis
if [runCmd "\"$cpld_bin/timing\" -prj \"saturn\" -tti \"saturn.tt4\" -gui -dir \"$proj_dir\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:10:28 ###########


########## Tcl recorder starts at 12/23/17 23:10:58 ##########

# Commands to make the Process: 
# Generate Timing Simulation Files
if [catch {open saturn.rss w} rspFile] {
	puts stderr "Cannot create response file saturn.rss: $rspFile"
} else {
	puts $rspFile "-i \"saturn.tte\" -lib \"$install_dir/ispcpld/dat/mach4a\" -strategy top -sdfmdl \"$install_dir/ispcpld/dat/sdf.mdl\" -simmdl \"$install_dir/ispcpld/dat/sim.mdl\" -pla \"saturn.tte\" -lci \"saturn.lct\" -prj \"saturn\" -dir \"$proj_dir\" -err automake.err -log \"saturn.nrp\" -exf \"Address_Decoding.exf\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/sdf\" \"@saturn.rss\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rss

########## Tcl recorder end at 12/23/17 23:10:58 ###########


########## Tcl recorder starts at 12/23/17 23:11:17 ##########

# Commands to make the Process: 
# Generate Board-level Stamp Model
if [runCmd "\"$cpld_bin/timer\" -inp \"saturn.tte\" -lci \"saturn.lct\" -stamp \"saturn.trp\" -exf \"Address_Decoding.exf\" -lco \"saturn.lco\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/stamppar\" -i saturn.trp "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:11:17 ###########


########## Tcl recorder starts at 12/23/17 23:11:37 ##########

# Commands to make the Process: 
# Check Syntax
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -syn  -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:11:37 ###########


########## Tcl recorder starts at 12/23/17 23:11:47 ##########

# Commands to make the Process: 
# Compile Test Vectors
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv -sim Saturn -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:11:47 ###########


########## Tcl recorder starts at 12/23/17 23:11:50 ##########

# Commands to make the Process: 
# Compiler Listing
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv -list  -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:11:50 ###########


########## Tcl recorder starts at 12/23/17 23:12:06 ##########

# Commands to make the Process: 
# Functional Simulation
# - none -
# Application to view the Process: 
# Functional Simulation
if [catch {open simcp._sp w} rspFile] {
	puts stderr "Cannot create response file simcp._sp: $rspFile"
} else {
	puts $rspFile "simcp.pre6 -ini simcpls.ini -unit simcp.pre6
-cfg machisc.fdk address_decoding.lts -map Address_Decoding.lsi
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/simcp\" @simcp._sp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:12:06 ###########


########## Tcl recorder starts at 12/23/17 23:12:33 ##########

# Commands to make the Process: 
# Timing Simulation
if [runCmd "\"$cpld_bin/blif2eqn\" Address_Decoding.bl0 -o Address_Decoding.lsi -template \"$install_dir/ispcpld/plsi/latsim/plsi.tft\" -testfix -bus rebuild -prj saturn -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rsp w} rspFile] {
	puts stderr "Cannot create response file saturn.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"saturn.tt4\" -vci \"saturn.vct\" -log \"saturn.log\" -eqn \"saturn.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"address_decoding.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@saturn.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci saturn.vco -out saturn.lco -log saturn.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rss w} rspFile] {
	puts stderr "Cannot create response file saturn.rss: $rspFile"
} else {
	puts $rspFile "-i \"saturn.tte\" -lib \"$install_dir/ispcpld/dat/mach4a\" -strategy top -sdfmdl \"$install_dir/ispcpld/dat/sdf.mdl\" -simmdl \"$install_dir/ispcpld/dat/sim.mdl\" -pla \"saturn.tte\" -lci \"saturn.lct\" -prj \"saturn\" -dir \"$proj_dir\" -err automake.err -log \"saturn.nrp\" -exf \"Address_Decoding.exf\"  -netlist edif
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/sdf\" \"@saturn.rss\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rss
# Application to view the Process: 
# Timing Simulation
if [catch {open simcp._sp w} rspFile] {
	puts stderr "Cannot create response file simcp._sp: $rspFile"
} else {
	puts $rspFile "simcp.post5 -ini simcpls.ini -all simcp.post5
-cfg machisc.fdk address_decoding.lts -map Address_Decoding.lsi
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/simcp\" @simcp._sp"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/23/17 23:12:33 ###########


########## Tcl recorder starts at 12/24/17 11:09:01 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -ojhd only -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/24/17 11:09:01 ###########


########## Tcl recorder starts at 12/24/17 11:09:09 ##########

# Commands to make the Process: 
# Check Syntax
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -syn  -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/24/17 11:09:09 ###########


########## Tcl recorder starts at 12/24/17 11:09:15 ##########

# Commands to make the Process: 
# Compile Logic
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -mod Address_Decoding -ojhd compile -ret -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/24/17 11:09:15 ###########


########## Tcl recorder starts at 12/24/17 11:09:25 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/ahdl2blf\" address_decoding.abl -vec -ovec address_decoding.tmv  -def _AMDMACH_ _MACH_ _MACH2_ _MACH4_ _LATTICE_  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" Address_Decoding.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"Address_Decoding.bl1\" -o \"saturn.bl2\" -omod \"saturn\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj saturn -lci saturn.lct -log saturn.imp -err automake.err -tti saturn.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -blifopt  saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" saturn.bl2 -sweep -mergefb -err automake.err -o saturn.bl3  @saturn.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -diofft  saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" saturn.bl3 -pla -family AMDMACH -idev van -o saturn.tt2 -oxrf saturn.xrf -err automake.err  @saturn.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj saturn -dir $proj_dir -log saturn.log -tti saturn.tt2 -tto saturn.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci saturn.lct -dev mach4a -prefit  saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp saturn.tt3 -out saturn.tt4 -err automake.err -log saturn.log -percent saturn.tte -mod Address_Decoding  @saturn.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" saturn.tte -o saturn.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci saturn.lct -out saturn.vct -log saturn.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open saturn.rsp w} rspFile] {
	puts stderr "Cannot create response file saturn.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"saturn.tt4\" -vci \"saturn.vct\" -log \"saturn.log\" -eqn \"saturn.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"address_decoding.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@saturn.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete saturn.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci saturn.vco -out saturn.lco -log saturn.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj saturn -if saturn.jed -j2s -log saturn.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/24/17 11:09:25 ###########


########## Tcl recorder starts at 12/24/17 11:09:50 ##########

# Commands to make the Process: 
# Post-Fit Pinouts
# - none -
# Application to view the Process: 
# Post-Fit Pinouts
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src saturn.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -postfit -lci saturn.lco
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 12/24/17 11:09:50 ###########

