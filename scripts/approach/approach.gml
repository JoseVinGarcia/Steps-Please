function approach(start, goal, shift){
/// @description approach(start, goal, shift);
/// @function approach
/// @param start
/// @param goal
/// @param shift
	if (start < goal) {
	   return min(start + shift, goal);
	} else {
	   return max(start - shift, goal);
	}
}