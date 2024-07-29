if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(obj_shift.char=="creacher"&&keyboard_check_pressed(vk_space)&&!obj_creacher.sliding){
	if(mvmt=="updown"){
		if(obj_creacher.x>xmin&&obj_creacher.x<xmax&&obj_creacher.y<y&&obj_creacher.y>ymin-85){
			obj_creacher.dir = "down";
			obj_creacher.sliding = true;
		}
		if(obj_creacher.x>xmin&&obj_creacher.x<xmax&&obj_creacher.y>y&&obj_creacher.y<ymax+85){
			obj_creacher.dir = "up";
			obj_creacher.sliding = true;
		}
	}
	else if(mvmt=="leftright"){
		if(obj_creacher.y>ymin&&obj_creacher.y<ymax&&obj_creacher.x<x&&obj_creacher.x>xmin-85){
			obj_creacher.dir = "right";
			obj_creacher.sliding = true;
		}
		if(obj_creacher.y>ymin&&obj_creacher.y<ymax&&obj_creacher.x>x&&obj_creacher.x<xmax+85){
			obj_creacher.dir = "left";
			obj_creacher.sliding = true;
		}
	}
}