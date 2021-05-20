#
# .profile
#

[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export SSB_HOME="$XDG_DATA_HOME"/zoom
ENV=$HOME/.shrc; export ENV
