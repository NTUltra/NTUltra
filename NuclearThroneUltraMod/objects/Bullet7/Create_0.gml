event_inherited();
friction = 0.6

alarm[1]=2;
wallbounce = 0
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 7
alarm[1]=3;

if Player.race=25
{
wallbounce = 8;

if Player.ultra_got[97] && !Player.altUltra
{
wallbounce+=5;
alarm[1]=4;
}
}
}
}

typ = 3;//Cant be deflected or detroyed

dmg=3;

turned=false;

alarm[0]=2;

alarm[11] = 1;