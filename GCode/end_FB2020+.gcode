M140 S0 T0; set bed temperature to 0
M104 S0 T0; set extruder temperature to 0
M107 ; disable fan
G91 ;Relative positioning
G1 E-1 F300  ;retract the filament a bit before lifting the nozzle to release some of the pressure
G1 E-5 F4800; Retract
G90 ; Absolute positioning
G1 Z275; Bed to bottom of printer
G28 X Y F4800; home X & Y axis
M84; disable all stepper motors
M117 Work Complete!
