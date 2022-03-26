# editor
set -x VISUAL nvim
set -x EDITOR nvim

# man/less
set -x LESS_TERMCAP_md \e\[01\;31m
set -x LESS_TERMCAP_me \e\[0m
set -x LESS_TERMCAP_se \e\[0m
set -x LESS_TERMCAP_so \e\[01\;44\;33m
set -x LESS_TERMCAP_ue \e\[0m
set -x LESS_TERMCAP_us \e\[01\;32m

# tmpdir
if not set -q TMPDIR
  set -x TMPDIR /tmp
end

# xdg directories
if not set -q XDG_CONFIG_HOME
  set -x XDG_CONFIG_HOME $HOME/.config
end
if not set -q XDG_DATA_HOME
  set -x XDG_DATA_HOME $HOME/.local/share
end
if not set -q XDG_CACHE_HOME
  set -x XDG_CACHE_HOME $HOME/.cache
end
if not set -q XDG_RUNTIME_DIR
  set -x XDG_RUNTIME_DIR $TMPDIR
end

# tmux
set -x TMUX_TMPDIR $XDG_RUNTIME_DIR

# Fish Timer
set -x fish_command_timer_color cyan
set -x fish_command_timer_time_format '%X'

# PATH
set -px fish_user_paths ~/.gem/ruby/*/bin/
set -px fish_user_paths ~/.local/bin/go/

# GO
set -x GOPATH ~/.cache/go-mod
set -x GOBIN ~/.local/bin/go

