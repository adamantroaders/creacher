if(timer>0){
	timer--;
}

if(timer==0){
	obj_girl_ctscn0.timer = 19000;
	timer = -15;
}

if(timer>9600){
y+=v;
if(v<0){
	v+=a;
}
else{
	v = 0;
	timer = 9600;
}
}

if(timer<=9540&&timer>9420){
	view_visible[0] = false;
	view_visible[1] = true;
	//camera_set_view_pos(view_camera[1],camera_get_view_x(view_camera[1]),camera_get_view_y(view_camera[1])+(576/37));
	//camera_set_view_size(view_camera[1],camera_get_view_width(view_camera[1])-1024/37,camera_get_view_height(view_camera[1])-576/37);
	camera_set_view_size(view_camera[1],(camera_get_view_width(view_camera[1])-(1536-(708-324))/120),(camera_get_view_height(view_camera[1])-648/120));
	camera_set_view_pos(view_camera[1],(camera_get_view_x(view_camera[1])+324/120),(camera_get_view_y(view_camera[1])+362/120));
	//pos = 324,362
}

if(timer<=9300&&timer>9000){
	camera_set_view_pos(view_camera[1],camera_get_view_x(view_camera[1]),(camera_get_view_y(view_camera[1])+(782-362-216)/300));
	//pos = 324,566
}

if(timer<=8880&&timer>8760){
	camera_set_view_pos(view_camera[1],(camera_get_view_x(view_camera[1])+(846-324)/120),(camera_get_view_y(view_camera[1])+(362-566)/120));
	//pos = 846,362
}

if(timer<=8640&&timer>8340){
	camera_set_view_pos(view_camera[1],camera_get_view_x(view_camera[1]),(camera_get_view_y(view_camera[1])+(782-362-216)/300));
	//pos = 846,566
}

if(timer<=8220&&timer>8100){
	camera_set_view_size(view_camera[1],(camera_get_view_width(view_camera[1])+(1536-(708-324))/120),(camera_get_view_height(view_camera[1])+648/120));
	camera_set_view_pos(view_camera[1],(camera_get_view_x(view_camera[1])-846/120),(camera_get_view_y(view_camera[1])-566/120));
	//pos = 0,0
}
if(timer<=8100&&timer>7980){
	obj_folder.image_xscale-=1.9/120;
	//final 0.1
	obj_folder.image_yscale-=1.9/120;
	//final 0.1
	obj_folder.x+=(1424-192)/120;
	//start 192, final 1408
	obj_folder.y+=(208+256)/120;
	//start -256, final 192
	obj_black.image_alpha-=1/120;
	obj_folder.image_angle-=30/120;
}

if(timer==7900){
	timer = 0;
	depth = 3;
}