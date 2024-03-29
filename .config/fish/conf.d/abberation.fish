if status --is-interactive
    ### Dotfiles
    abbr -a dg 'dotfiles'
    abbr -a dgs 'dotfiles status'
    abbr -a dgl 'dotfiles log'
    abbr -a dga 'dotfiles add'
    abbr -a dgc 'dotfiles commit -v'
    abbr -a dgca 'dotfiles commit -v -a'
    abbr -a dgp 'dotfiles push'
    abbr -a dgpl 'dotfiles pull'
    abbr -a dgd 'dotfiles diff'
    
    
    ### Editor
    abbr -a vim nvim
    abbr -a v nvim
    abbr -a sue sudoedit
    
    ### SSH
    abbr -a s ssh
    abbr -a sf sshfs
    
    ### Systemd
    abbr -a sds 'systemctl status'
    abbr -a sdst 'sudo systemctl start'
    abbr -a sdsp 'sudo systemctl stop'
    abbr -a sdrs 'sudo systemctl restart'
    abbr -a sden 'sudo systemctl enable'
    abbr -a sdds 'sudo systemctl disable'
    abbr -a sdld 'systemctl daemon-reload'
    ### Systemd USer
    abbr -a sdus 'systemctl --user status'
    abbr -a sdust 'systemctl --user start'
    abbr -a sdusp 'systemctl --user stop'
    abbr -a sdurs 'systemctl --user restart'
    abbr -a sduen 'systemctl --user enable'
    abbr -a sduds 'systemctl --user disable'
    abbr -a sduld 'systemctl --user daemon-reload'
    # Journal
    abbr -a jl 'journalctl'
    abbr -a jlu 'journalctl -u'
    
    # Mounts
    abbr -a m 'sudo mount'
    abbr -a um 'sudo umount'
    abbr -a fum 'fusermount -u'
    
    # Python
    abbr -a py 'python'
    abbr -a py3 'python3'
    abbr -a py2 'python2'
    abbr -a pyve 'python -m venv venv; source venv/bin/activate.fish'
    abbr -a pyves 'python -m venv venv --system-site-packages; source venv/bin/activate.fish'
    abbr -a spve 'source venv/bin/activate.fish'
    abbr -a pyhttp 'python -m http.server'
    abbr -a pyftp 'python -m pyftpdlib'
    # pip
    abbr -a pi 'pip install'
    abbr -a pu 'pip uininstall'
    abbr -a pl 'pip list'

    # Package Manager
    set -l aur_helper paru
    abbr -a y "$aur_helper"
    abbr -a yqi "$aur_helper -Qi"
    abbr -a yqo "$aur_helper -Qo"
    abbr -a ys "$aur_helper -S"
    abbr -a ysi "$aur_helper -Si"
    abbr -a yr "$aur_helper -Rs"
    abbr -a yu "$aur_helper -U"
    abbr -a yc "$aur_helper -Gc"

    # Help
#     abbr -a m 'man'
    abbr -a td 'tldr'
    abbr -a fu 'fuck'
    
    # Backup
    abbr -a b 'borg'
    abbr -a bi 'borg info'
    abbr -a bl 'borg list'
    abbr -a bd 'borg delete'
    abbr -a bm 'borg mount'
    abbr -a rc 'rclone config'
    # Remote
    abbr -a rlr 'rclone listremotes --long'
    abbr -a rs 'rclone --b2-versions size'
    abbr -a rls 'rclone ls --max-depth 1'
    abbr -a rlsl 'rclone lsl --max-depth 1'
    abbr -a rsy 'rclone sync -P --transfers 32'
    abbr -a rck 'rclone check -P --transfers 32'
    abbr -a rclu 'rclone cleanup -P --transfers 32'

    ### Git
    abbr -a g 'git'
    abbr -a gcl 'git clone'
    abbr -a gf 'git fetch'
    abbr -a gm 'git merge'
    abbr -a grb 'git rebase'
    abbr -a gcp 'git cherry-pick'
    # Stage
    abbr -a ga 'git add'
    abbr -a gall 'git add -A'
    abbr -a grm 'git rm'
    abbr -a grmc 'git rm --cached'
    # Commit
    abbr -a gc 'git commit -v'
    abbr -a gca 'git commit -v -a'
    abbr -a gci 'git commit -v -i'
    # Branch
    abbr -a gbr 'git branch'
    abbr -a gbrl 'git branch -l'
    abbr -a gbrd 'git branch -d'
    # Push/Pull
    abbr -a gp 'git push'
    abbr -a gpd 'git push origin -d'
    abbr -a gpl 'git pull'
    abbr -a gpp 'git pull && git push'
    # Log
    abbr -a gl 'git log'
    # Stash
    abbr -a gst 'git stash'
    abbr -a gstp 'git stash pop'
    # Checkout
    abbr -a gco 'git checkout'
    abbr -a gcob 'git checkout -b'
    abbr -a gcom 'git checkout master'
    # Switch
    abbr -a gsw 'git switch'
    # Tag
    abbr -a gt 'git tag'
    abbr -a gta 'git tag -a'
    abbr -a gtd 'git tag -d'
    abbr -a gtl 'git tag -l'
    # Info
    abbr -a gd 'git diff'
    abbr -a gs 'git status'
    abbr -a gss 'git status -s'
    abbr -a gbl 'git blame'
    abbr -a gsh 'git show'
    # Remote
    abbr -a grt 'git remote'
    abbr -a grtv 'git remote -v'
    abbr -a grta 'git remote add'
    abbr -a grtr 'git remote remove'
    # Submodules
    abbr -a gsm 'git submodule'
    abbr -a gsmu 'git submodule update --recursive --remote'
    # Reset
    abbr -a gr 'git reset'
    abbr -a grs 'git reset --soft'
    abbr -a grh 'git reset --hard'

    ### AUR
    abbr -a acl 'clone-aur'
    abbr -a aup 'upd-aur'
    abbr -a ap 'git push; aurpublish'
    abbr -a al 'aurpublish log'

    ### Find last modified files
    abbr -a fm1 'stderred find . -mmin -1'
    abbr -a fm10 'stderred find . -mmin -10'
    abbr -a fmf10 'stderred find . -type f -mmin -10'
    abbr -a fm60 'stderred find . -mmin -60'

    ### Fix folder mtime
    abbr -a dum 'dir-update-mtime'
    abbr -a dumr 'dir-update-mtime-recursive'

    # Dev
    abbr -a c 'code .'

end
