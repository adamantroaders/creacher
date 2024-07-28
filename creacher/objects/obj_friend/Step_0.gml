if(pushable&&keyboard_check_pressed(vk_space)&&timer==-15){
	if((obj_creacher.x-x)<-127&&(obj_creacher.x-x)>-160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x+64,y,WALL)&&!place_meeting(x+64,y,obj_girl)&&!place_meeting(x+64,y,obj_block)){
			dir = "right";
			timer = 8;
		}
	}
	if((obj_creacher.x-x)>127&&(obj_creacher.x-x)<160&&abs(obj_creacher.y-y)<64){
		if(!place_meeting(x-64,y,WALL)&&!place_meeting(x-64,y,obj_girl)&&!place_meeting(x-64,y,obj_block)){
			dir = "left";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)<-127&&(obj_creacher.y-y)>-160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y+64,WALL)&&!place_meeting(x,y+64,obj_girl)&&!place_meeting(x,y+64,obj_block)){
			dir = "down";
			timer = 8;
		}
	}
	if((obj_creacher.y-y)>127&&(obj_creacher.y-y)<160&&abs(obj_creacher.x-x)<64){
		if(!place_meeting(x,y-64,WALL)&&!place_meeting(x,y-64,obj_girl)&&!place_meeting(x,y-64,obj_block)){
			dir = "up";
			timer = 8;
		}
	}
}
else{
	dir = "none";
}
if(dir!="none"){
	mvng = dir;
}
if(mvng=="right"){
	x+=8;
}
if(mvng=="left"){
	x-=8;
}
if(mvng=="down"){
	y+=8;
}
if(mvng=="up"){
	y-=8;
}
if(timer>0){
	timer--;
}
if(timer==0){
	timer = -15;
	mvng = "none";
}