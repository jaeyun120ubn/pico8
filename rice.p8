pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

count = 0
second = 0
rice = 0
rice_time = 10

wasabi_gem = 0
uasabi_gem_tine = 0




function make_rice()
	count = count + 1
	if count > 30 then
		second = second + 1
		count = 0
		if second > rice_time then
		  rice = rice + 1
		  second = 0
		end
	end
end


function _update()

	if btnp(⬆️) then
		rice_time = rice_time - 1
	elseif btnp(⬇️) then
		rice_time = rice_time + 1
	end
	
	make_rice()
end


function _draw()
	cls()
	print(count, 10, 30)
	print(second, 10, 40)
	print(rice, 10, 50)
	print(wasabi_gem, 10, 60)
end
