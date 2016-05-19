G21 ; mm
G90; Absolute Pos
M107; Fan off
G28; home all
G92 E0 ;Zero Extruder
G1 Z0.3 ;Move Z to 0.3mm to avoid scraping bed
G1 X100 Y5 F4000 ;Move to half way along front edge of the bed
G1 Z0.05 ;Move Nozzle close to bed
G1 E10 F90 ; Extrude 10mm 
G1 X20 F120000; move to X20 as fast as firmware permits
G1 Z2 ; Lift nozzle to 2mm ready to start main sequence
G92 E0 ;Zero Extruder
