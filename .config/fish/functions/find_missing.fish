function find_missing
    # Usage: find_missing_files SOURCE TARGET [--verbose] [--ignore-hidden]

    argparse 'v/verbose' 'i/ignore-hidden' -- $argv
    or return 1

    set -l verbose 0
    if set -q _flag_verbose
        set verbose 1
    end

    set -l ignore_hidden 0
    if set -q _flag_ignore_hidden
        set ignore_hidden 1
    end

    if test (count $argv) -lt 2
        echo "Usage: find_missing_files SOURCE TARGET [--verbose] [--ignore-hidden]"
        return 1
    end

    set -l source $argv[1]
    set -l target $argv[2]

    if not test -d $source
        echo "Error: Source directory '$source' not found"
        return 1
    end

    if not test -d $target
        echo "Error: Target directory '$target' not found"
        return 1
    end

    # Build a temp file with all target paths
    set -l tmpfile (mktemp)
    find $target -type f > $tmpfile

    set -l missing 0
    set -l total 0

    # Build source find command
    if test $ignore_hidden -eq 1
        # Exclude hidden directories
        set -f source_files (find $source -type f -not -path '*/.*/*')
    else
        set -f source_files (find $source -type f)
    end

    # Loop over source files
    for sfile in $source_files
        set total (math $total + 1)
        set sname (basename $sfile)

        # Grep target for matches
        set matches (grep -F -- "$sname" $tmpfile)

        if test (count $matches) -eq 0
            echo "MISSING: $sfile"
            set missing (math $missing + 1)
        else if test $verbose -eq 1
            echo "FOUND:   $sfile"
            for tmatch in $matches
                echo "         ↳ $tmatch"
            end
        end
    end

    echo ""
    echo "Scanned $total files in source."
    echo "Missing: $missing."

    rm -f $tmpfile
end
