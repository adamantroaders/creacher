if(instance_exists(obj_lightswitch)){
if(obj_lightswitch.dark){
	dark_timer = 45;
	obj_lightswitch.dark = false;
	first = false;
}
}

if(dark_timer==0){
	dark_timer = -15;
	image_index = 0;
	visible = true;
	dark = true;
	if(instance_exists(obj_girl_ctscn0)){
		obj_girl_ctscn0.timer = 14500;
	}
}

if(dark_timer>0){
	dark_timer--;
}

if(dark_timer==40){
	image_index = 1;
	visible = true;
}
if(dark_timer==24){
	visible = false;
}
if(dark_timer==16){
	visible = true;
}
if(dark_timer==12){
	visible = false;
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(obj_shift.pause){
	visible = true;
}

depth = -999;