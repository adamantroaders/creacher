if(obj_lightswitch.dark){
	dark_timer = 45;
	obj_lightswitch.dark = false;
}

if(dark_timer==0){
	dark_timer = -15;
	image_index = 0;
	visible = true;
	dark = true;
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