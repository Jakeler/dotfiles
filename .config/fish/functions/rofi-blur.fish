function rofi-blur --description 'Wrapper to run rofi with blurred background'
    rofi -show combi &

    while set -q $wid
        set wid (xdotool search -class 'rofi')
    end
    xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid &&
    echo "Blurred id $wid"
end
