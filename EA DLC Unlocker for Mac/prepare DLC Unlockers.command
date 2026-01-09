#!/usr/bin/env bash

clear
pushd "$(dirname "$0")"

xattr -rc .
printf "\n\n"

ss2=0

ss=0
GAME_NAME="The Sims 4"
APP_NAME="DLC Unlocker - $GAME_NAME.app"
BUNDLE_PATH="$APP_NAME/Contents/MacOS"
mkdir -p "$BUNDLE_PATH"
cp files/unlocker "$BUNDLE_PATH/unlocker" || ((ss++))
cp files/anadius.dylib "$BUNDLE_PATH/anadius.dylib" || ((ss++))
mv files/anadius_online.dylib "$BUNDLE_PATH/anadius_online.dylib" || ((ss++))
mv files/thesims4.cfg "$BUNDLE_PATH/anadius.cfg" || ((ss++))
cp files/Info.plist "$BUNDLE_PATH/../Info.plist" || ((ss++))
if [[ $ss > 0 ]]; then
  echo "Failed creating a DLC Unlocker for $GAME_NAME"
  ((ss2++))
  rm -fr "$APP_NAME"
fi

ss=0
GAME_NAME="The Sims 3"
APP_NAME="DLC Unlocker - $GAME_NAME.app"
BUNDLE_PATH="$APP_NAME/Contents/MacOS"
mkdir -p "$BUNDLE_PATH"
mv files/unlocker "$BUNDLE_PATH/unlocker" || ((ss++))
mv files/anadius.dylib "$BUNDLE_PATH/anadius.dylib" || ((ss++))
mv files/thesims3.cfg "$BUNDLE_PATH/anadius.cfg" || ((ss++))
mv files/Info.plist "$BUNDLE_PATH/../Info.plist" || ((ss++))
if [[ $ss > 0 ]]; then
  echo "Failed creating a DLC Unlocker for $GAME_NAME"
  ((ss2++))
  rm -fr "$APP_NAME"
fi

printf "\n\n"

if [[ $ss2 > 0 ]]; then
  echo "There were errors when trying to create the DLC Unlockers."
  echo "Try redownloading the archive from the website listed in the readme file."
else
  echo "DLC Unlockers created successfully!"
  echo "You need to run the DLC Unlocker before opening the EA app or the game."
  echo "For detailed instructions see the readme file."
fi

printf "\n\n"

rmdir files && rm -- "$0" || echo "Cleanup failed, delete the 'files' folder and the 'prepare DLC Unlockers' script yourself."
printf "\n\n\n\n"
