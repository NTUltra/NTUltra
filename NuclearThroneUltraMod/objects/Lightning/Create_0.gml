event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

accuracy=24;

image_speed = 0.4
target=enemy;
dmg=4;
if instance_exists(Player){
if Player.skill_got[17] = 1{
image_speed = 0.3-(Player.betterlaserbrain*0.06)}

if Player.skill_got[19]==1
{
accuracy=10;
}

if Player.ultra_got[59]=1//atom electron ultra
{
image_speed-=0.1;
}

}

isog = true;
canUltraMod = true;
canBeMoved = false;