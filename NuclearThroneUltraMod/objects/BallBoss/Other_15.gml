/// @description Ion screenblast
var xx = Player.x - 200;
var yy = Player.y - 200;
snd_play(sndIonCharge);
for (var i = 0; i < 400; i += 96)
{
	for (var j = 0; j < 400; j += 96)
	{
		instance_create(xx + i,yy + j,EnemyIon);
	}
}
alarm[1] += actTime;
scrRaddrop(12);
scrDrop(25,0);