#!/bin/bash

Download="/Users/Kuroneko_shion/Documents/NNDD/Download/"

System="/Users/Kuroneko_shion/Documents/NNDD/system/"

NasFile="/Volumes/Movie/Download/"

#要らないファイルを削除

find ${Download} -name '*.xml' -exec rm -f {} \;

find ${Download} -name '*.html' -exec rm -f {} \;

find ${Download} -name '*.jpeg' -exec rm -f {} \;

rm -rf ${System};

#動画ファイルをコピーする

find ${Download} -name '*.mp4' -exec cp ${Download}*.mp4 ${NasFile} \;

find ${Download} -name '*.flv' -exec cp ${Download}*.flv ${NasFile} \;

#コピーしたらパソコンから動画ファイルを削除する。

find ${Download} -name '*.mp4' -exec rm -f {} \;

find ${Download} -name '*.flv' -exec rm -f {} \;

#もしハードディスク側でいつも保存しているファイルであれば移動する。

#Minecraft 兎と亀
find ${NasFile} -name '*兎と亀*' -exec mv -f ${NasFile}*兎と亀*[.mp4] ${NasFile}../minecraft/兎と亀/ \;

#Minecraft 兎と亀
find ${NasFile} -name '*NoNature*' -exec mv -f ${NasFile}*NoNature*[.mp4] ${NasFile}../minecraft/NoNature/ \;

exit 0