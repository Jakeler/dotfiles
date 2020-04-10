function upd-aur --description 'Update pkgbuild to new version'
	set new_ver $argv[1];
	sed -E "s#(pkgver=).*#\1$new_ver#" -i PKGBUILD
	
	updpkgsums
	makepkg --printsrcinfo > .SRCINFO
	
	git commit -v -a -m "Update to $new_ver"
end
