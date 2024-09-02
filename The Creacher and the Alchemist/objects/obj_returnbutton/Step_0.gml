if(obj_shift.pause && room!=rm_title){
	visible = true;
}
else{
	visible = false;
}

if(visible && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self) && obj_shift.image_index==0){
	ret = true;
}

x = room_width / 2;
y = room_height * 0.75;