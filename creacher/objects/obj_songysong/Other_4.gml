if(!obj_shift.persistify){
if(room==title){
	if(obj_shift.reset_timer<0){
		//audio_stop_sound(playing);
	}
    current_bgm = mus_title;
	timer = 0;
}
else if(room==Room1||room==Room2||room==Room3||room==Room4||room==Room5||room==Room6){
    current_bgm = mus_Im_Provise;
	timer = 0;
}
else if(room==Room7/*||room==Room8||room==Room9||room==Room10||room==Room11||room==Room12*/){
    current_bgm = mus_A_Dapt;
	timer = 0;
}/*
else if(room==Room13||room==Room14||room==Room15||room==Room16||room==Room17||room==Room18){
    current_bgm = mus_E_Scape;
	timer = 0;
}*/
}
//audio_play_sound(current_bgm, 0, true);