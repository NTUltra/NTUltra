/// @description Init
lockoutTime = 5;
alarm[3] = 13;//Cant instatoggle
resetSpeed = 4;
alarm[1] = 4;
isSnooze = true;
snd_loop(choose(sndPandaSleep1,sndPandaSleep2));
originalIdle = Player.spr_idle;
originalWalk = Player.spr_walk;
originalHurt = Player.spr_hurt;
originalWepA = Player.wep_sprt[Player.wep];
originalWepB = Player.wep_sprt[Player.bwep];
originalWepC = Player.wep_sprt[Player.cwep];
wep = noone;
bwep = noone;
cwep = noone;
with Player
{
	snd_hurt = sndMutant14SleepingHurt;
	snd_hurt_actual = sndMutant14SleepingHurt;
	if bskin == 2
	{
		spr_idle = sprPandaSleepingIdleC;
		spr_hurt = sprPandaSleepingHurtC;
		spr_walk = sprPandaSleepingWalkC;
	}
	else if bskin == 1
	{
		spr_idle = sprPandaSleepingIdleB;
		spr_hurt = sprPandaSleepingHurtB;
		spr_walk = sprPandaSleepingWalkB;
	}
	else
	{
		spr_idle = sprPandaMenu;
		spr_hurt = sprPandaSleepingHurt;
		spr_walk = sprPandaSleepingWalk;
	}
	if wep != 0
	{
		var w = instance_create(x,y,ThrowWep)
		with w
		{
			scrCopyOtherWeapon(other, other.wep);
			ammo = 0;
		}
		other.wep = w;
	}
	if bwep != 0
	{
		var bw = instance_create(x,y,ThrowWep)
		with bw
		{
			scrCopyOtherWeapon(other, other.bwep);
			ammo = 0;
		}
		other.bwep = bw;
	}
	if cwep != 0
	{
		var cw = instance_create(x,y,ThrowWep)
		with cw
		{
			scrCopyOtherWeapon(other, other.cwep);
			ammo = 0;
		}
		other.cwep = cw;
	}
	wep_sprt[wep] = sprNoGun;
	wep_sprt[bwep] = sprNoGun;
	wep_sprt[cwep] = sprNoGun;
}
alarm[2] = 1;
sleepHits = 0;