
declare -A archmap

archmap["arm64-v8a"]="arm64"
archmap["armeabi-v7a"]="arm"
archmap["x86_64"]="x86_64"
archmap["x86"]="x86"

makearchspec () {
   cp $PKGS_DIR/${archmap["$1"]}/* ./aar-base/jni/$1
}
