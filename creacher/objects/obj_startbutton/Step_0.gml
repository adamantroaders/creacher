if(step>=120&&!select){
y+=v;
if(v<0){
	v+=a;
}
else{
	v = 0;
	done = true;
}
}
if(step<120){
	step++;
}

if(select){
	first = false;
	y+=v;
	if(y<finaly){
		v+=a;
	}
	else{
		v = 0;
		done = true;
	}
}

if(done&&!select){
	if(mouse_check_button_pressed(mb_left) /*&& position_meeting(mouse_x, mouse_y, self)*/){
		select = true;
		first = true;
		
		finalx = 512;
		finaly = 1472;
		deltay = finaly - y;
		a = 0.5;
		v = 0;//-1*sqrt(-2 * a * deltay)
	}
}

if(obj_songysong.timer<1){
	if(!audio_is_playing(mus_title)){
		audio_play_sound(mus_title, 0, true);
	}
}