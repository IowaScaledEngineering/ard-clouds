set terminal png size 1000,400 enhanced
set output 'out.png'
set datafile separator ","
set nokey

set grid xtics lt 0, lt 0

set ylabel "Voltage"

set yrange [-5:260]
set xrange [0:30]
set xtics 5
set xlabel "Time (min)"
plot "out.csv" using 1:2 with lines, \
     "out.csv" using 1:3 with lines
