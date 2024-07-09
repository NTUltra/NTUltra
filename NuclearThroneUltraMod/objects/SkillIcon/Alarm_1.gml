/// @description Position myself based on my index
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
y = vy + vh - 28;//24
var step = 32;
// var totalWidth = totalSkills * step;
x = vx + (vw * 0.5) + (step) - (step * totalSkills * 0.5) + (step * (skillIndex-1));

alarm[1] = 5;