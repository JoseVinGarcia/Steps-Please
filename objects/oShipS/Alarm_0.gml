/// @description Shoots
if (instance_exists(target)) {
	shot = instance_create_layer(x, y-16, layer, oSprojectile);
}
alarm[0] = 120;
