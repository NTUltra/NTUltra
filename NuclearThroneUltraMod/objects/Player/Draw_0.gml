if !canDrawMe
	exit;
var alpha = 1;
if isInvisible
	alpha = 0.4;
var originalRace = race;
if ultra_got[50] && altUltra
{
	race = fakeRace;
}
var yy = y;
if hammerheadDig > 0
{
	yy += 6;
}
if jump > 0
{
	if jump > halfJump
	{
		jumpY = min(visualJumpHeight,lerp(visualJumpHeight,0,(jump-halfJump)/halfJump));
	}
	else
	{
		jumpY = min(visualJumpHeight,lerp(0,visualJumpHeight,jump/halfJump));
	}
	yy = y - jumpY;
}
var aimDirection = point_direction(x,yy,UberCont.mouse__x,UberCont.mouse__y);
if wep == 818 // POGO STICK
{
	var f = 270;//point_direction(x,y,FocusAim.x,FocusAim.y);
	aimDirection += angle_difference(f,aimDirection) * 0.9;
}
else if instance_exists(SpinWeapon)
{
	aimDirection += SpinWeapon.rotation;
}
if (drawTailIntro == 1) {
	draw_sprite_ext(sprTailIntro,tailWave,x,yy,-right,1,0,c_white,alpha);
	if round(tailWave) == sprite_get_number(sprTailIntro)
	{
		tailWave = 0;
		drawTailIntro = 0;
		if !drawTail
			drawTailIntro = 3;	
	}
}
else if (drawTailIntro == 3) {
	draw_sprite_ext(sprTailOutro,tailWave,x,yy,-right,1,0,c_white,alpha);
	if round(tailWave) == sprite_get_number(sprTailOutro)
	{
		tailWave = 0;
		drawTailIntro = 0;
		if drawTail
			drawTailIntro = 1;
	}
} 
else if drawTail || drawTailIntro == 2
{
	draw_sprite_ext(sprTailEnd,tailWave,x,yy,-right,1,0,c_lime,alpha);
	if round(tailWave) == sprite_get_number(sprTailEnd)
	{
		tailWave = 0;
		if drawTailIntro == 2
			drawTailIntro = 3;
	} else if drawTailIntro == 2
	{
		if UberCont.normalGameSpeed == 60
			tailWave += 0.1;
		else
			tailWave += 0.2;	
	}
}
if alienIntestines > 0
{
	if alienIntestines > 180
	{
		draw_sprite_ext(sprAlienIntestines3,wave,x,yy,abs(right),image_yscale,alienIntestines*alienDir,c_white,alpha);
	}
	else if alienIntestines > 80
	{
		draw_sprite_ext(sprAlienIntestines2,wave,x,yy,abs(right),image_yscale,alienIntestines*alienDir,c_white,alpha);
	}else if alienIntestines > 25
	{
		draw_sprite_ext(sprAlienIntestines1,wave,x,yy,abs(right),image_yscale,alienIntestines*alienDir,c_white,alpha);
	}
}
if race = 3 and (KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2)
{
	if bskin == 6
	{
		if skill_got[5]
			draw_sprite_ext(sprMindPowerVoidTB,wave,x,yy,right,1,0,c_white,alpha)
		else
			draw_sprite_ext(sprMindPowerVoid,wave,x,yy,right,1,0,c_white,alpha)
	}
	else
	{
		if skill_got[5]
			draw_sprite_ext(sprMindPowerTB,wave,x,yy,right,1,0,c_white,alpha)
		else
			draw_sprite_ext(sprMindPower,wave,x,yy,right,1,0,c_white,alpha)
	}
}
else if ultra_got[10] && !altUltra
{
	if bskin == 6
	{
		if skill_got[5]
			draw_sprite_ext(sprMonsterStyleVoidTB,wave,x,yy,right,1,0,c_white,alpha)
		else
			draw_sprite_ext(sprMonsterStyleVoid,wave,x,yy,right,1,0,c_white,alpha)
	}
	else
	{
		if skill_got[5]
			draw_sprite_ext(sprMonsterStyleTB,wave,x,yy,right,1,0,c_white,alpha)
		else
			draw_sprite_ext(sprMonsterStyle,wave,x,yy,right,1,0,c_white,alpha)
	}
}
if wep_type[wep] = 0
wepright = wepflip
else
wepright = right

if wep_type[bwep] = 0
bwepright = bwepflip
else
bwepright = right

if bwep != 0 and race != 7 && !instance_exists(PandaSleep)
{
	draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*2,yy,image_yscale,bwepright,90+15*right,c_silver,alpha)
	if scrIsDualWield(bwep) {
		draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*2.25,yy,image_yscale,bwepright,90+20*right,c_silver,alpha)	
	}
}

if scrEnableLaserSight()
{
	if wep == 399 || wep == 552 //Wrong direction
	{
		
		lasd = 0
		var aimDir = aimDirection;
		var sx = x + lengthdir_x(8,aimDir);
		var sy = yy + lengthdir_y(8,aimDir);
		lasx = sx
		lasy = sy
		aimDir += 90*accuracy
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
		lasx = sx
		lasy = sy
		lasd = 0
		var aimDir = aimDirection - 90*accuracy
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
		if wep == 552
		{
			lasx = sx
			lasy = sy
			lasd = 0
			var aimDir = aimDirection + 180
			do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
			until position_meeting(lasx,lasy,Wall) or lasd > 1000
			draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
		}
	}
	else
	{
		lasx = x
		lasy = yy
		lasd = 0
		var aimDir = aimDirection
		do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
	
		draw_sprite_ext(sprLaserSightPlayer,-1,x,yy,point_distance(x,yy,lasx,lasy)/2+2,image_yscale,aimDirection,c_white,alpha)
	}
}

if ultra_got[31]//draw robots third weapon on its back
{
	draw_sprite_ext(wep_sprt[cwep],triggerfinger,x-right,yy-2,image_xscale,bwepright,90+right*-15,c_silver,alpha)
	if scrIsDualWield(cwep) {
		draw_sprite_ext(wep_sprt[cwep],triggerfinger,x-right*1.25,yy,image_yscale,bwepright,90-20*right,c_silver,alpha)	
	}
}
//DUAL WIELDING
if (ultra_got[27]=1 && !altUltra)//copy primary
{

	//first draw secondary on back of roids
	draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*4,yy-2,image_xscale,-bwepright,90+right*30,c_white,alpha)

	draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+right,yy-2,image_xscale,-bwepright,90+right*30,c_white,alpha)

	twep=bwep;//save secondary in third wepslot
	bwep=wep;//secondary slot will now be your primary
	//bwepangle=wepangle;//angle

}
//Roids lasersight
if race == 7 and bwep != 0
{
	if wep_type[bwep] = 3 and bwep != 18
	{
		if bwep == 399 || wep == 552//Wrong direction
		{
			lasd = 0
			var aimDir = aimDirection;
			var sx = x + lengthdir_x(8,aimDir);
			var sy = yy-4 + lengthdir_y(8,aimDir);
			lasx = sx
			lasy = sy
			aimDir += 90*accuracy
			do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
			until position_meeting(lasx,lasy,Wall) or lasd > 1000
			draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
			lasx = sx
			lasy = sy
			lasd = 0
			var aimDir = aimDirection - 90*accuracy
			do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
			until position_meeting(lasx,lasy,Wall) or lasd > 1000
			draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
			if wep == 552
			{
				lasx = sx
				lasy = sy
				lasd = 0
				var aimDir = aimDirection + 180
				do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
				until position_meeting(lasx,lasy,Wall) or lasd > 1000
				draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,alpha)
			}
		}
		else
		{
			lasx = x
			lasy = yy-4
			lasd = 0
			do {lasd += 1 lasx += lengthdir_x(2,aimDirection) lasy += lengthdir_y(2,aimDirection)}
			until position_meeting(lasx,lasy,Wall) or lasd > 1000
			draw_sprite_ext(sprLaserSightPlayer,-1,x,yy-4,point_distance(x,yy,lasx,lasy)/2+2,image_yscale,aimDirection,c_white,alpha)
		}
	}
	draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+lengthdir_x(-bwkick,aimDirection+(bwepangle*(1-bwkick/20))),yy+gunY-4+lengthdir_y(-bwkick,aimDirection+(bwepangle*(1-bwkick/20))),image_yscale,-bwepright,aimDirection+(bwepangle*(1-bwkick/20)),c_white,alpha)
	if scrIsDualWield(bwep)
	{
		draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+lengthdir_x(-bwkick,aimDirection+(-bwepangle*(1-bwkick/30))),yy+gunY+lengthdir_y(-bwkick,aimDirection+(-bwepangle*(1-bwkick/30))),image_yscale,bwepright,aimDirection+(-bwepangle*(1-bwkick/30)),c_white,alpha)
	}
	if bwep = 63 || wep = 343//Blackhole/Dimension Generator
	{
		if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{

		draw_sprite_ext(sprBlackHoleGeneration,triggerfinger,x+lengthdir_x(-bwkick,aimDirection+(bwepangle*(1-wkick/20))),yy+gunY-4+lengthdir_y(-bwkick,aimDirection+(bwepangle*(1-wkick/20))),image_yscale,-bwepright,aimDirection+(bwepangle*(1-wkick/20)),c_white,alpha)
		}
	}

}

if (ultra_got[27]=1 && !altUltra)//copy primary
{
	bwep=twep;//and return weapon
}
//DRAW DA GUNZ
if scrIsDualWield(wep)
{
	//draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+lengthdir_x(-bwkick,aimDirection+(bwepangle*(1-bwkick/20))),yy+gunY-4+lengthdir_y(-bwkick,aimDirection+(bwepangle*(1-bwkick/20))),image_yscale,-bwepright,aimDirection+(bwepangle*(1-bwkick/20)),c_white,alpha)
	draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,aimDirection+(-wepangle*(1-wkick/30))),yy+gunY+lengthdir_y(-wkick,aimDirection+(-wepangle*(1-wkick/30))),image_yscale,-wepright,aimDirection+(-wepangle*(1-wkick/30)),c_white,alpha)
}
if back = 1 and (!(IsShielding)||(ultra_got[7]==1)) && !instance_exists(PandaSleep){
	draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,aimDirection+(wepangle*(1-wkick/20))),yy+gunY+lengthdir_y(-wkick,aimDirection+(wepangle*(1-wkick/20))),image_yscale,wepright,aimDirection+(wepangle*(1-wkick/20)),c_white,alpha)
	
if wep = 63 || wep = 343//Blackhole/Dimension Generator
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{

draw_sprite_ext(sprBlackHoleGeneration,wave,x+lengthdir_x(-wkick,aimDirection+(wepangle*(1-wkick/20))),yy+gunY+lengthdir_y(-wkick,aimDirection+(wepangle*(1-wkick/20))),image_yscale,wepright,aimDirection+(wepangle*(1-wkick/20)),c_white,alpha)
}}
}
var playerAlpha = alpha;
if instance_exists(Decoy) || rollIframe > 0 || instance_exists(Ghosting)
	playerAlpha = max(0.2,alpha - 0.6);
if hammerheadDig <= 0
{
	if alarm[3] > 0
	{
		shader_set(shdDrawAqua);
			draw_sprite_ext(sprite_index,image_index,x+1,yy+1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,x+1,yy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,x-1,yy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,x-1,yy+1,right,image_yscale,angle,c_white,alpha);
		shader_reset();
	}
	draw_sprite_ext(sprite_index,-1,x,yy,right,image_yscale,angle,c_white,playerAlpha)//PLAYER GETS DRAWN HERE
	if race == 24 && my_health > 0 && instance_exists(ElementorHead) //Elemental Mushroom head
	{
		mushroomhead = scrElementorMushroomHead();
		draw_sprite_ext(mushroomhead,-1,x,yy,right,image_yscale,angle,ElementorHead.col,playerAlpha)
	}
}
else
{
	if !surface_exists(digSurface) {
		digSurface = surface_create(2 + sprite_width,2 + (sprite_height * 0.5));
	}
	surface_set_target(digSurface);
	draw_clear_alpha(c_black,0);
	var xxx = 1 + surface_get_width(digSurface) * 0.5;
	var yyy = 1 + sprite_height * 0.5;
	if ((gunGodImmune && alarm[3] > 0) || (ultra_got[75] && speed == 0))
	{
		shader_set(shdDrawWhite);
			draw_sprite_ext(sprite_index,image_index,xxx+1,yyy+1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx+1,yyy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx-1,yyy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx-1,yyy+1,right,image_yscale,angle,c_white,alpha);
		shader_reset();
	}
	else if alarm[3] > 0
	{
		shader_set(shdDrawAqua);
			draw_sprite_ext(sprite_index,image_index,xxx+1,yyy+1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx+1,yyy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx-1,yyy-1,right,image_yscale,angle,c_white,alpha);
			draw_sprite_ext(sprite_index,image_index,xxx-1,yyy+1,right,image_yscale,angle,c_white,alpha);
		shader_reset();	
	}
	draw_sprite_ext(sprite_index,-1,xxx,yyy,right,image_yscale,angle,c_white,playerAlpha)//PLAYER GETS DRAWN HERE
	if race == 24 && my_health > 0 && instance_exists(ElementorHead) //Elemental Mushroom head
	{
		mushroomhead = scrElementorMushroomHead();
		draw_sprite_ext(mushroomhead,-1,xxx,yyy,right,image_yscale,angle,ElementorHead.col,playerAlpha)
	}
	surface_reset_target()
	draw_surface(digSurface,x - xxx,yy - yyy);
	var ly = yy - yyy + surface_get_height(digSurface);
	draw_sprite(sprPlayerDigLine,-1,x,ly);
}

//Alkaline Saliva
if skill_got[32] && isAlkaline// && my_health < maxhealth && lag < 1 && armour < 1
	draw_sprite_ext(sprAlkalineSaliva,wave,x,yy,right,1,0,c_white,alpha - 0.25);

if triggerfinger>0
triggerfinger+=1;

if triggerfinger>7 
triggerfinger=0;

if back = -1 and !(IsShielding) && !instance_exists(PandaSleep){
	draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,aimDirection+(wepangle*(1-wkick/20))),yy+gunY+lengthdir_y(-wkick,aimDirection+(wepangle*(1-wkick/20))),image_yscale,wepright,aimDirection+(wepangle*(1-wkick/20)),c_white,alpha)
	if wep = 63 || wep = 343//Blackhole/Dimension Generator
	{
		if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{
			draw_sprite_ext(sprBlackHoleGeneration,wave,x+lengthdir_x(-wkick,aimDirection+(wepangle*(1-wkick/20))),yy+gunY+lengthdir_y(-wkick,aimDirection+(wepangle*(1-wkick/20))),image_yscale,wepright,aimDirection+(wepangle*(1-wkick/20)),c_white,alpha)
		}
	}
}

//else if ultra_got[11]=1// keep the animations goin on brainwashed enemies
//{wave+=1;}

if skill_got[25]=1//strong spirit draw this behind weps
{
if strongspiritused==false&&strongspirit
{
draw_sprite_ext(sprStrongSpirit,wave*0.4,x,yy,right,1,0,c_white,alpha);
}
}

if ultra_got[48]//yung cuz lives
{
draw_sprite_ext(sprYungCuzLives,lag,x,yy-8,1,1,0,c_white,alpha);
}
/*
draw_set_blend_mode(bm_add)

if skill_got[8]//gamma guts
{
draw_sprite_ext(sprGammaGuts,wave*0.4,x,yy,1.1,1.1,image_angle,c_white,0.1)
}

draw_set_blend_mode(bm_normal)
*/

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
if nearWall
	draw_sprite(sprHammerHeadNear,wave,x,yy-16);
	
race = originalRace;