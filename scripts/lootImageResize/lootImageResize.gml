// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lootImageResize(){
	        oLoot1.image_xscale=1;
			oLoot1.image_yscale=1;
			oLoot2.image_xscale=1;
			oLoot2.image_yscale=1;
			oLoot3.image_xscale=1;
			oLoot3.image_yscale=1;
			oLoot4.image_xscale=1;
			oLoot4.image_yscale=1;
			oLoot5.image_xscale=1;
			oLoot5.image_yscale=1;

}

function loot_Image_Index(inumber) {
	
	        oLoot1.image_index=inumber;
			oLoot2.image_index=inumber;
			oLoot3.image_index=inumber;
			oLoot4.image_index=inumber;
			oLoot5.image_index=inumber;
	
}

function with_button(v1,v2,v3){
	
	GameManager.loot_Text="";
			
			_image_index = 1;
			with (oButton){
				if(text==v1){
					_image_index = 0;
				}
				if(text==v2){
					_image_index = 0;
				}
				if(text==v3){
					_image_index = 0;
				}
			}		
}

function lootInstanceCreate(LI_index,Boolnum1,Boolnum2,Boolnum3,Boolnum4){
	
	        var xgrid=180;
			instance_create_layer(xgrid,250,"GUI",oLoot1);
			instance_create_layer(xgrid+80,250,"GUI",oLoot2);
			instance_create_layer(xgrid+160,250,"GUI",oLoot3);
			instance_create_layer(xgrid+240,250,"GUI",oLoot4);
			instance_create_layer(xgrid+320,250,"GUI",oLoot5);
			
			lootImageResize();
			loot_Image_Index(LI_index);//LI_index=loot_image_index
			
			GameManager.dressButtonPressed=Boolnum1;
			GameManager.daggerButtonPressed=Boolnum2;
			GameManager.glovesButtonPressed=Boolnum3;
			GameManager.shoesButtonPressed=Boolnum4;
	
}

function loot_image_scale(is1,is2,is3,is4,is5){
	
	
			oLoot1.image_xscale=is1;
			oLoot1.image_yscale=is1;
			/*oLoot2.image_xscale=is2;
			oLoot2.image_yscale=is2;
			oLoot3.image_xscale=is3;
			oLoot3.image_yscale=is3;
			oLoot4.image_xscale=is4;
			oLoot4.image_yscale=is4;
			oLoot5.image_xscale=is5;
			oLoot5.image_yscale=is5;*/
	
}

function lot(m){
	oLootDress.sprite_index=sLoot1;
	
	
}


function destroyLootButtonIndex(lbi1,lbi2,lbi3,tf1,tf2,tf3,tf4){
	
	oScrollable.scrollY=0;
	GameManager.lootdress=tf1;
	GameManager.lootdagger=tf2;
	GameManager.lootgloves=tf3;
	GameManager.lootshoes=tf4;
	
	instance_create_layer(350,100,"GUI",oLootBox);
	with (oButton){
				if(text==lbi1){
					_image_index = 0;
				}
				if(text==lbi2){
					_image_index = 0;
				}
				if(text==lbi3){
					_image_index = 0;
				}
			}
	
}




