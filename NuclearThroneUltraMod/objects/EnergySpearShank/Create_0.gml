event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable
snd_wallhit = choose(sndEnergySpearHit1,sndEnergySpearHit2);
startSpr = sprEnergySpearSlashStart;
startMsk = mskSpearSlashStart;
endSpr = sprEnergySpearSlashEnd;
endMsk = mskSpearSlashEnd;
maxRange += 20;
dmg = 30;
if instance_exists(Player)
{
	if Player.skill_got[17]
	{
		image_speed = max(0.15,0.25-(Player.betterlaserbrain*0.6))
		image_yscale += 0.25;
		hits ++;
		shk++;
	}
}
