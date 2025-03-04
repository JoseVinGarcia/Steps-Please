/// @description Coliding conditions

if instance_exists(player) {

	//checks if player's y + half of player's height is bigger than our y 
	//round keeps numbers into interger
	
	if (round(player.y + (player.sprite_height / 2)) > y) {
	//if player.bbox_bottom>y {
		mask_index =- 1;
	} else {
		mask_index = sSemiSolid;
	}
}