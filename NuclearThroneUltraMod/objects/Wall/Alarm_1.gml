/// @description Corners
/*
if place_meeting(x,y,Wall)
{
if other.id > id
{
instance_destroy()
exit;
}
}

*/
if place_free(x-16,y)
l = 0
else
l = 4

if place_free(x+16,y){
    if BackCont.area = 1 or BackCont.area = 100 or BackCont.area = 4  or BackCont.area = 8 or BackCont.area = 7 or BackCont.area = 105 or BackCont.area = 109 or BackCont.area = 108 or BackCont.area = 111{
       w = 22-l
    } else if (BackCont.area = 2 ||BackCont.area=110) && (outindex >= 0 && outindex <= 3){
       w = 20-l
    } else {
       w = 24-l
    }
} else {
  w = 20-l
}

if place_free(x,y-16)
r = 0
else
r = 4

if place_free(x,y+16){
    if BackCont.area = 7{
        h = 22-r
    } else {
        h = 24-r
    }
}
else{
    h = 20-r
}
if !checked
{
	alarm[1] = 10;
	alarm[2] = 20;
	checked = true;
}