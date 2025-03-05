/// @description Creates system

dust_emitter = part_emitter_create(oGame.psys);

// Config the emitter
part_emitter_region(oGame.psys, dust_emitter, 0, room_width, room_height, room_height, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(oGame.psys, dust_emitter, oGame.ptDust1, 1); // 50 partículas por passo
part_emitter_burst(oGame.psys, dust_emitter, oGame.ptDust2, 1)
alarm[0] = 30;