function with_color --description 'Encapsulate with colors'
    echo (set_color -o $argv[1])"$argv[2]"(set_color normal)
end

function dir-update-mtime --description 'Modify mtime of current folder to match files'
    # Check if custom path, otherwise use current dir
    if test (count $argv) -eq 1
        set dir_path $argv[1]
    else
        set dir_path .
    end
    set -l exp_path (readlink -f $dir_path)

    set -l last_file (find $dir_path -type f -printf '%T+=%p\n' | sort | tail -n 1)
    if test -z $last_file
        echo (with_color red "No file found in $exp_path")
        return 1
    end
    touch -r (echo $last_file | cut -d= -f2-) $dir_path;
    
    # Colorful split output
    set -l split_src (string split '=' $last_file)
    set -l time_split (string split '+' $split_src[1])
    echo -n 'Set directory: '(with_color cyan $exp_path)
    echo ' to '(with_color white $time_split[1])' at '(with_color white $time_split[2])
    echo 'from: '(with_color magenta $split_src[2])
end
