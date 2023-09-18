image_angle = direction


if speed < 6 and sprite_index != sprSlugDisappear and sprite_index != sprESlugDisappear
{
sprite_index = sprSlugDisappear
if team != 2
		sprite_index = sprESlugDisappear
image_index = 0
image_speed = 0.4
}
