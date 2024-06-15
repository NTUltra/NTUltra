if isFullyImmune
{
	shader_set(shdDrawAqua);
	draw_sprite(sprite_index,-1,x + 1,y + 1);
	draw_sprite(sprite_index,-1,x,y + 1);
	draw_sprite(sprite_index,-1,x + 1,y);
	
	draw_sprite(sprite_index,-1,x - 1,y + 1);
	draw_sprite(sprite_index,-1,x - 1,y + 1);
	
	draw_sprite(sprite_index,-1,x - 1,y - 1);
	draw_sprite(sprite_index,-1,x,y - 1);
	draw_sprite(sprite_index,-1,x - 1,y);
	shader_reset();
}
if instance_exists(Player)
{
if Player.ultra_got[6]=1 && !Player.altUltra{

if x!=xprevious||y!=yprevious
{
    if Player.bskin=2
    {
    draw_sprite(sprCrystalShieldCWalkBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldCWalkFront,wave,x+max(0,random(time/60)-2),y-8)
    }
    else if Player.bskin=1
    {
    draw_sprite(sprCrystalShieldBWalkBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldBWalkFront,wave,x+max(0,random(time/60)-2),y-8)
    }
    else
    {
    draw_sprite(sprCrystalShieldWalkBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldWalkFront,wave,x+max(0,random(time/60)-2),y-8)
    }
}
else
{
wave=0;
    if Player.bskin=2
    {
    draw_sprite(sprCrystalShieldCIdleBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldCIdleFront,wave,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
    else if Player.bskin=1
    {
    draw_sprite(sprCrystalShieldBIdleBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldBIdleFront,wave,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
    else
    {
    draw_sprite(sprCrystalShieldIdleBack,wave,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldIdleFront,wave,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
}

}
else
draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
}
else
draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))

