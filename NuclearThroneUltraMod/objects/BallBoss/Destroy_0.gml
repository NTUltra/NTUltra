scrDrop(100,0)
snd_play(sndExplosionXXL);
instance_create(x,y,GreenExplosion);
scrBossKill();
var am = 4;
var angstep = 360/am;
var dir = random(360);
var l = 12;
with myShield
	instance_destroy();
repeat(am)
{
	var xx = x + lengthdir_x(l,dir);
	var yy = y + lengthdir_y(l,dir);
	instance_create(xx,yy,Explosion);
	dir += angstep;
}

with MusCont
{
	audio_stop_sound(song);
	song = sndVaultBossWin
	snd_play_2d(song)
	audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
	audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
	audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

}
event_inherited();
//Cleare the lockin
if !instance_exists(InvaderBossSpawnPortal)
{
	UberCont.canSave = true;
	with BallBossPlateau
	{
		instance_create(x,y,SaveStation);
	}
	with Floor
	{
		if !isArenaFloor
		{
			var walls = ds_list_create();
			var al = instance_place_list(x,y,Wall,walls,false)
			for (var i = 0; i < al; i++) {
				instance_destroy(walls[| i]);
			}
			ds_list_clear(walls);
		}
	}
}