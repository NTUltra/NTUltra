instance_create(0,0,BackCont)
instance_create(0,0,TopCont)
depth = TopCont.depth - 1;
//randomize();
dix = 32
diy = 32

__background_set_colour( make_color_rgb(106,122,175) )

//x=64;
//y=96;
//64,96 is the campfire


repeat(4)//3
{
repeat(5)//4
{
modx = choose(32,0,-32)
mody = choose(32,0,-32)
instance_create(x+dix+mody,y+diy+mody,Floor)
instance_create(x+dix+mody+32,y+diy+mody,Floor)
instance_create(x+dix+mody-32,y+diy+mody,Floor)

instance_create(x+dix+mody,y+diy+mody+32,Floor)
instance_create(x+dix+mody+32,y+diy+mody+32,Floor)
instance_create(x+dix+mody-32,y+diy+mody+32,Floor)

instance_create(x+dix+mody,y+diy+mody-32,Floor)
instance_create(x+dix+mody+32,y+diy+mody-32,Floor)
instance_create(x+dix+mody-32,y+diy+mody-32,Floor)
dix += 32
}
dix = 0
diy += 32
}
__view_set( e__VW.XView, 0, 64-__view_get( e__VW.WView, 0 )/2 )
__view_set( e__VW.YView, 0, 48-__view_get( e__VW.HView, 0 )/2 )

alarm[0] = 2


