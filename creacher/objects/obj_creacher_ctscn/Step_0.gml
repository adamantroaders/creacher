if(obj_dark.dark){
	obj_dark.dark = false;
	if(obj_creacher.image_index==0){
		image_index = 0;
	}
	else{
		image_index = 2;
	}
	x = obj_creacher.x;
	y = obj_creacher.y;
	obj_creacher.visible = false;
	visible = true;
	timer = 30;
}
if(timer>0){
	timer--;
}
if(timer==0){
	image_speed = 1;
	v_x = (x_dest-x)/120;
	v_y = (y_dest-y)/120;
	timer2 = 120;
	timer = -15;
}
x+=v_x;
y+=v_y;
if(timer2>0){
	timer2--;
}
if(timer2==0){
	timer2 = -15;
	v_x = 0;
	v_y = 0;
	image_speed = 0;
	image_index = 0;
	timer3 = 75;
}
if(timer3>0){
	timer3--;
}
if(timer3==45){
	v_y = 1;
}
if(timer3==0){
	v_y = -20;
	image_index = 1;
	timer3 = -15;
	hole = 10;
}
if(hole>0){
	hole--;
}