local enemyData = mw.loadData("模块:数据库/敌舰")
local eShips = enemyData.eShips
local eFleets = enemyData.eFleets

local speedType = { }
speedType['航母'] = 1
speedType['轻母'] = 1
speedType['装母'] = 1
speedType['战列'] = 1
speedType['航战'] = 1
speedType['战巡'] = 1
speedType['导驱'] = 1
speedType['防驱'] = 1
speedType['导巡'] = 1
speedType['防巡'] = 1
speedType['导战'] = 1
speedType['大巡'] = 1
speedType['旗舰'] = 1
speedType['要塞'] = 1
speedType['港口'] = 1
speedType['机场'] = 1
speedType['调谐'] = 1
speedType['重巡'] = 2
speedType['航巡'] = 2
speedType['雷巡'] = 2
speedType['轻巡'] = 2
speedType['重炮'] = 2
speedType['驱逐'] = 2
speedType['补给'] = 2
speedType['导潜'] = 3
speedType['潜艇'] = 3
speedType['炮潜'] = 3

local function formatFloat(x)
    if x == 0 then return 0 end
    x = math.floor(x * 100 + 0.5) / 100
    return string.format('%.2f', x)
end

local function formatEnemyShip(ship)
    local colorName = { 'black', 'green', 'blue', 'purple', '#e77f00', 'red' }

    local ret = '[['
    local len = mw.ustring.len(ship.title)
    if mw.ustring.sub(ship.title, len, len) == '型' and mw.ustring.sub(ship.title, len - 2, len - 2) == '级' then
        ret = ret .. mw.ustring.sub(ship.title, 1, len - 2)
    else
        ret = ret .. ship.title
    end
    return ret .. "|<b><span style='color:" .. colorName[ship.rarity] .. ";'>" .. ship.title .. "</span></b>]]"
end

p = { }

p['阵容'] = function(frame)
    local node = frame.args[1]
    local label = frame.args[2]
    if label == nil or label == '' then label = node:sub(-1,-1) end
    local shipNum = frame.args[3]
    if shipNum == nil then shipNum = 6 end

    local ret = ''
    local n = 0
    for i, fleet in pairs(eFleets[node]) do
        if i ~= 1 then ret = ret .. '|-\n' end
        ret = ret .. '|' .. fleet.formation
        n = n + 1
        local rec = 0
        local air = 0
        local lv = 0
        local speed = { 0, 0, 0 }
        local speedCnt = { 0, 0, 0 }
        local m = 0
        for j, shipId in pairs(fleet.eShips) do
            m = m + 1
            local ship = eShips[shipId]
            local bg = ''
            if ship.type == '潜艇' or ship.type == '炮潜' then bg = 'style="background-color:#fcf3cf;"|' end
            if ship.type == '雷巡' then bg = 'style="background-color:#edf5d5;"|' end
            if ship.type == '导战' or ship.type == '导巡' or ship.type == '导驱' then bg = 'style="background-color:#fadbd8;"|' end
            if ship.type == '大巡' or ship.type == '防巡' or ship.type == '防驱' then bg = 'style="background-color:#fae5d3 "|' end
            ret = ret .. '||' .. bg .. formatEnemyShip(ship)
            rec = rec + ship.rec
            air = air + ship.air
            lv = lv + ship.lv
            local st = speedType[ship.type]
            speed[st] = speed[st] + ship.speed
            speedCnt[st] = speedCnt[st] + 1
        end
        for j = m + 1, shipNum do
            ret = ret .. '||'
        end

        local s1 = 999
        local s2 = 999
        if speedCnt[1] ~= 0 then s1 = speed[1] / speedCnt[1] end
        if speedCnt[2] ~= 0 then s2 = speed[2] / speedCnt[2] end
        local s = math.min(s1, s2)
        s = tonumber(string.format("%.1f", s))
        if speedCnt[1] ~= 0 and speedCnt[2] ~= 0 then s = math.floor(s) end
        local bg2 = ''
        if speedCnt[1] == 0 and speedCnt[2] == 0 then
            s = speed[3] / speedCnt[3]
            s = tonumber(string.format("%.1f", s))
            rec = '(' .. lv .. ')'
            bg2 = 'style="background-color:#fcf3cf;"|'
        end
        local air2 = air*1.5
        local air3 = air*3
        ret = ret .. '||' .. bg2 .. rec .. '||' .. formatFloat(air) .. '||' .. formatFloat(air2) .. '||'.. formatFloat(air3) .. '||' .. s .. '\n'
    end
    return '|rowspan=' .. n .. '|' .. label .. '|' .. ret
end

return p