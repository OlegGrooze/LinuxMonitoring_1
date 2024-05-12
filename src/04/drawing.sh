#!/bin/bash

mass[0]=$color_var_bg;
mass[1]=$color_var_font;
mass[2]=$color_val_bg;
mass[3]=$color_val_font;

color[1]="(white)"
color[2]="(red)"
color[3]="(green)"
color[4]="(blue)"
color[5]="(purple)"
color[6]="(black)"

default="\033[0m"    #сброс цвета к дефолту
white_font="\033[97m"    #белый цвет знаков
black_font="\033[30m"    #чёрный цвет знаков
red_font="\033[31m"    #красный цвет знаков
green_font="\033[32m"    #зелёный цвет знаков
blue_font="\033[34m"    #синий цвет знаков
purple_font="\033[35m"    #фиолетовый цвет знаков
white_bg="\033[107m"    #белый цвет фона
black_bg="\033[40m"    #чёрный цвет фона
red_bg="\033[41m"    #красный цвет фона
green_bg="\033[42m"    #зелёный цвет фона
blue_bg="\033[44m"    #синий цвет фона
purple_bg="\033[45m"    #фиолетовый цвет фона

for i in 0 2
do
if [[ ${mass[$i]} == 1 ]]; then
    r_mass[$i]=$white_bg
elif [[ ${mass[$i]} == 2 ]]; then
    r_mass[$i]=$red_bg
elif [[ ${mass[$i]} == 3 ]]; then
    r_mass[$i]=$green_bg
elif [[ ${mass[$i]} == 4 ]]; then
    r_mass[$i]=$blue_bg
elif [[ ${mass[$i]} == 5 ]]; then
    r_mass[$i]=$purple_bg
elif [[ ${mass[$i]} == 6 ]]; then
    r_mass[$i]=$black_bg
fi
done

for i in 1 3
do
if [[ ${mass[$i]} == 1 ]]; then
    r_mass[$i]=$white_font
elif [[ ${mass[$i]} == 2 ]]; then
    r_mass[$i]=$red_font
elif [[ ${mass[$i]} == 3 ]]; then
    r_mass[$i]=$green_font
elif [[ ${mass[$i]} == 4 ]]; then
    r_mass[$i]=$blue_font
elif [[ ${mass[$i]} == 5 ]]; then
    r_mass[$i]=$purple_font
elif [[ ${mass[$i]} == 6 ]]; then
    r_mass[$i]=$black_font
fi
done

echo -e "${r_mass[0]}${r_mass[1]}HOSTNAME        $default = ${r_mass[2]}${r_mass[3]}$HOSTNAME$default"
echo -e "${r_mass[0]}${r_mass[1]}TIMEZONE        $default = ${r_mass[2]}${r_mass[3]}$TIMEZONE$default"
echo -e "${r_mass[0]}${r_mass[1]}USER            $default = ${r_mass[2]}${r_mass[3]}$USER$default"
echo -e "${r_mass[0]}${r_mass[1]}OS              $default = ${r_mass[2]}${r_mass[3]}$OS$default"
echo -e "${r_mass[0]}${r_mass[1]}DATE            $default = ${r_mass[2]}${r_mass[3]}$DATE$default"
echo -e "${r_mass[0]}${r_mass[1]}UPTIME          $default = ${r_mass[2]}${r_mass[3]}$UPTIME$default"
echo -e "${r_mass[0]}${r_mass[1]}UPTIME_SEC      $default = ${r_mass[2]}${r_mass[3]}$UPTIME_SEC$default"
echo -e "${r_mass[0]}${r_mass[1]}IP              $default = ${r_mass[2]}${r_mass[3]}$IP$default"
echo -e "${r_mass[0]}${r_mass[1]}MASK            $default = ${r_mass[2]}${r_mass[3]}$MASK$default"
echo -e "${r_mass[0]}${r_mass[1]}GATEWAY         $default = ${r_mass[2]}${r_mass[3]}$GATEWAY$default"
echo -e "${r_mass[0]}${r_mass[1]}RAM_TOTAL       $default = ${r_mass[2]}${r_mass[3]}$RAM_TOTAL$default"
echo -e "${r_mass[0]}${r_mass[1]}RAM_USED        $default = ${r_mass[2]}${r_mass[3]}$RAM_USED$default"
echo -e "${r_mass[0]}${r_mass[1]}RAM_FREE        $default = ${r_mass[2]}${r_mass[3]}$RAM_FREE$default"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT      $default = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT$default"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT_USED $default = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT_USED$default"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT_FREE $default = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT_FREE$default"
echo -e

if [[ $flag == 1 ]]; then 
    echo -e "Column 1 background = default ${color[$color_var_bg]}"
    echo -e "Column 1 font color = default ${color[$color_var_font]}"
    echo -e "Column 2 background = default ${color[$color_val_bg]}"
    echo -e "Column 2 font color = default ${color[$color_val_font]}"
else
    echo -e "Column 1 background = $color_var_bg ${color[$color_var_bg]}"
    echo -e "Column 1 font color = $color_var_font ${color[$color_var_font]}"
    echo -e "Column 2 background = $color_val_bg ${color[$color_val_bg]}"
    echo -e "Column 2 font color = $color_val_font ${color[$color_val_font]}"
fi
