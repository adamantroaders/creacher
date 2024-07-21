if(obj_shift.char=="creacher"){
x_spd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
y_spd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//wall
if(place_meeting(x+x_spd, y , WALL)){

    var _pixelCheck = sign(x_spd);
    while (!place_meeting(x + _pixelCheck,y,WALL)){
        x+=_pixelCheck;
    }
    x_spd=0;
}

if (place_meeting( x , y +y_spd, WALL)){
    var _pixelCheck = sign(y_spd);
    while (!place_meeting(x , y+_pixelCheck,WALL)){
        y+=_pixelCheck;
    }
    y_spd=0;
}

//push

if(/*keyboard_check(vk_space) && */place_meeting(x+8*x_spd, y , obj_block)){

    var _pixelCheck = sign(8*x_spd);
    while (!place_meeting(x + _pixelCheck,y,obj_block)){
        x+=_pixelCheck;
    }

    x_spd/=2;
	pushingx = true;
}
else
	pushingx = false;

if (/*keyboard_check(vk_space) && */place_meeting( x, y +8*y_spd, obj_block)){
    var _pixelCheck = sign(8*y_spd);
    while (!place_meeting(x, y+_pixelCheck,obj_block)){
        y+=_pixelCheck;
    }

    y_spd/=2;
	pushingy = true;
}
else
	pushingy = false;
	
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


x+=x_spd*movespd;
y+=y_spd*movespd;

	while(place_meeting(x,y,WALL)){
		var getouttahere = round(random_range(-1,1));
		y+=getouttahere;
		x+=getouttahere;
	}
}










if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}