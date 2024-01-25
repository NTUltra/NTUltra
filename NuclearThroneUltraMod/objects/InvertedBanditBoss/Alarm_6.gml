scrTarget();
if target>0 && instance_exists(target) && (GetPlayerLoops() > 0 || !collision_line(x,y,target.x,target.y,Wall,0,0))
gunangle = point_direction(x,y,target.x,target.y);

if alarm[2]>0
alarm[6]=5;//Aim again

