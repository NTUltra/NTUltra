scrDrop(16,15)
audio_stop_sound(sndSalamanderFireLoop)
event_inherited()


var dir = random(360)
repeat(3)
{
with instance_create(x,y,AcidStreak)
{
motion_add(dir,8)
image_angle = direction
}
dir += 120
}

