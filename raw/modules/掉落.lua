local data = mw.loadData("模块:数据库/掉落")
local maps = data.maps

local p = { }

p['掉落地图'] = function(frame)
	local shipName = frame.args[1]
	local ret = ''
	local line = 0
	
	mapList={
		{ index='1-1', name='母港周边哨戒#1-1 母港附近海域'},
		{ index='1-2', name='母港周边哨戒#1-2 东北防线海域'},
		{ index='1-3', name='母港周边哨戒#1-3 仁州附近海域'},
		{ index='1-4', name='母港周边哨戒#1-4 深海仁州基地'},
		{ index='1-5', name='母港周边哨戒#1-5 乌兰○托附近水域'},
		{ index='2-1', name='扶桑海域攻略#2-1 扶桑西部海域'},
		{ index='2-2', name='扶桑海域攻略#2-2 扶桑西南海域'},
		{ index='2-3', name='扶桑海域攻略#2-3 扶桑南部海域'},
		{ index='2-4', name='扶桑海域攻略#2-4 深海扶桑基地'},
		{ index='2-5', name='扶桑海域攻略#2-5 深海前哨核心地区'},
		{ index='2-6', name='扶桑海域攻略#2-6 深海前哨北方地区'},
		{ index='3-1', name='星洲海峡突破#3-1 母港南部海域'},
		{ index='3-2', name='星洲海峡突破#3-2 东南群岛（1）'},
		{ index='3-3', name='星洲海峡突破#3-3 东南群岛（2）'},
		{ index='3-4', name='星洲海峡突破#3-4 星洲海峡'},
		{ index='4-1', name='西行航线开辟#4-1 克拉代夫东部海域'},
		{ index='4-2', name='西行航线开辟#4-2 克拉代夫西部海域'},
		{ index='4-3', name='西行航线开辟#4-3 泪之扉附近海域'},
		{ index='4-4', name='西行航线开辟#4-4 泪之扉防线'},
		{ index='5-1', name='地中海死斗#5-1 塞浦路斯附近海域'},
		{ index='5-2', name='地中海死斗#5-2 克里特附近海域'},
		{ index='5-3', name='地中海死斗#5-3 马耳他附近海域'},
		{ index='5-4', name='地中海死斗#5-4 直布罗陀东部海域'},
		{ index='5-5', name='地中海死斗#5-5 直布罗陀要塞'},
		{ index='6-1', name='北海风暴#6-1 洛里昂南部海域'},
		{ index='6-2', name='北海风暴#6-2 英吉利海峡'},
		{ index='6-3', name='北海风暴#6-3 斯卡帕湾'},
		{ index='6-4', name='北海风暴#6-4 丹麦海峡'},
		{ index='7-1', name='比斯开湾战役#7-1 比斯开湾'},
		{ index='7-2', name='比斯开湾战役#7-2 马德拉海域'},
		{ index='7-3', name='比斯开湾战役#7-3 亚速尔海域'},
		{ index='7-4', name='比斯开湾战役#7-4 百慕大三角附近海域'},
		{ index='7-5', name='比斯开湾战役#7-5 百慕大三角防波堤'},
		{ index='8-1', name='新大陆海域鏖战#8-1 百慕大中心海域'},
		{ index='8-2', name='新大陆海域鏖战#8-2 百慕大南群岛'},
		{ index='8-3', name='新大陆海域鏖战#8-3 北加勒比海域'},
		{ index='8-4', name='新大陆海域鏖战#8-4 东部海岸群岛'},
		{ index='8-5', name='新大陆海域鏖战#8-5 地峡海湾'},
		{ index='9-1', name='南狭长海域#9-1 地峡外海'},
		{ index='9-2', name='南狭长海域#9-2 大洋南湾'},
		{ index='9-3', name='南狭长海域#9-3 南入海口海域'},
		{ index='9-4', name='南狭长海域#9-4 河口外海'},
		{ index='9-5', name='南狭长海域#9-5 南大洋群岛'},
		{ index='10-1', name='极地水域#10-1 极地海峡'},
		{ index='决战E1、E2', name='舰队决战——沉默战士'},
		{ index='决战E3、E4', name='舰队决战——沉默战士'},
		{ index='决战E5', name='舰队决战——沉默战士'},
		{ index='决战E6', name='舰队决战——沉默战士'},
	}
	for k, map in ipairs(mapList) do
		if string.sub(map['index'],-1) == '1' then line = 0 end
		for k1, rank in pairs(maps[map['index']]) do
			for k2, ship in pairs(rank) do
				if ship == shipName then
					ret = ret .. '[[' .. map['name'] .. '|' .. map['index'] .. ']]，'
					line = line + 1
					break
				end
			end
		end
		if (map['index'] == '1-4' and line == 4) then ret = string.sub(ret,1,-256) .. '[[母港周边哨戒|第1章]]，' end
		if (map['index'] == '2-6' and line == 6) then ret = string.sub(ret,1,-325) .. '[[扶桑海域攻略|第2章]]，' end
		if (map['index'] == '3-4' and line == 4) then ret = string.sub(ret,1,-205) .. '[[星洲海峡突破|第3章]]，' end
		if (map['index'] == '4-4' and line == 4) then ret = string.sub(ret,1,-221) .. '[[西行航线开辟|第4章]]，' end
		if (map['index'] == '5-5' and line == 5) then ret = string.sub(ret,1,-264) .. '[[地中海死斗|第5章]]，' end
		if (map['index'] == '6-4' and line == 4) then ret = string.sub(ret,1,-173) .. '[[北海风暴|第6章]]，' end
		if (map['index'] == '7-5' and line == 5) then ret = string.sub(ret,1,-264) .. '[[比斯开湾战役|第7章]]，' end
		if (map['index'] == '8-5' and line == 5) then ret = string.sub(ret,1,-273) .. '[[新大陆海域鏖战|第8章]]，' end
		if (map['index'] == '9-5' and line == 5) then ret = string.sub(ret,1,-225) .. '[[南狭长海域|第9章]]，' end
		if (map['index'] == '10-1' and line == 1) then ret = string.sub(ret,1,-43) .. '[[极地水域|第10章]]，' end
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