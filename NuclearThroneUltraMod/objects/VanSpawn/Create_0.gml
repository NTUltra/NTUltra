if instance_exists(Player) && instance_exists(Wall)
{
	var tries = 0;
	do 
	{
		tries ++;
		x = Player.x
		y = Player.y
		ang = random(360)
		x = Player.x+lengthdir_x(96+random(96),ang) y = Player.y+lengthdir_y(96+random(96),ang)
		dir = instance_nearest(x,y,Wall)
		x = dir.x+16; y = dir.y+16;
	}
	until point_distance(x,y,Player.x,Player.y) > 64 || tries > 200

}

image_speed = 0.4

//if Player.loops>=1
loops = GetPlayerLoops();
alarm[0] = 47 - min(loops*2,20);

snd_play(sndVanWarning);
RogueIDPD=false;
vertical = false;
right = 1;
alarm[2] = 1;
arrowSprite = sprVanPortalDirectionStart;
dropFreaks = false;

amountOfBullets = 4 + (clamp(loops,0,6));
//xStep = 320 / (amountOfBullets - 1);
//yStep = 240 / (amountOfBullets - 1);
bulletStep = 450 / (amountOfBullets - 1);
squareRight = 0;
if loops > 1
	alarm[3] = 2;