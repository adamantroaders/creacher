if(place_meeting(x+5,y,obj_block)){
	if(image_index==0||image_index==1){
		image_speed = 1;
	}
}
else if(place_meeting(x-5,y,obj_block)){
	if(image_index==0||image_index==1){
		image_speed = 1;
	}
}
else if(place_meeting(x,y,obj_block)){
	if(image_index==0||image_index==1){
		image_speed = 1;
	}
}
else if(place_meeting(x,y,obj_block)){
	if(image_index==0||image_index==1){
		image_speed = 1;
	}
}
else if(staypressed = false){
	pressed = false;
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(pressed==false&&image_speed==0&&image_index!=0){
	image_speed = -1;
}
if(pressed==false&&image_speed==-1&&image_index==1){
	image_speed = 0;
}
depth = 190;