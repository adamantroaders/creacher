if(room==title){
    current_bgm = mus_title;
	timer = 30;
}
else if(room==Room1||room==Room2||room==Room3||room==Room4||room==Room5||room==Room6){
    current_bgm = mus_A_Dapt;
	timer = 0;
}
else if(room==Room7){
    current_bgm = mus_a-dapt;
	timer = 0;
}
else if(room==Room13){
    current_bgm = mus_e-scape;
	timer = 0;
}
//audio_play_sound(current_bgm, 0, true);