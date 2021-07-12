DIR1=/home/kanda/Project/twitter/rss/
NUM="$1"
TAR=$DIR1$NUM
# echo $TAR
export XDG_CONFIG_HOME=$TAR
# export XDG_CONFIG_HOME=$TAR && newsboat
export XDG_DATA_HOME=$TAR
newsboat
