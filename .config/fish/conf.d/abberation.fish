if status --is-interactive
    ### Dotfiles
    abbr -a dg dotfiles
    
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
    # Journal
    abbr -a jl 'journalctl'
    abbr -a jlu 'journalctl -u'
    
    # Mounts
    abbr -a m sudo mount
    abbr -a um sudo umount
    
    # Python
    abbr -a py 'python'
    abbr -a py3 'python3'
    abbr -a py2 'python2'

    ### Git
    abbr -a gcl 'git clone'
    abbr -a gf 'git fetch'
    abbr -a gm 'git merge'
    abbr -a gcp 'git cherry-pick'
    # Stage
    abbr -a ga 'git add'
    abbr -a gall 'git add -A'
    abbr -a grm 'git rm'
    # Commit
    abbr -a gc 'git commit -v'
    abbr -a gca 'git commit -v -a'
    abbr -a gci 'git commit -v -i'
    # Push/Pull
    abbr -a gp 'git push'
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
    # Other
    abbr -a gd 'git diff'
    abbr -a gs 'git status'
    abbr -a gss 'git status -s'
    # Submodules
    abbr -a gsm 'git submodule'
    abbr -a gsmu 'git submodule update --recursive --remote'

end
