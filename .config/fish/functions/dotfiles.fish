# Defined in - @ line 1
function dotfiles --description 'alias dotfiles=git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
	git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv;
end
