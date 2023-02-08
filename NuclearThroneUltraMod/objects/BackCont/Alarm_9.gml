/// @description Screenshake
alarm[9] = 1;

if instance_exists(GenCont)
	exit;

if !instance_exists(Menu)
{
	var normalizationSpeed = min(0.98,0.4 + (instance_number(YungCuzDupe)+instance_number(Friend)*0.1));
	viewx2 = viewx2-(viewx2-viewx)*normalizationSpeed;
	viewy2 = viewy2-(viewy2-viewy)*normalizationSpeed;
}
if instance_exists(Player)
{
	//Only start spawning vans and popo when no longer a sheep
	if Player.justAsheep 
	{
		if alarm[2] > 0
			alarm[2] += 1;
		if alarm[1] > 0
			alarm[1] ++;
	}
}

if instance_exists(YungCuzDupe)
{
	shake /= instance_number(YungCuzDupe);
}
if instance_exists(Friend)
{
	shake /= instance_number(Friend);
}
if shake > 10
shake *= 0.8
if shake > 0
shake -= 1
else
shake = 0