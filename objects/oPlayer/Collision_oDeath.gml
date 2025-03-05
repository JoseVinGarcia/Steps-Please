/// @description Dies
part_particles_create(oGame.psys,x,y,oGame.ptDeathR,3);
part_particles_create(oGame.psys,x,y,oGame.ptDeathL,3);
instance_destroy();
oGame.alarm[0] = 60;
