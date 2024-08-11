if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(obj_shift.char=="creacher"&&keyboard_check_pressed(vk_space)&&!obj_creacher.sliding){
	if(mvmt=="updown"){
		if(obj_creacher.x>xmin&&obj_creacher.x<xmax&&obj_creacher.y<y&&obj_creacher.y>ymin-85){
			if((!place_meeting(obj_creacher.x,obj_creacher.y+264,WALL))&&(!place_meeting(obj_creacher.x,obj_creacher.y+200,WALL))&&(!place_meeting(obj_creacher.x,obj_creacher.y+156,WALL))){
				obj_creacher.dir = "down";
				obj_creacher.sliding = true;
			}
		}
		if(obj_creacher.x>xmin&&obj_creacher.x<xmax&&obj_creacher.y>y&&obj_creacher.y<ymax+85){
			if((!place_meeting(obj_creacher.x,obj_creacher.y-264,WALL))&&(!place_meeting(obj_creacher.x,obj_creacher.y-200,WALL))&&(!place_meeting(obj_creacher.x,obj_creacher.y-156,WALL))){
				obj_creacher.dir = "up";
				obj_creacher.sliding = true;
			}
		}
	}
	else if(mvmt=="leftright"){
		if(obj_creacher.y>ymin&&obj_creacher.y<ymax&&obj_creacher.x<x&&obj_creacher.x>xmin-85){
			if((!place_meeting(obj_creacher.x+264,obj_creacher.y,WALL))&&(!place_meeting(obj_creacher.x+200,obj_creacher.y,WALL))&&(!place_meeting(obj_creacher.x+156,obj_creacher.y,WALL))){
				obj_creacher.dir = "right";
				obj_creacher.sliding = true;
			}
		}
		if(obj_creacher.y>ymin&&obj_creacher.y<ymax&&obj_creacher.x>x&&obj_creacher.x<xmax+85){
			if((!place_meeting(obj_creacher.x-264,obj_creacher.y,WALL))&&(!place_meeting(obj_creacher.x-200,obj_creacher.y,WALL))&&(!place_meeting(obj_creacher.x-156,obj_creacher.y,WALL))){
				obj_creacher.dir = "left";
				obj_creacher.sliding = true;
			}
		}
	}
}