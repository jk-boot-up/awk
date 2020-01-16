#!/usr/bin/env bash

#echo -e "This\nThat\nThere\nTheir\nthese" | awk '/^The/'

#echo  -e "This\nThat\nThere\nTheir\nthese" | awk '/eir$/'

#echo -e "Call\nTall\nBall" | awk '/[BC]all/'

#echo -e "a=b\nb=c\nc=d" | awk '/^b=/' | awk -F= '{print $1}' >> output-sample

#echo -e "a=b\nc=d" | awk -F= '{print $1}'

input="/Users/kondurj/jk/git-hub-jk-boot-up/awk/resources/properties-input.in"

#cat /dev/null > filtered_fields

#cat $input | awk '/^xyz_function_*=/' | awk -F= '{print $2}' >> filtered_fields

#echo -e "a=b\nc=d" | awk 'BEGIN { FS = "=" } ; { print $2 }'

#awk -F: 'BEGIN {'/^xyz_function_*=/'} ; { FS = "=" } ; { print $2 }' $input

awk '/^xyz_function=/{print}' $input | awk 'BEGIN {FS = "="}; {print $2}' > output_final

