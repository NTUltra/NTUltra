//ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

repeat(rate)
{

with instance_create(x,y,Flame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,6+random(2+other.rate*2))
team = other.team
scrCopyWeaponMod(other);
dmg=other.dmg;
sprite_index=sprFireLilHunter;}
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
wkick = 2}


//if ammo <= 0
if random(9)<1{
rate+=1;
rage+=1;
}

if rate>4{
rate=4;

if random(30)<1
dmg+=1;

if dmg>6
dmg=6;
}

if rage>60
rage=60;

room_speed=UberCont.normalGameSpeed+rage;

if instance_exists(Player){
//if theres another bust or you're no longer holding button
if (KeyCont.key_fire[Player.p] != 1 && KeyCont.key_fire[Player.p] != 2) || (KeyCont.key_swap[Player.p] = 1) || (Player.ammo[4]<2)
{
instance_destroy()
with TimeThrowerBurst
instance_destroy();
}
}
else
instance_destroy();

