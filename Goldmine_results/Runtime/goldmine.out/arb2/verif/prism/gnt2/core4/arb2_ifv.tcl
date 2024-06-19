clock -add clk

force rst 1

run 10

init -load -current

constraint -add -pin rst 0 -reset

define debugmode=on
define effort=mid
prove

exit
