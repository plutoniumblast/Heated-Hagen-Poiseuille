set terminal postscript eps enhanced "Helvetica" 25 color solid  

set key bottom right 
set key spacing 1
set key samplen 1

set xlabel 'Radial position (m)'
set ylabel 'Axial Velocity (m/s)'
set xrange [0:0.01]
set yrange [0.0:0.002]
set size 1.0,1.0

set output 'VelocityProfileComparison.eps'

plot 'analytical.txt' u 1:2 with lines t 'Analytical',\
     'openfoam.txt' u 1:2 w lp t 'OpenFOAM',\
     'fluent.txt' u 1:2 w lp t 'Fluent'


