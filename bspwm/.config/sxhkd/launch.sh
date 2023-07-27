SXHKD_CMD=$(which sxhkd)

# Use git version if installed
if test -f ~/SourcePackages/sxhkd/build/usr/local/bin/sxhkd; then
    POLYBAR_MSG_CMD=~/SourcePackages/sxhkd/build/usr/local/bin/sxhkd
fi

pgrep sxhkd || $SXHKD_CMD &
