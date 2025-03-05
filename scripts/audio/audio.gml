// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function sound_play(soundind,priority,loop,check){
	if (check) {
		var inscene=inside_view();
		if (inscene) { audio_play_sound(soundind,priority,loop); }
	} else {
		audio_play_sound(soundind,priority,loop);
	}
}

function music_play(soundind,priority,check) {
	if soundind!=noone {
		if (check){
			if !audio_is_playing(soundind) {
				audio_group_stop_all(audiogroup_default);
				audio_play_sound(soundind,priority,true);
			}
		} else {
			audio_group_stop_all(audiogroup_default);
			audio_play_sound(soundind,priority,true);
		}
	}
}