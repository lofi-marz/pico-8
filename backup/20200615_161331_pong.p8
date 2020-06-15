pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
p1 = { x = 2, y = 64 }
p2 = { x = 118, y = 64 }
ball = { x = 64,
									y = 64,
									vel = 1,
									angle = 0}

function _update()
 
  if (btn(2, 0)) then 
  	p1.y=p1.y-1 
  end
  if (btn(3, 0)) then
  	p1.y=p1.y+1
  end
  if (btn(2,1)) then
 		p2.y=p2.y-1
 	end
 	if (btn(3,1)) then
 		p2.y=p2.y+1
 	end
 	update_ball(ball)
end

function _draw()
		cls()
  draw_paddle(p1.x, p1.y, 8)
  draw_paddle(p2.x, p2.y, 12)
  circfill(ball.x, ball.y, 4,7)
end

function draw_paddle(x,y, col)
	width = 8 height = 32
	rectfill(x,y,x+width, y+height, col)	
end	

function update_ball(ball)
  xspeed = ball.vel * cos(angle)
  yspeed = -ball.vel * sin(angle)
		ball.x += xspeed
		ball.y += yspeed
end  
  
  

  
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88888888888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8888eee8888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888822228888228222888882282888222288888
888eee888ee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
111111111111161611161111161617771616111611111616117111c1111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616661111166611111666166611111666177711c1111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116111111111617771611161111111116117111c1111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111666117116661111161116661171166611111ccc111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111eee1ee11ee1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111e111e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ee11e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111e111e1e1e1e111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111eee1e1e1eee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111111111661166616661616117111711111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161616161616171111171111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111111111616166116661616171111171111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161616161666171111171111111111111111111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661666161616161666117111711111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111bb1b1111bb117111711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111b111b111b11171111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111b111b111bbb171111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111b111b11111b171111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111bb1bbb1bb1117111711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111bbb1bbb11bb1bbb1bbb1bbb1b111b111171166616611111161611111111111111111111111111111111111111111111111111111111111111111111
111111111b1b1b111b1111b11b1111b11b111b111711161611611111161611111111111111111111111111111111111111111111111111111111111111111111
111111111bb11bb11b1111b11bb111b11b111b111711166611611111116111111111111111111111111111111111111111111111111111111111111111111111
111111111b1b1b111b1111b11b1111b11b111b111711161111611111161611711111111111111111111111111111111111111111111111111111111111111111
111111111b1b1bbb11bb11b11b111bbb1bbb1bbb1171161116661171161617111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116661661111116161111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116161161111116161111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116661161111116661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111161111111161171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111666117116661711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616611111161611111ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161611611111161611711c1c11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166611611111116117771ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161111611111161611711c1c11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116661171161611111ccc17111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616611111161611111ccc1ccc1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116161161111116161171111c111c1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111666116111111666177711cc1ccc1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111161111111161171111c1c111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116661171166611111ccc1ccc1711111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ccc11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111c1c11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ccc11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111c1c11171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ccc11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111bbb1bbb11bb1bbb1bbb1bbb1b111b111171166616661111161611111111111111111111111111111111111111111111111111111111111111111111
111111111b1b1b111b1111b11b1111b11b111b111711161611161111111611111111111111111111111111111111111111111111111111111111111111111111
111111111bb11bb11b1111b11bb111b11b111b111711166616661111171111111111111111111111111111111111111111111111111111111111111111111111
111111111b1b1b111b1111b11b1111b11b111b111711161116111111177111711111111111111111111111111111111111111111111111111111111111111111
111111111b1b1bbb11bb11b11b111bbb1bbb1bbb1171161116661171177717111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111177771111111111111111111111111111111111111111111111111111111111111111111
11111111111116661666111116161111111111111111111111111111177111111111111111111111111111111111111111111111111111111111111111111111
11111111111116161116111116161111111111111111111111111111111711111111111111111111111111111111111111111111111111111111111111111111
11111111111116661666111116661111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111611111111161171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111666117116661711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616661111161611111ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161611161111161611711c1c11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616661111116117771ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116111111161611711c1c11711111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116661171161611111ccc17111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111166616661111161611111ccc1ccc1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116161116111116161171111c111c1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111666166611111666177711cc1ccc1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111116111611111111161171111c1c111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111161116661171166611111ccc1ccc1711111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111cc11ccc1171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111c1111c1117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111c11ccc1117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111c11c111117111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111ccc1ccc1171111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111116611666166616161111166616661661166116111666117116161111161611111111116611661611111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616161616161111161616161616161616111611171116161111161611111111161116161611111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111116161661166616161111166616661616161616111661171111611111166611111111161116161611111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616161616661111161116161616161616111611171116161171111611711111161116161611111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661616161616661666161116161666166616661666117116161711166617111111116616611666111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822282228882822282228888888888888888888888888888888888888888888888888228822882228882822282288222822288866688
82888828828282888888888282888828888282888888888888888888888888888888888888888888888888888828882882828828828288288282888288888888
82888828828282288888882282228828882282228888888888888888888888888888888888888888888888888828882882228828822288288222822288822288
82888828828282888888888288828828888288828888888888888888888888888888888888888888888888888828882882828828828288288882828888888888
82228222828282228888822282228288822282228888888888888888888888888888888888888888888888888222822282228288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

