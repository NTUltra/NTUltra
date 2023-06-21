if wep_type[wep] = 0
wepright = wepflip
else
wepright = right

if wep_type[bwep] = 0
bwepright = bwepflip
else
bwepright = right

if bwep != 0 and race != 7
draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*2,y,1,bwepright,90+15*right,c_silver,1)

if wep_type[wep] = 3 and wep != 18
{
	if wep == 399 //Wrong direction
	{
		
		lasd = 0
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		var sx = x + lengthdir_x(8,aimDir);
		var sy = y + lengthdir_y(8,aimDir);
		lasx = sx
		lasy = sy
		aimDir += 90
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,1,aimDir,c_white,1)
		lasx = sx
		lasy = sy
		lasd = 0
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) - 90
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,1,aimDir,c_white,1)
	}
	else
	{
		lasx = x
		lasy = y
		lasd = 0
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
	
		draw_sprite_ext(sprLaserSightPlayer,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),c_white,1)
	}
	/*
lasx = x
lasy = y
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)) lasy += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))}
until position_meeting(lasx,lasy,Wall) or lasd > 1000

draw_sprite_ext(sprLaserSightPlayer,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),c_white,1)
*/
}



//DRAW DA GUNZ

if back = 1{
draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20)),c_white,1)

if wep == 63
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{

draw_sprite_ext(sprBlackHoleGeneration,wave*0.4,x+lengthdir_x(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20)),c_white,1)
}}
}
draw_sprite_ext(sprite_index,-1,x,y,right,1,angle,c_white,1);

//Alkaline Saliva
if isAlkaline// && my_health < maxhealth
	draw_sprite_ext(sprAlkalineSaliva,wave,x,y,right,1,0,c_white,0.8);
	
if triggerfinger>0
triggerfinger+=1;

if triggerfinger>7 
triggerfinger=0;

if back = -1{
draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20)),c_white,1)
if wep == 63
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{
draw_sprite_ext(sprBlackHoleGeneration,wave*0.4,x+lengthdir_x(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(wepangle*(1-wkick/20)),c_white,1)
}}
}

//else if ultra_got[11]=1// keep the animations goin on brainwashed enemies
//{wave+=1;}
if Player.skill_got[25]=1
{
if strongspiritused==false&&strongspirit
{
draw_sprite_ext(sprStrongSpirit,wave*0.2,x,y,right,1,0,c_white,1);
}
}


draw_set_blend_mode(bm_add)

if Player.skill_got[8]//gamma guts
{
draw_sprite_ext(sprGammaGuts,wave*0.4,x,y,1.1,1.1,image_angle,c_white,0.1)
}

draw_set_blend_mode(bm_normal)

if UberCont.normalGameSpeed == 60
	wave += 0.5;
else
	wave ++

if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1

if nearWall
	draw_sprite(sprHammerHeadNear,wave,x,y-16);