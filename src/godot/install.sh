apt update && apt-get install wget unzip -y
EXT=x86_64

major=$(echo $GODOTVERSION | cut -d '.' -f 1)

if [ $major -lt 4 ]; then
  EXT=x11.64
fi

if [ $major -lt 3 ]; then
  GODOTDOTNET=$false
fi

mkdir /opt/godot -p
if [ "$GODOTDOTNET" = "true" ] ; then
  echo Installing version $GODOTVERSION mono $EXT
  wget "https://github.com/godotengine/godot/releases/download/"$GODOTVERSION"/Godot_v"$GODOTVERSION"_mono_linux_"$EXT".zip"
  unzip -o "Godot_v"$GODOTVERSION"_mono_linux_"$EXT".zip" -d /opt/godot
  rm "Godot_v"$GODOTVERSION"_mono_linux_"$EXT".zip"
  chmod +x "/opt/godot/Godot_v"$GODOTVERSION"_mono_linux_"$EXT"/Godot_v"$GODOTVERSION"_mono_linux."$EXT
else
  echo Installing version $GODOTVERSION $EXT
  wget   "https://github.com/godotengine/godot/releases/download/"$GODOTVERSION"/Godot_v"$GODOTVERSION"_linux."$EXT".zip"
  unzip -o "Godot_v"$GODOTVERSION"_linux."$EXT".zip" -d "/opt/godot/Godot_v"$GODOTVERSION"_linux_"$EXT
  rm "Godot_v"$GODOTVERSION"_linux."$EXT".zip"
  chmod +x "/opt/godot/Godot_v"$GODOTVERSION"_linux_"$EXT"/Godot_v"$GODOTVERSION"_linux."$EXT
fi
