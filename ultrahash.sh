#!/bin/bash
# THX FOR INDOSEC
# (C) VanGans
# GAK USAH RECODE SEGALA CAPEK WE BIKIN!
clear;
HIJAU="\e[92m"
MERAH="\e[91m"
PUTIH="\e[97m"
DATA() {
URL="curl -s http://indosec.web.id/api/ultra_hash.php?action=enc&value=$name"
JSN=$($URL | jq -r .status)
JSN2=$($URL | grep -Po '(?<="md2":").*?(?=")')
JSN3=$($URL | grep -Po '(?<="md4":").*?(?=")')
JSN4=$($URL | grep -Po '(?<="md5":").*?(?=")')
JSN5=$($URL | grep -Po '(?<="sha1":").*?(?=")')
JSN6=$($URL | grep -Po '(?<="sha256":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
JSN7=$($URL | grep -Po '(?<="sha384":").*?(?=")')
JSN8=$($URL | grep -Po '(?<="sha512":").*?(?=")')
JSN9=$($URL | grep -Po '(?<="ripemd128":").*?(?=")')
JSN10=$($URL | grep -Po '(?<="ripemd160":").*?(?=")')
JSN11=$($URL | grep -Po '(?<="ripemd256":").*?(?=")')
JSN12=$($URL | grep -Po '(?<="ripemd320":").*?(?=")')
JSN13=$($URL | grep -Po '(?<="whirlpool":").*?(?=")')
#jSN
    printf "(*)LOADING.. \n"
sleep 0.1
printf "$HIJAU"
printf "STATUS => $JSN \n"
printf "MD2 > $JSN2 \n"
printf "MD4 > $JSN3 \n"
printf "MD5 > $JSN4 \n"
printf "SHA1 > $JSN5 \n"
printf "SHA256 > $JSN6 \n"
printf "SHA384 > $JSN7 \n"
printf "SHA512 > $JSN8 \n"
printf "RIPEMD128 > $JSN9 \n"
printf "RIPEMD160 > $JSN10 \n"
printf "RIPEMD256 > $JSN11 \n"
printf "RIPEMD320 > $JSN12 \n"
printf "WHIRLPOOL > $JSN13 \n"
}
printf "
$MERAH ULTRA HASH
$PUTIH CREATE BY VanGans
"
echo -n "(?) name => "
read name
DATA $name
