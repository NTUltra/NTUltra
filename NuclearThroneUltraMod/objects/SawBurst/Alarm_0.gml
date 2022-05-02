ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
snd_play_fire(sndJackHammer)
//FIRING
if instance_exists(Player){
    with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),Shank)
    {
    dmg = 1;
	
    if instance_exists(Player){
	    Player.longarms = 0
	    Player.longarms = (Player.skill_got[13]+Player.bettermelee)*3
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,3+Player.longarms)
		if Player.ultra_got[34]//Chicken Ninja
		{
			appliedBoost = true;
			dmg *= 1.25;
			dmg = ceil(dmg);
			BackCont.shake += 1;
			image_speed *= 0.5;
			hits ++;
		}
	}
    else{
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,3)}
    image_angle = direction
    team = other.team}
}
else
{
    with instance_create(x,y,Shank)
    {
		dmg = 1;
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,3)
    image_angle = direction
    team = other.team}

}
BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
if BackCont.shake < 1
BackCont.shake = 1
creator.wkick = -8
}

if ammo <= 0
instance_destroy()


