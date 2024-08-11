if(!obj_shift.persistify){
if(room==rm_title||room==rm_test||room==rm_intro){
    current_bgm = mus_title;
	timer = 0;
}
else if(room==Room1||room==Room2||room==Room3||room==Room4||room==Room5||room==Room6){
    current_bgm = mus_Im_Provise;
	timer = 5;
	if(playing==mus_title){
		audio_stop_sound(playing);
	}
}
else if(room==Room7||room==Room8||room==Room9||room==Room10||room==Room11||room==Room12){
    current_bgm = mus_A_Dapt;
	timer = 5;
	if(playing==mus_Im_Provise){
		audio_stop_sound(playing);
	}
}
else if(room==Room13||room==Room14||room==Room15||room==Room16||room==Room17||room==Room18){
    current_bgm = mus_E_Scape;
	timer = 5;
	if(playing==mus_A_Dapt){
		audio_stop_sound(playing);
	}
}
else if(room==rm_end){
	if(playing==mus_sad){
		audio_stop_sound(playing);
	}
	current_bgm = mus_end;
	timer = 5;
}
}
//audio_play_sound(current_bgm, 0, true);