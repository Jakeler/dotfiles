function set-backlight --description 'Set backlight with ddcutil on 2 monitors + KDE dbus for laptop screen'
	set -l brightness $argv[1]
	set -l mon_count $argv[2]
	set -q argv[2] || set -l mon_count 2

	for i in (seq $mon_count);
		echo "Trying ddc for $i. display"
		ddcutil setvcp 0x10 $brightness -d $i
	end

	set -l brightness_calc (math "$brightness*960")
	qdbus local.org_kde_powerdevil /org/kde/Solid/PowerManagement/Actions/BrightnessControl setBrightness $brightness_calc
end
