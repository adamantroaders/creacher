if(instance_exists(obj_title)&&obj_title.donedone){
	if(timer>0){
		timer--;
	}
}

if(timer==0){
x+=v;
if(x<1024){
if(v>0){
	v+=a;
}
else{
	v = 0;
	done = true;
}
}
if(x>1024){
if(v<0){
	v-=a;
}
else{
	v = 0;
	done = true;
}
}
}


if(open){
	image_index = lvl;
}

if(done){
	if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)){
		obj_shift.target = target;
		obj_shift.shift = true;
	}
}

if(room==title){
	visible = true;
}
else{
	visible = false;
}

if(room==title && keyboard_check_pressed(vk_lcontrol)){
		obj_shift.target = Room1;
		obj_shift.shift = true;
	}