with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
sprite_index=sprElectroEffect;
motion_add(other.direction+random(30)-15,random(2))
}

alarm[0]=5;

