event_inherited();
friction = 0.4

wallbounce = 0

if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
wallbounce = 8

if Player.race=25
{
wallbounce = 9;

if Player.ultra_got[97]
wallbounce+=5;
}
}
}

typ = 1
alarm[0]=1;
dmg = 1;

//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
//thisBolt=instance_number(Bolt)+instance_number(ToxicBolt)+instance_number(Splinter);

