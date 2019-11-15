#./signing_open.sh $B64_PROV $B64_CERT $P12PW $KCID $KCPW
B64_PROV=$1
B64_CERT=$2
P12PW=$3
KCID=$4
KCPW=$5

KCNAME="$KCID.keychain"
TMP_PROV="Prov.mobileprovision"
TMP_CERT="Cert.p12"
(echo $B64_PROV | base64 --decode) > $TMP_PROV
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp $TMP_PROV ~/Library/MobileDevice/Provisioning\ Profiles/$TMP_PROV
(echo $B64_CERT | base64 --decode) > $TMP_CERT
security create-keychain -p $KCPW $KCNAME
security list-keychains -d user -s login.keychain $KCNAME
security import $TMP_CERT -k $KCNAME -P $P12PW -T /usr/bin/codesign
security set-keychain-settings -lut 1000 $KCNAME
security unlock-keychain -p $KCPW $KCNAME
security set-key-partition-list -S apple-tool:,apple: -s -k $KCPW $KCNAME
rm $TMP_PROV
rm $TMP_CERT
