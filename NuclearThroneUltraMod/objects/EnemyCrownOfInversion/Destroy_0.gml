/// @description Transform area into inverted area
event_inherited();
scrDrop(100,0);
snd_play(sndCrownBlood);
instance_create(x,y,Flash);
__background_set_colour( make_color_rgb(58, 34, 46) );
with BackCont
{
	area = 129;	
}
with Player
{

	area = 129;
	scrApplyHandsInversion();
}
scrActivateAllOutOfRange();
with FloorExplo
{
	sprite_index = sprFloor129Explo;
}
with Wall
{
	topspr=sprWall129Top;
	outspr=sprWall129Out;
	sprite_index=sprWall129Bot;
}
with Top
{
	sprite_index=sprWall129Trans;
}
with TopSmall
{
	sprite_index=sprWall129Trans;
}
with Player
{
	if !collision_point(x,y,Floor,false,false)
	{
		var n =	instance_nearest_not_one_of_these(x,y,Floor,[FloorExplo]);
		x = n.x + 16;
		y = n.y + 16;
		instance_create(x,y,WallBreak);
		scrForcePosition60fps();
	}
}
var dis = 248;
if scrIsGamemode(6)
	dis = 48;

var pExist = instance_exists(Player);
with Floor
{
	spawnarea = 129;
	if object_index != FloorExplo
	{
		if styleb
			sprite_index = sprFloor129B;
		else
			sprite_index = sprFloor129;
		if pExist && point_distance(x, y, Player.x, Player.y) > dis && !place_meeting(x,y,Wall)
		{
			scrSpawnSomeEnemies();
		}
	}
}
with enemy
{
	alarm[1] += irandom_range(30,90);	
}
with MusCont
{
	audio_stop_sound(song);
	song = musUltra129;
	snd_loop(song);
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
    
    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
    
    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
with BackCont
{
	heavyrain = true;	
}
instance_create(x,y,WantBoss);
with Player
{
	if skill_got[29]//insomnia
	{
		var t = 180;
		if race = 25
		{
			t = 220;
		}
		if !justAsheep
		{
			with enemy
			{
				if alarm[1]>0
				{
					alarm[1]+=t;
					scrGiveSnooze();
				}
			}
		}
		//Store this list of enemies to put to sleep when sheep passive is done
	}
}