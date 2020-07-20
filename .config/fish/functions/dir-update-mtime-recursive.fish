function dir-update-mtime-recursive --description 'Run dir-update-mtime recursive'
    set -l folders (find -type d)
    for f in $folders
        dir-update-mtime $f
    end
end
