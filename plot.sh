#!/usr/bin/gnuplot

# set terminal and output, use input filename as base for new filename
set terminal pngcairo size 1920,1080 enhanced font 'Verdana,30'

# set a grid for the graph
set grid

set output "dt_dx.png"

set label "dt = dx" center at -10,1e8
# set output "dt_0.1_dx.png"
plot for [i=0:10] 'u_'.i u 1:2 w l lw 2 t 'u_{'.i.'}'
