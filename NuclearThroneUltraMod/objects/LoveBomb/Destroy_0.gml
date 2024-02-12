/// @description Deliver some love
with instance_create(x,y,LoveExplosion)
{
	team = other.team;
	scrCopyWeaponMod(other);
}
var step = 16;
y-=step;
with instance_create(x,y+step,Explosion)
	scrCopyWeaponMod(other);
with instance_create(x-step,y,Explosion)
	scrCopyWeaponMod(other);
with instance_create(x+step,y,Explosion)
	scrCopyWeaponMod(other);
y += step;
if instance_exists(Player) && Player.canHeal && random(100) < 10//7.69% chance
{
	with instance_create(Player.x,Player.y-8,HealFX)
	{
		sprite_index=sprBloodlust;
	}
	snd_play_2d(sndBloodlustProc);
	var num = 1
	scrHeal(1);
}