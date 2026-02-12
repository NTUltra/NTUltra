/// @description Can crit

// Inherit the parent event
event_inherited();
var l = 1;
if instance_exists(Player)
{
	l = Player.luck;
}
var d = direction;
with hitTarget
{
	var crit = random(100) < 25 * l;
	if crit {
		DealDamage(other.dmg + (my_health * other.dmgPercentage));
		with instance_create(other.x,other.y,AnimDestroy)
		{
			snd_play(sndCrit,0.1);
			vspeed = -2;
			motion_add(d,1);
			sprite_index = sprCrit;
		}
	}
	if my_health < 0
	{
		with Player
		{
			var partR = 0.7;
			if wep == 944
			{
				reload += other.my_health * partR;
			}
			else if bwep == 944
			{
				breload += other.my_health * partR;
			}
			else if cwep == 944
			{
				creload += other.my_health * partR;
			}
		}
	}
}