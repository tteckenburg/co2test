<?php

passthru("/var/www/mymonitor.py /dev/hidraw0".$argv_parameter." >> /home/pi/co2data.log 2>&1 &");
?>
