
declare -A archmap

archmap["arm64-v8a"]="arm64"
archmap["armeabi-v7a"]="armv7"
archmap["x86_64"]="x86_64"
archmap["x86"]="x86"

makearchspec () {
   if [[ $1 != *"x86"* ]]; then
   	unzip -d ./aar-base/jni/$1 $PKGS_DIR/mesa-${archmap["$1"]}
   fi
}
