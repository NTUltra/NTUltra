/*
xx=x;
yy=y;
xxPrevious=xx;
xxPrevious=yy;
*/

if(instance_exists(target))
{
	//////draw_circle(target.x,target.y,12,1);
	//instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);

	if(instance_exists(Player)){
		if (point_distance(x,y,target.x,target.y) < range+(60*Player.skill_got[19])&& Direction>direction-30-(30*Player.skill_got[19])&&Direction<direction+30+(30*Player.skill_got[19]) )//Check if target is close to player and within the margin of the cursors direction
		{

			if isUltra || !(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls in between player and target?
			{
			    points=10;
			    distance=distance_to_object(target);
    
			    repeat(5){
			    xx=x;
			    yy=y;
			        for(i=0; i<points+2; i+=1;)
			        {
			        hue=random(225);
			        //distance=distance_to_object(target);
			        xxPrevious=xx;
			        yyPrevious=yy;
			        xx=xx+lengthdir_x(distance/points,Direction+(random(60)-30) )
			        yy=yy+lengthdir_y(distance/points,Direction+(random(60)-30) );
			        draw_line_width_color(xxPrevious,yyPrevious,xx,yy,2,make_color_hsv(hue,225,225),make_color_hsv(hue,225,255) );
			        }
			        draw_line_width_color(xx,yy,xx+lengthdir_x(distance/points+8,Direction),yy+lengthdir_y(distance/points+8,Direction),2,make_color_hsv(hue,225,225),make_color_hsv(hue,10,225) )//always land correct
			    }
			}
		}
	    points=10;
	    distance=range+random(30);//distance_to_object(target);
	    Direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5;
	    repeat(5){
	    xx=x;
	    yy=y;
	        for(i=0; i<points+2; i+=1;)
	        {
	        hue=random(225);
	        //distance=distance_to_object(target);
	        xxPrevious=xx;
	        yyPrevious=yy;
	        xx=xx+lengthdir_x(distance/points,Direction+(random(60)-30) )
	        yy=yy+lengthdir_y(distance/points,Direction+(random(60)-30) );
	        draw_line_width_color(xxPrevious,yyPrevious,xx,yy,2,make_color_hsv(hue,225,225),make_color_hsv(hue,225,255) );
	        }
	        draw_line_width_color(xx,yy,xx+lengthdir_x(distance/points+8,Direction),yy+lengthdir_y(distance/points+8,Direction),2,make_color_hsv(hue,225,225),make_color_hsv(hue,10,225) )//always land correct
	    }
	}
}
else{


    points=10;
    distance=range+random(30);//distance_to_object(target);
    Direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5;
    repeat(5){
    xx=x;
    yy=y;
        for(i=0; i<points+2; i+=1;)
        {
        hue=random(225);
        //distance=distance_to_object(target);
        xxPrevious=xx;
        yyPrevious=yy;
        xx=xx+lengthdir_x(distance/points,Direction+(random(60)-30) )
        yy=yy+lengthdir_y(distance/points,Direction+(random(60)-30) );
        draw_line_width_color(xxPrevious,yyPrevious,xx,yy,2,make_color_hsv(hue,225,225),make_color_hsv(hue,225,255) );
        }
        draw_line_width_color(xx,yy,xx+lengthdir_x(distance/points+8,Direction),yy+lengthdir_y(distance/points+8,Direction),2,make_color_hsv(hue,225,225),make_color_hsv(hue,10,225) )//always land correct
    }
}
draw_self();

/*
	TODO:
	Determine a point where to go to using collision_line_point
	Then determine the amount of points based on the distance.
	Randomization is more towards endpoint as we get closer to it
	Ultra ray turn visibility off
	Draw Ultra ray in topcont.
	Ultra ray should not use collision line point as it has no collision
	Maybe spawn morph at the endpoint
	Create a toxic ray weapon
*/
