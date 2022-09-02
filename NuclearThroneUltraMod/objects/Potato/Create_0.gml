event_inherited();
friction = 0.45
alarm[1]=2;
wallbounce = 5
if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 12

if Player.race=25
{
wallbounce = 13;

if Player.ultra_got[97] && !Player.altUltra
wallbounce+=5;
}
}
}

ang = random(360)
typ = 1

