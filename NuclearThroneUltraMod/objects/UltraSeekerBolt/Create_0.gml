event_inherited();
friction=0.18;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable

theColour = c_lime;
target=0;
dmg = 22;
hits=8;//normal 1
if instance_exists(Player){
if Player.skill_got[21] = 1//bolt marrow
{
hits+=2;
}
if Player.skill_got[19]//eagle eyes
hits+=1;

alarm[0]=4

}
maxSpeed = 8;
acc = 2;