#1/bin/sh
set -e

if [ "$#" -ge 2 ]; then
export PROJECT=$2
else
export PROJECT=mesa
fi

PKGS_DIR=$(realpath "$1")

. aargen_$PROJECT.sh

# Usage: [arch_mesa] [arch_android]
makearch () {
   mkdir ./aar-base/jni/$1
   makearchspec $1
}

mkdir ./aar-base/jni
makearch arm64-v8a
makearch armeabi-v7a
makearch x86_64
makearch x86
cd aar-base
zip -r $PROJECT *
cd ..
mv aar-base/$PROJECT.zip $PROJECT.aar
