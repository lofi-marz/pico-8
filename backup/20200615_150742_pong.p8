pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
p1 = { x = 64, y = 10 }
p2 = { x = 64, y = 118 }

x = 64  y = 64

function _update()
 
  if (btn(2, 0)) then y=y-1 end
  if (btn(3, 0)) then y=y+1 end
  
end

function _draw()
		cls()
  rectfill(p1.x,
  p1.y,
  p1.x+8,
  p1.y+32,
  1)
end


__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
