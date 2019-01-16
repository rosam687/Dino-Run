if (other.object_index != obj_cake)
{
	global.gameOver = true;
	grav = 0;
	global.speedModifier = 0;
	image_speed = 0;
	
	if (global.bday)
	{
		sprite_index = spr_dino_dead_bday;
	}
	else
	{
		sprite_index = spr_dino_dead;
	}

	if (!instance_exists(obj_replay))
		instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_replay);
	
	with (obj_obstacle)
	{
		speed = 0;
		image_speed = 0;	
	}
}
else
{
	global.bday = true;
	with (other)
	{
		instance_destroy();
	}
}