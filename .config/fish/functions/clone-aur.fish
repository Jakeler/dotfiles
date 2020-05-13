function clone-aur --description 'Clone aur repo by name'
	set repo $argv[1];
	
	git clone "ssh://aur@aur.archlinux.org/$repo.git"
	or git clone "https://aur.archlinux.org/$repo.git"

	cd $repo
end
