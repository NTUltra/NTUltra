function instance_nearest_not_one_of_these(xx,yy,obj,listOfObjects) {
	{
	var nearest;
	nearest = noone;
	dist = -1;
	for (ii=0; ii<instance_number(obj); ii+=1) {
	    var o, d;
	    o = instance_find(obj, ii);
		//This offset is not flexible but whatever
		var offset = 16;
		if o.object_index == FloorExplo
			offset = 8;
	    d = point_distance(xx, yy, o.x+offset, o.y+offset);
	    if (!array_contains(listOfObjects,o)) { if (nearest == noone || d < dist) { nearest = o; dist = d; } }
	    }
	return nearest;
	}
}
