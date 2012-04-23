@echo off
color 0a
Title Change The Color Of This window
:Color
echo:
echo:
echo:
echo:
echo Enter Two numbers or alphabets or both below without space.
echo:
echo:
echo  0 = Black       8 = Gray
echo  1 = Blue        9 = Light Blue
echo  2 = Green       A = Light Green
echo  3 = Aqua        B = Light Aqua
echo  4 = Red         C = Light Red
echo  5 = Purple      D = Light Purple
echo  6 = Yellow      E = Light Yellow
echo  7 = White       F = Bright White
echo:
 
echo If You Want To Exit Instead Of Any Choise Type Exit. 


set/p "col=>"
if %col%==exit goto pause
color %col%  
cls
goto Color
:pause
echo Created by Akshay Shekher
pause