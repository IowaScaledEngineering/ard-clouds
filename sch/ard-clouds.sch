v 20130925 2
T 67000 40900 9 10 1 0 0 0 1
Cloud Simulator Arduino Shield
T 66800 40600 9 10 1 0 0 0 1
ard-clouds.sch
T 67000 40300 9 10 1 0 0 0 1
1
T 68500 40300 9 10 1 0 0 0 1
1
T 70800 40300 9 10 1 0 0 0 1
Michael Petersen
T 70800 40600 9 10 1 0 0 0 1
$Revision$
C 40000 40000 0 0 0 title-bordered-D.sym
C 45800 46700 1 0 0 hole-1.sym
{
T 45800 46700 5 10 0 1 0 0 1
device=HOLE
T 46000 47300 5 10 1 1 0 4 1
refdes=H1
T 45800 46700 5 10 0 0 0 0 1
footprint=ARDUINO_SHIELD_HOLE
}
C 46300 46700 1 0 0 hole-1.sym
{
T 46300 46700 5 10 0 1 0 0 1
device=HOLE
T 46500 47300 5 10 1 1 0 4 1
refdes=H2
T 46300 46700 5 10 0 0 0 0 1
footprint=ARDUINO_SHIELD_HOLE
}
C 46800 46700 1 0 0 hole-1.sym
{
T 46800 46700 5 10 0 1 0 0 1
device=HOLE
T 47000 47300 5 10 1 1 0 4 1
refdes=H3
T 46800 46700 5 10 0 0 0 0 1
footprint=ARDUINO_SHIELD_HOLE
}
C 47300 46700 1 0 0 hole-1.sym
{
T 47300 46700 5 10 0 1 0 0 1
device=HOLE
T 47500 47300 5 10 1 1 0 4 1
refdes=H4
T 47300 46700 5 10 0 0 0 0 1
footprint=ARDUINO_SHIELD_HOLE
}
C 43300 47300 1 0 0 arduino-left.sym
{
T 43300 48900 5 10 0 1 0 0 1
device=AVRPROG
T 45300 52100 5 10 1 1 180 0 1
refdes=J1
T 43300 47300 5 10 0 0 0 0 1
footprint=ARDUINO_LEFT
}
C 49400 49500 1 0 1 arduino-right.sym
{
T 49400 51100 5 10 0 1 0 6 1
device=AVRPROG
T 48600 52800 5 10 1 1 0 6 1
refdes=J2
T 49400 49500 5 10 0 0 0 6 1
footprint=ARDUINO_RIGHT
}
C 46900 52200 1 0 1 gnd-1.sym
N 46800 52500 46800 53200 4
N 45700 52800 46800 52800 4
N 46800 53200 45700 53200 4
N 45700 52400 46500 52400 4
N 46500 51800 46500 52400 4
N 46500 52000 47300 52000 4
C 46300 50900 1 270 1 capacitor-1.sym
{
T 47000 51100 5 10 0 1 90 2 1
device=CAPACITOR
T 46600 51200 5 10 1 1 180 6 1
refdes=C1
T 47200 51100 5 10 0 0 90 2 1
symversion=0.1
T 46000 51700 5 10 1 1 180 6 1
value=10uF
T 46300 50900 5 10 0 0 180 6 1
footprint=0805
T 46100 51200 5 10 1 1 180 6 1
description=25V
}
C 46600 50600 1 0 1 gnd-1.sym
C 52400 48500 1 90 0 led-3.sym
{
T 52400 48500 5 10 0 0 0 0 1
footprint=0805
T 52650 48450 5 10 1 1 90 0 1
device=BLUE LED
T 51850 48950 5 10 1 1 90 0 1
refdes=D1
}
N 52200 49600 52200 49400 4
C 52300 47900 1 0 1 gnd-1.sym
N 52200 48200 52200 48500 4
C 60500 53400 1 90 1 res-pack4-1.sym
{
T 60500 53400 5 10 0 0 0 6 1
slot=4
T 60600 52500 5 10 1 1 0 1 1
value=10k
T 60600 52700 5 10 1 1 0 1 1
refdes=R3
T 60600 52300 5 10 1 1 0 1 1
footprint=RPACK4-1206
}
C 52300 50900 1 90 1 res-pack2-1.sym
{
T 52405 50200 5 10 1 1 0 1 1
refdes=R1
T 52400 50000 5 10 1 1 0 1 1
value=1k
T 52400 49800 5 10 1 1 0 1 1
footprint=RPACK2-0606
T 52300 50900 5 10 0 0 0 0 1
slot=1
}
C 47100 52200 1 0 0 12V-plus-1.sym
N 47300 52200 47300 52000 4
N 49000 52100 50000 52100 4
N 49000 53600 50000 53600 4
N 49000 54000 52700 54000 4
N 49000 51700 52700 51700 4
C 55100 48500 1 90 0 led-3.sym
{
T 55100 48500 5 10 0 0 0 0 1
footprint=0805
T 55350 48450 5 10 1 1 90 0 1
device=BLUE LED
T 54550 48950 5 10 1 1 90 0 1
refdes=D2
}
N 54900 49600 54900 49400 4
C 55000 47900 1 0 1 gnd-1.sym
N 54900 48200 54900 48500 4
C 55000 50900 1 90 1 res-pack2-1.sym
{
T 55000 50900 5 10 0 0 0 0 1
slot=2
T 55105 50200 5 10 1 1 0 1 1
refdes=R1
T 55100 50000 5 10 1 1 0 1 1
value=1k
T 55100 49800 5 10 1 1 0 1 1
footprint=RPACK2-0606
}
C 57300 53400 1 0 0 res-pack2-1.sym
{
T 57300 53400 5 10 0 0 90 6 1
slot=2
T 58095 53700 5 10 1 1 0 6 1
refdes=R2
T 58300 53700 5 10 1 1 0 0 1
value=33k
T 58200 53300 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
C 59400 53100 1 90 1 capacitor-1.sym
{
T 58700 52900 5 10 0 1 270 2 1
device=CAPACITOR
T 59100 52800 5 10 1 1 0 6 1
refdes=C2
T 58500 52900 5 10 0 0 270 2 1
symversion=0.1
T 59300 52500 5 10 1 1 0 2 1
value=22uF
T 59400 53100 5 10 0 0 0 6 1
footprint=0805
T 59300 52800 5 10 1 1 0 0 1
description=25V
}
N 58600 53500 60700 53500 4
N 59200 53500 59200 53100 4
C 60700 53300 1 0 0 lm358-1.sym
{
T 61375 53900 5 10 0 0 0 0 1
device=LM358
T 61400 54650 5 10 0 0 0 0 1
footprint=SO8
T 61000 54200 5 10 1 1 0 6 1
refdes=U1
T 60700 53300 5 10 0 0 0 0 1
slot=1
}
C 61300 52800 1 0 1 gnd-1.sym
C 61000 54300 1 0 0 12V-plus-1.sym
N 61200 54300 61200 54100 4
N 61200 53100 61200 53300 4
N 60400 53000 60400 55000 4
N 60400 53900 60700 53900 4
N 60400 55000 61700 55000 4
C 62700 54900 1 0 0 res-pack2-1.sym
{
T 62700 54900 5 10 0 0 90 6 1
slot=2
T 63495 55200 5 10 1 1 0 6 1
refdes=R4
T 63700 55200 5 10 1 1 0 0 1
value=1k
T 63600 54800 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
N 63100 55000 62600 55000 4
C 60500 51800 1 0 1 gnd-1.sym
C 59300 51900 1 0 1 gnd-1.sym
C 62900 53600 1 0 0 res-pack2-1.sym
{
T 62900 53600 5 10 0 0 90 6 1
slot=2
T 63695 53900 5 10 1 1 0 6 1
refdes=R5
T 63900 53900 5 10 1 1 0 0 1
value=1k
T 63800 53500 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
N 63300 53700 61700 53700 4
C 65800 53200 1 0 0 npn-2.sym
{
T 66400 53700 5 10 0 0 180 8 1
device=NPN_TRANSISTOR
T 66100 54100 5 10 1 1 0 6 1
refdes=Q1
T 66100 53300 5 10 1 1 0 8 1
device=MMBT3904
T 65800 53200 5 10 0 0 270 2 1
footprint=SOT23_BIP
}
N 64200 53700 65800 53700 4
C 66400 52900 1 0 1 gnd-1.sym
N 66300 54200 66300 55200 4
N 65700 55200 68200 55200 4
C 68200 54600 1 0 0 termblk2-1.sym
{
T 69200 55250 5 10 0 0 0 0 1
device=TERMBLK2
T 68700 55500 5 10 1 1 0 3 1
refdes=J3
T 68200 54600 5 10 0 0 0 0 1
footprint=TERMBLK2_200MIL
}
C 68100 54300 1 0 1 gnd-1.sym
N 68000 54600 68000 54800 4
N 68000 54800 68200 54800 4
C 67200 55000 1 90 1 capacitor-1.sym
{
T 66500 54800 5 10 0 1 270 2 1
device=CAPACITOR
T 66900 54700 5 10 1 1 0 6 1
refdes=C4
T 66300 54800 5 10 0 0 270 2 1
symversion=0.1
T 67100 54400 5 10 1 1 0 2 1
value=1uF
T 67200 55000 5 10 0 0 0 6 1
footprint=0805
T 67100 54700 5 10 1 1 0 0 1
description=25V
}
C 67100 53800 1 0 1 gnd-1.sym
N 67000 55000 67000 55200 4
C 65700 54600 1 0 1 lm358-1.sym
{
T 65025 55200 5 10 0 0 0 6 1
device=LM358
T 65000 55950 5 10 0 0 0 6 1
footprint=SO8
T 65400 55500 5 10 1 1 0 0 1
refdes=U1
T 65700 54600 5 10 0 0 0 6 1
slot=2
}
C 65400 55600 1 0 1 12V-plus-1.sym
N 65200 55600 65200 55400 4
C 65100 54100 1 0 0 gnd-1.sym
N 65200 54400 65200 54600 4
N 64000 55000 64700 55000 4
N 64500 54500 64500 55000 4
N 64500 54500 65900 54500 4
N 65900 54500 65900 54800 4
N 65900 54800 65700 54800 4
C 60500 48900 1 90 1 res-pack4-1.sym
{
T 60500 48900 5 10 0 0 0 6 1
slot=1
T 60600 48000 5 10 1 1 0 1 1
value=10k
T 60600 48200 5 10 1 1 0 1 1
refdes=R3
T 60600 47800 5 10 1 1 0 1 1
footprint=RPACK4-1206
}
C 57300 48900 1 0 0 res-pack2-1.sym
{
T 57300 48900 5 10 0 0 90 6 1
slot=1
T 58095 49200 5 10 1 1 0 6 1
refdes=R2
T 58300 49200 5 10 1 1 0 0 1
value=33k
T 58200 48800 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
C 59400 48600 1 90 1 capacitor-1.sym
{
T 58700 48400 5 10 0 1 270 2 1
device=CAPACITOR
T 58500 48400 5 10 0 0 270 2 1
symversion=0.1
T 59400 48600 5 10 0 0 0 6 1
footprint=0805
T 59100 48300 5 10 1 1 0 6 1
refdes=C3
T 59300 48000 5 10 1 1 0 2 1
value=22uF
T 59300 48300 5 10 1 1 0 0 1
description=25V
}
N 58600 49000 60700 49000 4
N 59200 49000 59200 48600 4
C 61300 48300 1 0 1 gnd-1.sym
C 61000 49800 1 0 0 12V-plus-1.sym
N 61200 49800 61200 49600 4
N 61200 48600 61200 48800 4
N 60400 48500 60400 50500 4
N 60400 49400 60700 49400 4
N 60400 50500 61700 50500 4
C 62700 50400 1 0 0 res-pack2-1.sym
{
T 62700 50400 5 10 0 0 90 6 1
slot=1
T 63495 50700 5 10 1 1 0 6 1
refdes=R4
T 63700 50700 5 10 1 1 0 0 1
value=1k
T 63600 50300 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
N 63100 50500 62600 50500 4
C 60500 47300 1 0 1 gnd-1.sym
C 59300 47400 1 0 1 gnd-1.sym
C 62900 49100 1 0 0 res-pack2-1.sym
{
T 62900 49100 5 10 0 0 90 6 1
slot=1
T 63695 49400 5 10 1 1 0 6 1
refdes=R5
T 63900 49400 5 10 1 1 0 0 1
value=1k
T 63800 49000 5 10 1 1 0 5 1
footprint=RPACK2-0606
}
N 63300 49200 61700 49200 4
C 65800 48700 1 0 0 npn-2.sym
{
T 66400 49200 5 10 0 0 180 8 1
device=NPN_TRANSISTOR
T 65800 48700 5 10 0 0 270 2 1
footprint=SOT23_BIP
T 66100 49600 5 10 1 1 0 6 1
refdes=Q2
T 66100 48800 5 10 1 1 0 8 1
device=MMBT3904
}
N 64200 49200 65800 49200 4
C 66400 48400 1 0 1 gnd-1.sym
N 66300 49700 66300 50700 4
N 65700 50700 68200 50700 4
C 68100 49800 1 0 1 gnd-1.sym
N 68000 50100 68000 50300 4
N 68000 50300 68200 50300 4
C 67200 50500 1 90 1 capacitor-1.sym
{
T 66500 50300 5 10 0 1 270 2 1
device=CAPACITOR
T 66300 50300 5 10 0 0 270 2 1
symversion=0.1
T 67200 50500 5 10 0 0 0 6 1
footprint=0805
T 66900 50200 5 10 1 1 0 6 1
refdes=C5
T 67100 49900 5 10 1 1 0 2 1
value=1uF
T 67100 50200 5 10 1 1 0 0 1
description=25V
}
C 67100 49300 1 0 1 gnd-1.sym
N 67000 50500 67000 50700 4
C 65400 51100 1 0 1 12V-plus-1.sym
N 65200 51100 65200 50900 4
C 65100 49600 1 0 0 gnd-1.sym
N 65200 49900 65200 50100 4
N 64000 50500 64700 50500 4
N 64500 50000 64500 50500 4
N 64500 50000 65900 50000 4
N 65900 50000 65900 50300 4
N 65900 50300 65700 50300 4
C 65700 50100 1 0 1 lm358-1.sym
{
T 65025 50700 5 10 0 0 0 6 1
device=LM358
T 65000 51450 5 10 0 0 0 6 1
footprint=SO8
T 65400 51000 5 10 1 1 0 0 1
refdes=U2
T 65700 50100 5 10 0 0 0 6 1
slot=2
}
C 60700 48800 1 0 0 lm358-1.sym
{
T 61375 49400 5 10 0 0 0 0 1
device=LM358
T 61400 50150 5 10 0 0 0 0 1
footprint=SO8
T 61000 49700 5 10 1 1 0 6 1
refdes=U2
T 60700 48800 5 10 0 0 0 0 1
slot=1
}
N 52200 51300 56700 51300 4
N 56700 51300 56700 53500 4
N 56700 53500 57700 53500 4
N 57700 49000 56700 49000 4
N 56700 49000 56700 50900 4
N 56700 50900 54900 50900 4
T 49200 52150 9 10 1 0 0 0 1
OC0A
T 49200 51750 9 10 1 0 0 0 1
OC0B
T 49200 54050 9 10 1 0 0 0 1
OC1B
T 49200 53650 9 10 1 0 0 0 1
OC1A
T 69200 55000 9 20 1 0 0 1 1
Output A
T 69200 50500 9 20 1 0 0 1 1
Output B
N 49000 54400 50300 54400 4
T 49200 54450 9 10 1 0 0 0 1
OC2A
N 49000 50900 53000 50900 4
T 49200 50950 9 10 1 0 0 0 1
OC2B
N 50000 52100 50000 52500 4
N 50000 52500 50600 52500 4
N 50000 53600 50000 52900 4
N 50000 52900 50600 52900 4
N 50600 53300 50300 53300 4
N 50300 53300 50300 54400 4
N 52000 53300 52200 53300 4
N 52200 53300 52200 50500 4
N 52000 52900 52200 52900 4
N 52000 52500 52200 52500 4
C 53300 52300 1 0 0 header3x2-1.sym
{
T 53300 53900 5 10 0 1 0 0 1
device=header3x2-1
T 53300 52300 5 10 0 0 0 0 1
footprint=JUMPER3x2-SMT
T 54000 53600 5 10 1 1 0 3 1
refdes=JP2
}
N 54700 53300 54900 53300 4
N 54900 53300 54900 50500 4
N 54700 52900 54900 52900 4
N 54700 52500 54900 52500 4
N 52700 51700 52700 52500 4
N 52700 52500 53300 52500 4
N 53300 52900 52700 52900 4
N 52700 52900 52700 54000 4
N 53000 50900 53000 53300 4
N 53000 53300 53300 53300 4
C 68200 50100 1 0 0 termblk2-1.sym
{
T 69200 50750 5 10 0 0 0 0 1
device=TERMBLK2
T 68200 50100 5 10 0 0 0 0 1
footprint=TERMBLK2_200MIL
T 68700 51000 5 10 1 1 0 3 1
refdes=J4
}
C 61300 55100 1 180 1 res-pack4-1.sym
{
T 61300 55100 5 10 0 0 90 6 1
slot=3
T 62200 55200 5 10 1 1 0 0 1
value=10k
T 62000 55200 5 10 1 1 0 6 1
refdes=R3
T 62200 54800 5 10 1 1 0 5 1
footprint=RPACK4-1206
}
C 61300 50600 1 180 1 res-pack4-1.sym
{
T 61300 50600 5 10 0 0 90 6 1
slot=2
T 62200 50700 5 10 1 1 0 0 1
value=10k
T 62000 50700 5 10 1 1 0 6 1
refdes=R3
T 62200 50300 5 10 1 1 0 5 1
footprint=RPACK4-1206
}
C 50600 53500 1 180 1 header3x2-1.sym
{
T 50600 51900 5 10 0 1 180 6 1
device=header3x2-1
T 51300 53600 5 10 1 1 180 5 1
refdes=JP1
T 50600 53500 5 10 0 0 180 6 1
footprint=JUMPER3x2-SMT
}
