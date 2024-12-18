function upd-aur --description 'Update pkgbuild to new version'
	set new_ver $argv[1];
	sed -E "s#(^pkgver=).*#\1$new_ver#" -i PKGBUILD
	set new_rel 1; set -q $argv[2] || set new_rel $argv[2];
	sed -E "s#(^pkgrel=).*#\1$new_rel#" -i PKGBUILD
	
	updpkgsums; or return 1
	makepkg --printsrcinfo > .SRCINFO

	# Acutally build the damn thing
	makepkg -Cfsi

	# Run standard checks
	set -l build_pkg (basename $PWD)-$new_ver-$new_rel-x86_64.pkg.tar.zst
	echo (set_color blue)"Running namcap $build_pkg"(set_color normal)
	namcap $build_pkg
	echo

	read -l -n1 -P 'Commit? (y/N)' confirmed
	switch $confirmed
		case Y y
			# Use aurpublish hooks, does not need -m "Update to $new_ver ($new_rel)"
			git commit -v -a
		case *
			return 1
	end
end
