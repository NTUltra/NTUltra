/// @description Teller
var xx = centerX + spawnX[posItell]+random_range(24,-24);
var yy = centerY + spawnY[posItell]+random_range(24,-24);
var ranPosX = false;
var ranPosY = false;
if variable_struct_exists(wave[spawnItell],"echo")
{
	if variable_struct_exists(wave[spawnItell],"noX") && wave[spawnItell].noX
	{
		ranPosX = true;
	}
	if variable_struct_exists(wave[spawnItell],"noY") && wave[spawnItell].noY
	{
		ranPosY = true;
	}
	
}
if variable_struct_exists(wave[spawnItell],"xx") && !ranPosX
{
	xx = wave[spawnItell].xx;
}
else
{
	wave[spawnItell].xx = xx;	
}
if variable_struct_exists(wave[spawnItell],"yy") && !ranPosY
{
	yy = wave[spawnItell].yy;
}
else
{
	wave[spawnItell].yy = yy;
}
instance_create(xx,yy,SurvivalPortal);
instance_create(xx,yy,WallBreak);
spawnItell ++;
if spawnItell < waveLength
{
	alarm[3] = wave[spawnItell-1].time;
}
posItell ++
if posItell > posIlength
	posItell = 0;