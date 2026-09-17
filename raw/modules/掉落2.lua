local data = mw.loadData("模块:数据库/掉落2")
local maps = data.maps

local p = { }

p['掉落地图'] = function(frame)
	local shipName = frame.args[1]
	local ret = 'aaaaaaaa'
	local line = 0
	
	mapList={
		'1-1', '1-2', '1-3', '1-4', '1-5',
		'2-1', '2-2', '2-3', '2-4', '2-5', '2-6',
		'3-1', '3-2', '3-3', '3-4',
		'4-1', '4-2', '4-3', '4-4',
		'5-1', '5-2', '5-3', '5-4', '5-5',
		'6-1', '6-2', '6-3', '6-4',
		'7-1', '7-2', '7-3', '7-4', '7-5',
		'8-1', '8-2', '8-3', '8-4', '8-5',
		'9-1', '9-2', '9-3', '9-4',
		'决战E1、E2', '决战E3、E4', '决战E5', '决战E6',
	}
	for k, map in ipairs(mapList) do
		if string.sub(map,-1) == '1' then line = 0 end
		for k1, rank in pairs(maps[map]) do
			for k2, ship in pairs(rank) do
				if ship == shipName then
					ret = ret .. map .. '，'
					line = line + 1
					break
				end
			end
		end
		if (map == '1-4' and line == 4) then ret = string.sub(ret,1,-25) .. '第1章，' end
		if (map == '2-6' and line == 6) then ret = string.sub(ret,1,-37) .. '第2章，' end
		if (map == '3-4' and line == 4) then ret = string.sub(ret,1,-25) .. '第3章，' end
		if (map == '4-4' and line == 4) then ret = string.sub(ret,1,-25) .. '第4章，' end
		if (map == '5-5' and line == 5) then ret = string.sub(ret,1,-31) .. '第5章，' end
		if (map == '6-4' and line == 4) then ret = string.sub(ret,1,-25) .. '第6章，' end
		if (map == '7-5' and line == 5) then ret = string.sub(ret,1,-31) .. '第7章，' end
		if (map == '8-5' and line == 5) then ret = string.sub(ret,1,-31) .. '第8章，' end
		if (map == '9-4' and line == 4) then ret = string.sub(ret,1,-25) .. '第9章，' end
	end
	ret = string.sub(ret, 1, -4)
	return ret
end

local curFrame = nil

local function expand(name)
    local args = { name }
    return curFrame:expandTemplate{ title = '彩色链接', args = args }
end

p['掉落列表'] = function(frame)
	curFrame = frame
	local map = frame.args[1]
	local rank = frame.args[2]
	local ret = ''
	
	for k, ship in pairs(maps[map][rank]) do
		ret = ret .. expand(ship) .. '，'
	end
	
	ret = string.sub(ret, 1, -4)
	return ret
end

return p