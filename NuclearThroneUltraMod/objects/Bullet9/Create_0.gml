event_inherited();
friction = 0.5

wallbounce = 0
alarm[1]=2;
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
	friction = 0.4;
wallbounce = 7
alarm[1]=3;

if Player.race=25
{
wallbounce = 8;

if Player.ultra_got[97] && !Player.altUltra
{
	friction = 0.3;
wallbounce+=5;
alarm[1]=4;
}
}
}
}

//ShotgunShouldersType();
typ = 3;
dmg = 4;
turned=false;

alarm[0]=2;

