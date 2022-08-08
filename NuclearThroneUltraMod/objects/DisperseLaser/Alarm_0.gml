alarm[0]=time;

if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
}
else
snd_play(sndLaser)

with instance_create(x,y,Laser)
{image_angle = other.image_angle+90+(random(2)-1)
team = other.team
event_perform(ev_alarm,0)
scrCopyWeaponMod(other);
}


with instance_create(x,y,Laser)
{image_angle = other.image_angle-90+(random(2)-1)
team = other.team
event_perform(ev_alarm,0)
scrCopyWeaponMod(other);
}

BackCont.shake += 2

