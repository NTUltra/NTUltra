event_inherited();
friction = 0.5

wallbounce = 0
alarm[1]=2;
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

typ = 1
ShotgunShouldersType();
dmg=3;
turned=false;

alarm[0]=2;

