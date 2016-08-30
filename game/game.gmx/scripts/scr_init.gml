draw_set_font(font0);
text_outline_color = c_black;
text_color = c_white;

rm_name = room_get_name(room);
dom_name = url_get_domain();
sub_path = "";
sys_version = "α1.3.0"

update = "3.27,2016 updated";

if(dom_name == "uropokeonline.ouroporos.net"){
    port = 50000;
    dbname = "uropokeon_";
    game_name = "uropoke";
    title_c = c_aqua;
    title_o_c = c_black;
    
    
} else if(dom_name == "oricha.ouroporos.net"){
    port = 51000;
    dbname = "oricha_";
    game_name = "oricha";
    title_c = c_orange;
    title_o_c = c_black;


} else{
    //test port
    port = 52000;
    dbname = "test_";
    //sub_path += ":5000";
    update = "DEBUG_MODE";
    if(dom_name == "127.0.0.1"){
        game_name = "uropoke";
    }
    if(dom_name == "localhost"){
        game_name = "oricha";
    }
    title_c = c_orange;
    title_o_c = c_black;
}

img_path = sub_path + "/img/"+game_name;
