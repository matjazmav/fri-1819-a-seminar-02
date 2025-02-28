#!/bin/bash

function download {
    wget -qO- $1 | awk '/<code>/,/<\/pre>/' | sed 's/[^0-9\,\.\-]//g'
}

declare -a data=(
"https://pastebin.xyz/p?q=ZDJuR0s"
"https://pastebin.xyz/p?q=eEx1dEc"
"https://pastebin.xyz/p?q=aTR4OGg"
"https://pastebin.xyz/p?q=YnQ1dzg"
"https://pastebin.xyz/p?q=ZndHa0Q"
"https://pastebin.xyz/p?q=YUdqeUg"
"https://pastebin.xyz/p?q=TEJqOTg"
"https://pastebin.xyz/p?q=bUVtSjQ"
"https://pastebin.xyz/p?q=dUZXZno"
"https://pastebin.xyz/p?q=RmI1S28"
"https://pastebin.xyz/p?q=ZXBBZjM"
"https://pastebin.xyz/p?q=bkY2U1o"
"https://pastebin.xyz/p?q=WXNMbFY"
"https://pastebin.xyz/p?q=VDg2Wm8"
"https://pastebin.xyz/p?q=NDNJUDA"
"https://pastebin.xyz/p?q=eHRPSXc"
"https://pastebin.xyz/p?q=U2dGaHg"
"https://pastebin.xyz/p?q=WUJlemY"
"https://pastebin.xyz/p?q=NmxETXU"
"https://pastebin.xyz/p?q=b1hKNHY"
"https://pastebin.xyz/p?q=YzA0UXU"
"https://pastebin.xyz/p?q=dVJ6dzA"
"https://pastebin.xyz/p?q=dXg1ZWE"
"https://pastebin.xyz/p?q=UmRQRGQ"
"https://pastebin.xyz/p?q=WXJKUWY"
"https://pastebin.xyz/p?q=Qm1veDE"
"https://pastebin.xyz/p?q=MFBXSnQ"
"https://pastebin.xyz/p?q=UTRZd1Y"
"https://pastebin.xyz/p?q=UE1tT2g"
"https://pastebin.xyz/p?q=ODF0aEU"
"https://pastebin.xyz/p?q=ZTFOMVU"
"https://pastebin.xyz/p?q=a2drRnI"
"https://pastebin.xyz/p?q=S2J5WjI"
"https://pastebin.xyz/p?q=Y3h3Y3Y"
"https://pastebin.xyz/p?q=UHpvb2U"
"https://pastebin.xyz/p?q=OGg2cHE"
"https://pastebin.xyz/p?q=SGp4TFg"
"https://pastebin.xyz/p?q=cWVXRWQ"
"https://pastebin.xyz/p?q=eWFGd0U"
"https://pastebin.xyz/p?q=SnZ6R2s"
"https://pastebin.xyz/p?q=Y29rSEM"
"https://pastebin.xyz/p?q=V2lnVEg"
"https://pastebin.xyz/p?q=ck5hR2c"
"https://pastebin.xyz/p?q=dkxlclE"
"https://pastebin.xyz/p?q=SDBPUk0"
"https://pastebin.xyz/p?q=RTg4bFo"
"https://pastebin.xyz/p?q=eFYxdnc"
"https://pastebin.xyz/p?q=WkFLWUU"
"https://pastebin.xyz/p?q=ZkNIS08"
"https://pastebin.xyz/p?q=ekxDeDc"
"https://pastebin.xyz/p?q=QWk0ckY"
"https://pastebin.xyz/p?q=T3Y2Y3E"
"https://pastebin.xyz/p?q=OXlkbE4"
"https://pastebin.xyz/p?q=RnpVWXY"
)

rm -r inputs/tests/
mkdir -p inputs/tests

file=$((file+1))
for i in "${data[@]}"
do
    echo "Downloading: $i ..."
    download $i > "inputs/tests/$file.txt"
    ((file++))
done