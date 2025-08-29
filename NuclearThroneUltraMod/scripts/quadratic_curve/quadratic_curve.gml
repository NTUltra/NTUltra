/// @description quadratic_curve
function quadratic_curve(time,startX,startY,offsetX,offsetY,endX,endY){
	var tx1 = lerp(startX,offsetX,time);
	var tx2 = lerp(offsetX,endX,time);
	var ty1 = lerp(startY,offsetY,time);
	var ty2 = lerp(offsetY,endY,time);
	var xx = lerp(tx1,tx2,time);
	var yy = lerp(ty1,ty2,time);
	return [xx,yy];
}