alarm[0] = 100+random(40)
fire = 0
alarm[1] = 1;
depth = -8;
image_speed = 0;
fireSpeed = 0;
ang = random(360);
fireSpeed = 0;
spinRate = 3
if GetPlayerLoops() > 0
	spinRate += 1;
myscorch = instance_create(x,y,TrapScorchMark)
with myscorch {
	sprite_index = spr360TrapScorchMark;
}

onDuration = 360/spinRate;