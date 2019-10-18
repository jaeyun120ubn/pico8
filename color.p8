pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
color_num = 1
lasttime = 0
max_bit = 16
value = {}


function _init()
    lasttime = time()
    for i = 1, max_bit do
       value[i] = 0
    end

end


function _update()
   -- if time() - lasttime > 0.3 then
   --     lasttime = time()
        
        for i = 1, max_bit do
            if value[i] ~= 2 then
                break
            elseif i == max_bit and value[i] == 2 then
                for j = 1, max_bit  do
                    value[j] = 0
                end
                return
            end
            
            
        end
        
        if value[1] < 2 then
            value[1] += 1 
        else
            index = 1
            while index < max_bit and value[index] == 2 do                 value[index] = 0
               value[index] = 0
               if value[index + 1] == 2 then
                   index += 1
               else 
                  value[index + 1] += 1
               end
           end
        end
                   
   -- end   
    
end


function _draw()
    cls()
    palt(0, false)
    rectfill(1, 1, 128,128, 7)
    for i = 1, max_bit do
        spr(value[i] + 1, 128 - i * 8, 60)         
    end 
    
end
__gfx__
00000000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000001111111188888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
