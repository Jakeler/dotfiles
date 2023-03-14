function set-backlight --description 'Set backlight with ddcutil on 2 monitors + KDE dbus for laptop screen'
	set -l brightness $argv[1]
	set -l mon_count $argv[2]
	set -q argv[2] || set -l mon_count 2

	for i in (seq $mon_count);
		echo "Trying ddc for $i. display"
		ddcutil setvcp 0x10 $brightness -d $i
	end

	set -l max_val (qdbus local.org_kde_powerdevil /org/kde/Solid/PowerManagement/Actions/BrightnessControl brightnessMax)
	set -l step_val (math "$max_val/100")
	set -l brightness_calc (math "$brightness*$step_val")
	echo "Calling dbus with max. value $max_val and steps of $step_val"
	qdbus local.org_kde_powerdevil /org/kde/Solid/PowerManagement/Actions/BrightnessControl setBrightness $brightness_calc
end
