unset xtics
set xtics
set key box 
set title 'CO2/Temp Messwert'
set xlabel 'Messzeitpunkt'
set xdata time
set timefmt "%H:%M:%S"
set format x "%H:%M"
set ylabel 'CO2 Wert'
set y2label 'Temperatur'
set y2tics
set yrange [0:2000]
set y2range [15:30]
plot "co2data.log" using 2:4 with lines t "Co2", "co2data.log" using 2:6 with lines t "Temp" axes x1y2  
set output "messwerte.jpg"
set terminal jpeg
replot
