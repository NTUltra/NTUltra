var gunY = 0;draw_sprite_ext(sprBuffMushroomGun,0,
x+lengthdir_x(-wkick,gunangle),
y+gunY-4+lengthdir_y(-wkick,gunangle),1,
-right,gunangle,c_white,1);
if gunangle <= 180
{
draw_sprite_ext(sprBuffMushroomGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
}
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
{
draw_sprite_ext(sprBuffMushroomGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
}
