function upd-aur --description 'Update pkgbuild to new version'
	set new_ver $argv[1];
	sed -E "s#(^pkgver=).*#\1$new_ver#" -i PKGBUILD
	set new_rel 1;
	sed -E "s#(^pkgrel=).*#\1$new_rel#" -i PKGBUILD
	
	updpkgsums; or return 1
	makepkg --printsrcinfo > .SRCINFO
	
	git commit -v -a -m "Update to $new_ver"
end
