# Defined in - @ line 0
function srci --description 'alias srci makepkg --printsrcinfo > .SRCINFO'
	makepkg --printsrcinfo > .SRCINFO $argv;
end
