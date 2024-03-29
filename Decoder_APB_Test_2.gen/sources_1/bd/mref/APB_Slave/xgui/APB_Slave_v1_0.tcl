# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WRITE" -parent ${Page_0}


}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.READ { PARAM_VALUE.READ } {
	# Procedure called to update READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ { PARAM_VALUE.READ } {
	# Procedure called to validate READ
	return true
}

proc update_PARAM_VALUE.WRITE { PARAM_VALUE.WRITE } {
	# Procedure called to update WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE { PARAM_VALUE.WRITE } {
	# Procedure called to validate WRITE
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.WRITE { MODELPARAM_VALUE.WRITE PARAM_VALUE.WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE}] ${MODELPARAM_VALUE.WRITE}
}

proc update_MODELPARAM_VALUE.READ { MODELPARAM_VALUE.READ PARAM_VALUE.READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ}] ${MODELPARAM_VALUE.READ}
}

