target = -1
team = 1;
enemies = max(instance_number(enemy),5);

if instance_exists(Player)
{
area=Player.area;
loops = Player.loops
subarea=Player.subarea;
}
else
{
area=BackCont.area;
subarea=BackCont.subarea;
loops = BackCont.loops
}
oasis=false;


alarm[1] = 60;
