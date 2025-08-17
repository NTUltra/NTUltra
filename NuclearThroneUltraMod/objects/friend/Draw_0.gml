/// @description Draw guns
if wep_type[wep] = 0
wepright = wepflip
else
wepright = right

if wep_type[bwep] = 0
bwepright = bwepflip
else
bwepright = right

if race == 7
{
	draw_sprite_ext(wep_sprt[bwep],0,x+lengthdir_x(-bwkick,gunangle+(bwepangle*(1-bwkick/20))),y+gunY-4+lengthdir_y(-bwkick,gunangle+(bwepangle*(1-wkick/20))),1,-bwepright,gunangle+(bwepangle*(1-bwkick/20)),c_white,1)
}
if gunangle <= 180 && wepVisible
	draw_sprite_ext(wep_sprt[wep],0,x+lengthdir_x(-wkick,gunangle+(wepangle*(1-wkick/20))),y+gunY+lengthdir_y(-wkick,gunangle+(wepangle*(1-wkick/20))),1,wepright,gunangle+(wepangle*(1-wkick/20)),c_white,1)
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
	if race == 24 && my_health > 0 && instance_exists(ElementorHead) //Elemental Mushroom head
	{
		mushroomhead = scrElementorMushroomHead();
		draw_sprite_ext(mushroomhead,-1,x,y,right,image_yscale,image_angle,ElementorHead.col,1)
	}
if gunangle > 180 && wepVisible
	draw_sprite_ext(wep_sprt[wep],0,x+lengthdir_x(-wkick,gunangle+(wepangle*(1-wkick/20))),y+gunY+lengthdir_y(-wkick,gunangle+(wepangle*(1-wkick/20))),1,wepright,gunangle+(wepangle*(1-wkick/20)),c_white,1)
	
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1

if race == 7
{
if bwkick > 0
bwkick -= 1
if bwkick < 0
bwkick += 1
}