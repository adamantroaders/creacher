if(obj_shift.char=="creacher"){
x_spd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
y_spd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//wall
if(!sliding&&place_meeting(x+x_spd, y , WALL)){

    var _pixelCheck = sign(x_spd);
    while (!place_meeting(x + _pixelCheck,y,WALL)){
        x+=_pixelCheck;
    }
    x_spd=0;
}

if (!sliding&&place_meeting( x , y +y_spd, WALL)){
    var _pixelCheck = sign(y_spd);
    while (!place_meeting(x , y+_pixelCheck,WALL)){
        y+=_pixelCheck;
    }
    y_spd=0;
}

//push
/*
if(place_meeting(x+8*x_spd, y , obj_block)){

    var _pixelCheck = sign(8*x_spd);
    while (!place_meeting(x + _pixelCheck,y,obj_block)){
        x+=_pixelCheck;
    }

    x_spd/=2;
	pushingx = true;
}
else
	pushingx = false;

if (keyboard_check(vk_space) && place_meeting( x, y +8*y_spd, obj_block)&&obj_block.pushable){
    var _pixelCheck = sign(8*y_spd);
    while (!place_meeting(x, y+_pixelCheck,obj_block)){
        y+=_pixelCheck;
    }

    y_spd/=2;
	pushingy = true;
}
else
	pushingy = false;
*/
//block wall
if((obj_block.xwall&&place_meeting(x+x_spd, y , obj_block))/*||(place_meeting(x+x_spd, y , obj_block))&&!keyboard_check(vk_space)*/){

    var _pixelCheck = sign(x_spd);
    while (!place_meeting(x + _pixelCheck,y,obj_block)){
        x+=_pixelCheck;
    }

    x_spd=0;
}

if((obj_block.ywall&&place_meeting( x + x_spd, y +y_spd, obj_block))/*||(place_meeting(x+x_spd, y , obj_block))&&!keyboard_check(vk_space)*/){
    var _pixelCheck = sign(y_spd);
    while (!place_meeting(x + x_spd, y+_pixelCheck,obj_block)){
        y+=_pixelCheck;
    }

    y_spd=0;
}

if(pushingx){
	x_movespd = 2;
}
else{
	//x_movespd = 4;
}
if(pushingy){
	y_movespd = 2;
}
else{
	//y_movespd = 4;
}

if(slide_timer==0){
	slide_timer = -15;
	sliding = false;
	if(obj_creacher.image_index==1){
		temp_img_ind = 2.93;
	}
	else{
		temp_img_ind = 0.93;
	}
	obj_creacher.sprite_index = spr_creacher_1;
	obj_creacher.image_index = temp_img_ind;
	obj_girl.canmove = true;
}

if(slide_timer>0){
	slide_timer--;
}

if(sliding){
	if(slide_timer==-15){
		slide_timer = 25;
		if((obj_creacher.image_index>=1 && obj_creacher.image_index<3)){
			temp_img_ind = 1;
			obj_creacher.image_index = 2.93;
		}
		else{
			temp_img_ind = 0;
			obj_creacher.image_index = 0.93;
		}
		obj_creacher.sprite_index = spr_creacher_trans;
		obj_creacher.image_index = temp_img_ind;
		obj_girl.image_speed = 0;
	}
	if(dir=="up"){
		y-=8;
	}
	if(dir=="down"){
		y+=8;
	}
	if(dir=="left"){
		x-=8;
	}
	if(dir=="right"){
		x+=8;
	}
	obj_girl.canmove = false;
}







if(!sliding){
x+=x_spd*x_movespd;
y+=y_spd*y_movespd;


	while(place_meeting(x,y,WALL)){
		var getouttahere = round(random_range(-1,1));
		y+=getouttahere;
		x+=getouttahere;
	}
}
}

if((x_spd!=0 || y_spd!=0)&&obj_shift.char == "creacher"){
	image_speed = 1;
}
else if(((image_index>=1&&image_index<2.9) || (image_index>=3) || (image_index<0.9))&&obj_shift.char == "creacher"){
	image_speed = 1;
}
else{
	image_speed = 0;
}
if(obj_shift.char != "creacher"){
	image_speed = 0;
}










if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}