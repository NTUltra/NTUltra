scrDrop(100,0)
scrDrop(100,0)

event_inherited()

var angStep = 360/discAmount;
var ang = image_angle;
repeat(discAmount)
{
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(ang,other.projectileSpeed*1.15)
		dist=-50;
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}
ang += angStep*0.5;
repeat(discAmount)
{
	with instance_create(x,y,EnemyDisc)
	{
		motion_add(ang,other.projectileSpeed*0.7)
		dist=-200;
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}


instance_create(x,y,Explosion);
var ang = random(360);
var l = 32;
repeat(3)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),Explosion);
	ang += 120;
}
var l = 48;
ang = random(360);
repeat(6)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),SmallExplosion);
	ang += 60;
}
scrEnemyDeathEvent();
Sleep(50)
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(object_index) < 2 && !instance_exists(PitNavigation)
	with MusCont {
		audio_stop_sound(song)
		if instance_exists(Player) 
		{
			if Player.area == 5
				song = mus5;
			else if Player.area == 107
				song = mus5b;
			else if Player.area == 117 || Player.area == 124
				song = musUltraMushroomland;
		}
		snd_loop(song)
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}