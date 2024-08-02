/*
if(instance_exists(obj_viewchange) && obj_viewchange.walk_timer==60){
    audio_stop_sound(current_bgm);
    if(room==Room2){
    audio_play_sound(mus_boss1, 0, true);
    current_bgm = mus_boss1;
    }
}
if(instance_exists(DOOR) && current_bgm==mus_boss1 && DOOR.open){
    audio_stop_sound(current_bgm);
    audio_play_sound(snd_bossdefeat, 0, false);
    current_bgm = snd_bossdefeat;
    timer = 240;
}
timer--;

if(timer==0 && room==Room2){
    audio_play_sound(mus_level2, 0, true);
    current_bgm = mus_level2;
}
*/
if(timer==0){
	timer = -15;
	if(current_bgm!=playing){
		audio_stop_sound(playing);
		audio_group_set_gain(audiogroup_default,1,0);
		if(!audio_is_playing(current_bgm)){
		audio_play_sound(current_bgm, 0, true);
		}
		playing = current_bgm;
	}
}
if(timer>0){
	timer--;
}