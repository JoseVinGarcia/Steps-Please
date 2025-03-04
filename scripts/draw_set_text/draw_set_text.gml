///@desc draw_set_text(color,font,halign,valign);
///Não  necessário, mas eficiente.
function draw_set_text(color,font,halign,valign){
	draw_set_color(color);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}

function page_create(index0,index1,ttext,iimage,name) {
	mytext[index0][index1]=ttext;
	imgsp[index0][index1]=iimage;
	myname[index0][index1]=name;
}