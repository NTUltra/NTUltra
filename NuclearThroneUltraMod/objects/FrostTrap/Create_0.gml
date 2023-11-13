side = choose(0,1)
alarm[0] = 100+random(40)
fire = 0
myscorch = instance_create(x,y,TrapScorchMark)

loop=false;

if instance_exists(Player)
{
if Player.loops>1//loop 2 yo
loop=true;
}

alarm[1] = 1;