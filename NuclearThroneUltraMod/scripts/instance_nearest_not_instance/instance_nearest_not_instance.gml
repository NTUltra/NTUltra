function instance_nearest_not_instance(xxx, yyy, instance,exclude) {
	//instance_nearest_notme(x, y, obj)
	var xx, yy, obj, nearest;
	xx = xxx;
	yy = yyy;
	obj = instance;
	nearest = noone;
	dist = -1;
	for (var ii=0; ii<instance_number(obj); ii+=1) {
	    var o, d;
	    o = instance_find(obj, ii);
	    d = point_distance(xx, yy, o.x, o.y);
	    if (o != exclude) { if (nearest == noone || d < dist) { nearest = o; dist = d; } }
	    }
	return nearest;
}
