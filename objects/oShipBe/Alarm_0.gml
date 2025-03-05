/// @description Shoots
if (instance_exists(target)) {
	shot = instance_create_layer(x, y - 6, layer, oSprojectile);
}
alarm[0] = 60;
