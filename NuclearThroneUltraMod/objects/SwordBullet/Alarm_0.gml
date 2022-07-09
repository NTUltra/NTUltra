snd_play(sndHammer,0.2,true)

instance_create(x,y,Dust)

if instance_exists(Player){
with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),Slash)
{
direction=random(360)
ang = direction
dmg = 3
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team

}
}
else{
with instance_create(x,y,Slash)
{
direction=random(360)
ang = direction
dmg = 3
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team

}
}
alarm[0]=4;

