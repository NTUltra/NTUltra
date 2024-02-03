/// @description Post create create event
fade = 0;
alarm[5] = 0;
alarm[2] = 1;
var reduc = 0.01;//0.02 0.025
size = clamp(power(dmg*reduc,0.5),0.2,1.5);
lsize = min(1,(size + 0.1) * 0.5);
shake = size * 5;
alarm[1] = 27+shake;
col = make_colour_rgb(
	lerp(239,255,lsize),
	lerp(63,255,min(1,lsize*1.5)),
	lerp(14,255,lsize)
	);
outlineCol = make_colour_rgb(
lerp(186,0,lsize),
lerp(11,0,min(1,lsize*2)),
lerp(11,0,min(1,lsize*2))
);
useCol = c_black;
useOutlineCol = c_black;
fade = 0;
surfH = (size  * 15) + fadeHeight;
if surface_exists(surf)
{
	surface_resize(surf,128,surfH);
}