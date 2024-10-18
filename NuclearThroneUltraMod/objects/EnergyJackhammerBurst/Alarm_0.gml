ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
snd_play_fire(sndJackHammer)
//FIRING
if instance_exists(Player){
    with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(4+(Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),EnergyShank)
    {
		hasCosted = other.hasCosted;
	    dmg = 4;
		knockback = 2;
	    if instance_exists(Player){
	    Player.longarms = 0
	    Player.longarms = (Player.skill_got[13]+Player.bettermelee)*3
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,4+Player.longarms)}
	    else{
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,4)}
	    image_angle = direction
		scrCopyWeaponMod(other);
	    team = other.team
	}
}
else
{
    with instance_create(x,y,EnergyShank)
    {
		dmg = 4;
		knockback = 2;
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,3)
    image_angle = direction
    team = other.team}

}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
if BackCont.shake < 1
BackCont.shake = 1
creator.wkick = -8}


if ammo <= 0
instance_destroy()


