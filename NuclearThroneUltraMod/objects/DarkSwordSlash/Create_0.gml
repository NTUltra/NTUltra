event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1
snd_wallhit=sndMeleeWall;
snd_hit=sndHitWall;

dmg=22//12 in retail

if instance_exists(Player)
{

if Player.my_health <= 0
{
	dmg=100
	sprite_index=sprMegaDarkSwordSlash;
	mask_index=mskMegaDarkSwordSlash;
}

}

