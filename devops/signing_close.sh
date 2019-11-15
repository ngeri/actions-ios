#./signing_close $KCID
KCID=$1
KCNAME="$KCID.keychain"

security list-keychains -d user -s login.keychain
security delete-keychain $KCNAME