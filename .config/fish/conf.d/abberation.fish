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
    abbr -a srld 'systemctl daemon-reload'
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
    abbr -a pyve 'python -m venv venv'
    abbr -a pyhttp 'python -m http.server'
    abbr -a pyftp 'python -m pyftpdlib'

    # Package Manager
    abbr -a y 'yay'
    abbr -a yqi 'yay -Qi'
    abbr -a yqo 'yay -Qo'
    abbr -a ys 'yay -S'
    abbr -a ysi 'yay -Si'
    abbr -a yr 'yay -Rs'
    abbr -a yu 'yay -U'

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
    abbr -a gcl 'git clone'
    abbr -a gf 'git fetch'
    abbr -a gm 'git merge'
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

    ### Find last modified files
    abbr -a fm1 'stderred find . -mmin -1'
    abbr -a fm10 'stderred find . -mmin -10'
    abbr -a fmf10 'stderred find . -type f -mmin -10'
    abbr -a fm60 'stderred find . -mmin -60'

    ### Fix folder mtime
    abbr -a dum 'dir-update-mtime'

end
