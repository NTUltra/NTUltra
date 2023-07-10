scrCrowns()
room_speed = UberCont.normalGameSpeed;
p = 0
if instance_exists(Player)
{
race=Player.race;
lastarea=Player.lastarea;
loops=Player.loops;
hard=Player.hard;
kills=Player.kills;
subarea=Player.subarea;
area=Player.area;
}
else
race=0;

canReAdd = false;