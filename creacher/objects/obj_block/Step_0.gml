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



/*if(obj_creacher.pushingx){
	x_spd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
}
else{
	x_spd = 0;
}
if(obj_creacher.pushingy){
	y_spd = keyboard_check(ord("S")) - keyboard_check(ord("W"));
}
else{
	y_spd = 0;
}
if(abs(obj_creacher.x-x)>abs(obj_creacher.y-y)-3){
	y_spd = 0;
}
if(abs(obj_creacher.y-y)>abs(obj_creacher.x-x)-3){
	x_spd = 0;
}

//pushing
if(place_meeting(obj_creacher.x+8*x_spd, obj_creacher.y , obj_block)&&pushable){

    var _pixelCheck = sign(8*x_spd);
    while (!place_meeting(obj_creacher.x + _pixelCheck,obj_creacher.y,obj_block)){
        obj_creacher.x+=_pixelCheck;
    }

    //obj_creacher.x_movespd=2;
	obj_creacher.pushingx = true;
}
else
	obj_creacher.pushingx = false;
	//obj_creacher.x_movespd=4;

if (place_meeting( obj_creacher.x, obj_creacher.y +8*y_spd, obj_block)&&pushable){
    var _pixelCheck = sign(8*obj_creacher.y_spd);
    while (!place_meeting(obj_creacher.x, obj_creacher.y+_pixelCheck,obj_block)){
        obj_creacher.y+=_pixelCheck;
    }

    //obj_creacher.y_movespd=2;
	obj_creacher.pushingy = true;
}
else
	obj_creacher.pushingy = false;
	//obj_creacher.y_movespd=4;


//block wall
if(place_meeting(x+x_spd, y , WALL)||place_meeting(x+x_spd, y , obj_block)){

    var _pixelCheck = sign(x_spd);
    while (!place_meeting(x + _pixelCheck,y,WALL)&&!place_meeting(x + _pixelCheck,y,obj_block)){
        x+=_pixelCheck;
    }

    x_spd=0;
	xwall = true;
}
else{
	xwall = false;
}

if (place_meeting( x, y +y_spd, WALL)||place_meeting( x, y +y_spd, obj_block)){
    var _pixelCheck = sign(y_spd);
    while (!place_meeting(x, y+_pixelCheck,WALL)&&!place_meeting(x, y+_pixelCheck,obj_block)){
        y+=_pixelCheck;
    }

    y_spd=0;
	ywall = true;
}
else{
	ywall = false;
}

x+=x_spd*movespd;
y+=y_spd*movespd;


if((x_spd!=0||y_spd!=0)&&sndtimer<0){
	sndtimer = 30;
	//audio_play_sound(stone_sliding, 100, false, 1, 9.97, 1, 1);
}
if(sndtimer>0){
	sndtimer--;
}
if(sndtimer = 0){
	sndtimer = -15;
}*/