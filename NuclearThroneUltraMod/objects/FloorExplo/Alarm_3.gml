/// @description Create the walls around it

//Create the walls around it
if !place_meeting(x-16,y,Floor)
instance_create(x-16,y,Wall)


if !place_meeting(x+16,y,Floor)
instance_create(x+16,y,Wall)


if !place_meeting(x,y+16,Floor)
instance_create(x,y+16,Wall)


if !place_meeting(x,y-16,Floor)
instance_create(x,y-16,Wall)


if !place_meeting(x-16,y+16,Floor)
instance_create(x-16,y+16,Wall)


if !place_meeting(x+16,y-16,Floor)
instance_create(x+16,y-16,Wall)


if !place_meeting(x+16,y+16,Floor)
instance_create(x+16,y+16,Wall)


if !place_meeting(x-16,y-16,Floor)
instance_create(x-16,y-16,Wall)


if !place_meeting(x-32,y,Floor) && !place_meeting(x-32,y,Wall)
	instance_create(x-32,y,Top)
if !place_meeting(x,y-32,Floor) && !place_meeting(x,y-32,Wall)
	instance_create(x,y-32,Top)
if !place_meeting(x,y+32,Floor) && !place_meeting(x,y+32,Wall)
	instance_create(x,y+32,Top)
if !place_meeting(x+32,y,Floor) && !place_meeting(x+32,y,Wall)
	instance_create(x+32,y,Top)
	
if !place_meeting(x-32,y-32,Floor) && !place_meeting(x-32,y-32,Wall)
	instance_create(x-32,y-32,Top)
if !place_meeting(x+32,y-32,Floor) && !place_meeting(x+32,y-32,Wall)
	instance_create(x+32,y-32,Top)
if !place_meeting(x-32,y+32,Floor) && !place_meeting(x-32,y+32,Wall)
	instance_create(x-32,y+32,Top)
if !place_meeting(x+32,y+32,Floor) && !place_meeting(x+32,y+32,Wall)
	instance_create(x+32,y+32,Top)