var ang = random(360)
if instance_exists(Player)
{
if place_free(Player.x+lengthdir_x(64,ang),Player.y+lengthdir_y(64,ang)) and place_meeting(Player.x+lengthdir_x(64,ang),Player.y+lengthdir_y(64,ang),Floor)
{
snd_play(sndBigMaggotUnburrow,0,true)
alarm[1] = 5/0.4
//dust ring here plz
x = Player.x+lengthdir_x(64,ang)
y = Player.y+lengthdir_y(64,ang)
scrForcePosition60fps();
image_index = 0
sprite_index = sprBigMaggotAppearInvert
visible = 1
}
else
alarm[0] = 1
}

