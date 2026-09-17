local ships = { }
local stats = { }

----------------------------------------------------------------------------------------------------

ships['胡德'] = {
    index=1, rarity=5, cost=3, sp=3, type='BC', country='英国', class='海军上将级1号舰', skill='皇家海军的荣耀',
    hp=75, atk=68, tpd=0, def=65, aa=40, eva=27, acc=40, as=0, rec=13, speed=31, luck=5, range='长', size='大型舰/主力舰',
    atkMax=93, tpdMax=0, defMax=80, aaMax=70, evaMax=60, accMax=96, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='E国双联4英寸炮', eq3='海象式', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=73, sTpd=0, sDef=65, sAa=24, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=200, mBaux=0
}

ships['扶桑'] = {
    index=2, rarity=3, cost=2, sp=2, type='BB', country='日本', class='扶桑型1番舰',
    hp=67, atk=70, tpd=0, def=61, aa=20, eva=21, acc=38, as=0, rec=9, speed=25, luck=7, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=81, aaMax=50, evaMax=43, accMax=94, asMax=0, recMax=36,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=70, sTpd=0, sDef=61, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=20, coreType='战列', coreNum=4, mFuel=0, mAmmo=400, mSteel=600, mBaux=0
}

ships['山城'] = {
    index=3, rarity=3, cost=2, sp=2, type='BB', country='日本', class='扶桑型2番舰',
    hp=67, atk=70, tpd=0, def=61, aa=20, eva=21, acc=38, as=0, rec=9, speed=25, luck=7, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=81, aaMax=50, evaMax=43, accMax=94, asMax=0, recMax=36,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=70, sTpd=0, sDef=61, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=20, coreType='战列', coreNum=4, mFuel=0, mAmmo=400, mSteel=600, mBaux=0
}

ships['伊势'] = {
    index=4, rarity=3, cost=2, sp=2, type='BB', country='日本', class='伊势型1番舰',
    hp=74, atk=71, tpd=0, def=62, aa=22, eva=24, acc=38, as=0, rec=10, speed=24.5, luck=16, range='长', size='大型舰/主力舰',
    atkMax=91, tpdMax=0, defMax=82, aaMax=52, evaMax=46, accMax=94, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国14厘米单装炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=71, sTpd=0, sDef=62, sAa=11, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=20, coreType='航母', coreNum=4, mFuel=0, mAmmo=100, mSteel=900, mBaux=400
}

ships['日向'] = {
    index=5, rarity=3, cost=2, sp=2, type='BB', country='日本', class='伊势型2番舰',
    hp=74, atk=71, tpd=0, def=62, aa=22, eva=24, acc=38, as=0, rec=10, speed=24.5, luck=16, range='长', size='大型舰/主力舰',
    atkMax=91, tpdMax=0, defMax=82, aaMax=52, evaMax=46, accMax=94, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国14厘米单装炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=71, sTpd=0, sDef=62, sAa=11, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=20, coreType='航母', coreNum=4, mFuel=0, mAmmo=100, mSteel=900, mBaux=400
}

ships['俾斯麦'] = {
    index=6, rarity=5, cost=3, sp=3, type='BB', country='德国', class='俾斯麦级1号舰', skill='旗舰杀手（俾斯麦）',
    hp=90, atk=72, tpd=0, def=80, aa=25, eva=26, acc=40, as=0, rec=16, speed=30, luck=15, range='长', size='大型舰/主力舰',
    atkMax=92, tpdMax=0, defMax=100, aaMax=55, evaMax=48, accMax=96, asMax=0, recMax=43,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='G国双联150毫米炮', eq3='AR-196水上侦察机', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1, sAtk=72, sTpd=0, sDef=84, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=200
}

ships['提尔比茨'] = {
    index=7, rarity=5, cost=3, sp=3, type='BB', country='德国', class='俾斯麦级2号舰',
    hp=91, atk=72, tpd=0, def=80, aa=25, eva=26, acc=40, as=0, rec=16, speed=30.8, luck=16, range='长', size='大型舰/主力舰',
    atkMax=92, tpdMax=0, defMax=100, aaMax=55, evaMax=48, accMax=96, asMax=0, recMax=43,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='G国双联150毫米炮', eq3='AR-196水上侦察机', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1, sAtk=72, sTpd=0, sDef=84, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=200
}

ships['纳尔逊'] = {
    index=8, rarity=4, cost=3, sp=3, type='BB', country='英国', class='纳尔逊级1号舰',
    hp=72, atk=84, tpd=0, def=72, aa=42, eva=19, acc=39, as=0, rec=12, speed=23.5, luck=20, range='长', size='大型舰/主力舰',
    atkMax=104, tpdMax=0, defMax=92, aaMax=72, evaMax=41, accMax=95, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮', eq2='E国双联6英寸炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=3.2, rSteel=6, rTime=1, sAtk=89, sTpd=0, sDef=72, sAa=27, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=50, coreType='战列', coreNum=5, mFuel=1200, mAmmo=0, mSteel=1600, mBaux=0
}

ships['罗德尼'] = {
    index=9, rarity=4, cost=3, sp=3, type='BB', country='英国', class='纳尔逊级2号舰',
    hp=72, atk=84, tpd=0, def=72, aa=42, eva=19, acc=39, as=0, rec=12, speed=23.5, luck=20, range='长', size='大型舰/主力舰',
    atkMax=104, tpdMax=0, defMax=92, aaMax=72, evaMax=41, accMax=95, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮', eq2='E国双联6英寸炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=3.2, rSteel=6, rTime=1, sAtk=89, sTpd=0, sDef=72, sAa=27, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=50, coreType='战列', coreNum=5, mFuel=1200, mAmmo=0, mSteel=1600, mBaux=0
}

ships['威尔士亲王'] = {
    index=10, rarity=5, cost=3, sp=3, type='BB', country='英国', class='英王乔治五世级2号舰', skill='关键一击',
    hp=74, atk=75, tpd=0, def=75, aa=52, eva=26, acc=40, as=0, rec=15, speed=29, luck=10, range='长', size='大型舰/主力舰',
    atkMax=95, tpdMax=0, defMax=95, aaMax=82, evaMax=48, accMax=96, asMax=0, recMax=42,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国四联14英寸炮', eq2='E国双联5.25英寸炮', eq3='海象式', eq4='无',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=80, sTpd=0, sDef=75, sAa=42, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=50, coreType='战列', coreNum=9, mFuel=800, mAmmo=500, mSteel=2000, mBaux=0
}

ships['内华达'] = {
    index=11, rarity=3, cost=2, sp=2, type='BB', country='美国', class='内华达级1号舰',
    hp=64, atk=65, tpd=0, def=68, aa=33, eva=15, acc=38, as=0, rec=10, speed=21, luck=25, range='长', size='大型舰/主力舰',
    atkMax=85, tpdMax=0, defMax=88, aaMax=63, evaMax=37, accMax=94, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国双联5英寸平高两用炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=65, sTpd=0, sDef=68, sAa=22, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=30, coreType='战列', coreNum=4, mFuel=0, mAmmo=400, mSteel=600, mBaux=0
}

ships['俄克拉荷马'] = {
    index=12, rarity=3, cost=2, sp=2, type='BB', country='美国', class='内华达级2号舰',
    hp=64, atk=65, tpd=0, def=68, aa=33, eva=15, acc=38, as=0, rec=10, speed=21, luck=10, range='长', size='大型舰/主力舰',
    atkMax=85, tpdMax=0, defMax=88, aaMax=63, evaMax=37, accMax=94, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国双联5英寸平高两用炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=65, sTpd=0, sDef=68, sAa=22, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=30, coreType='战列', coreNum=4, mFuel=0, mAmmo=400, mSteel=600, mBaux=0
}

ships['安德烈亚·多利亚'] = {
    index=13, rarity=5, cost=2, sp=2, type='BB', country='意大利', class='安德烈亚·多利亚1号舰',
    hp=54, atk=59, tpd=0, def=59, aa=18, eva=22, acc=40, as=0, rec=10, speed=22, luck=20, range='长', size='大型舰/主力舰',
    atkMax=79, tpdMax=0, defMax=79, aaMax=48, evaMax=44, accMax=96, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联305毫米炮', eq2='标准型动力系统', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.25, rSteel=4.55, rTime=1, sAtk=59, sTpd=0, sDef=59, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=60, coreType='战列', coreNum=12, mFuel=1200, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['金刚'] = {
    index=14, rarity=3, cost=2, sp=2, type='BC', country='日本', class='金刚型1番舰',
    hp=63, atk=65, tpd=0, def=55, aa=26, eva=32, acc=38, as=0, rec=13, speed=30.3, luck=15, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=70, aaMax=56, evaMax=65, accMax=94, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=65, sTpd=0, sDef=55, sAa=13, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=45, coreType='战列', coreNum=6, mFuel=800, mAmmo=0, mSteel=950, mBaux=0
}

ships['比睿'] = {
    index=15, rarity=3, cost=2, sp=2, type='BC', country='日本', class='金刚型2番舰',
    hp=63, atk=65, tpd=0, def=55, aa=20, eva=32, acc=38, as=0, rec=13, speed=30.3, luck=7, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=70, aaMax=50, evaMax=65, accMax=94, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=65, sTpd=0, sDef=55, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['榛名'] = {
    index=16, rarity=3, cost=2, sp=2, type='BC', country='日本', class='金刚型3番舰',
    hp=63, atk=65, tpd=0, def=55, aa=20, eva=32, acc=38, as=0, rec=13, speed=30.3, luck=22, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=70, aaMax=50, evaMax=65, accMax=94, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=65, sTpd=0, sDef=55, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['雾岛'] = {
    index=17, rarity=3, cost=2, sp=2, type='BC', country='日本', class='金刚型4番舰',
    hp=63, atk=65, tpd=0, def=55, aa=20, eva=32, acc=38, as=0, rec=13, speed=30.3, luck=9, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=70, aaMax=50, evaMax=65, accMax=94, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='J国15.2厘米单装炮', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=65, sTpd=0, sDef=55, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['声望'] = {
    index=18, rarity=3, cost=2, sp=2, type='BC', country='英国', class='声望级1号舰', skill='最后的荣耀',
    hp=65, atk=58, tpd=0, def=56, aa=52, eva=30, acc=38, as=0, rec=14, speed=31.5, luck=25, range='长', size='大型舰/主力舰',
    atkMax=83, tpdMax=0, defMax=71, aaMax=82, evaMax=63, accMax=94, asMax=0, recMax=41,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='E国三联4英寸炮', eq3='无', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=63, sTpd=0, sDef=56, sAa=42, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=50, coreType='战列', coreNum=15, mFuel=2000, mAmmo=2000, mSteel=3000, mBaux=200
}

ships['反击'] = {
    index=19, rarity=3, cost=2, sp=2, type='BC', country='英国', class='声望级2号舰',
    hp=65, atk=58, tpd=0, def=56, aa=40, eva=30, acc=38, as=0, rec=14, speed=31.5, luck=12, range='长', size='大型舰/主力舰',
    atkMax=83, tpdMax=0, defMax=71, aaMax=70, evaMax=63, accMax=94, asMax=0, recMax=41,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='E国三联4英寸炮', eq3='无', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=63, sTpd=0, sDef=56, sAa=24, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=40, coreType='战列', coreNum=8, mFuel=1000, mAmmo=1000, mSteel=1500, mBaux=100
}

ships['阿拉斯加'] = {
    index=20, rarity=5, cost=2, sp=3, type='BC', country='美国', class='阿拉斯加级1号舰',
    hp=58, atk=60, tpd=0, def=54, aa=70, eva=31, acc=40, as=0, rec=18, speed=33, luck=15, range='长', size='大型舰/主力舰',
    atkMax=85, tpdMax=0, defMax=69, aaMax=100, evaMax=64, accMax=96, asMax=0, recMax=45,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联12英寸炮', eq2='U国双联5英寸平高两用炮', eq3='U国博福斯40毫米防空炮(四联)', eq4='无',
    sFuel=80, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.625, sAtk=60, sTpd=0, sDef=54, sAa=76, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=82, coreType='战列', coreNum=24, mFuel=3000, mAmmo=3000, mSteel=3500, mBaux=2000
}

ships['关岛'] = {
    index=21, rarity=5, cost=2, sp=3, type='BC', country='美国', class='阿拉斯加级2号舰',
    hp=58, atk=60, tpd=0, def=54, aa=70, eva=31, acc=40, as=0, rec=18, speed=33, luck=15, range='长', size='大型舰/主力舰',
    atkMax=85, tpdMax=0, defMax=69, aaMax=100, evaMax=64, accMax=96, asMax=0, recMax=45,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联12英寸炮', eq2='U国双联5英寸平高两用炮', eq3='U国博福斯40毫米防空炮(四联)', eq4='无',
    sFuel=80, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.625, sAtk=60, sTpd=0, sDef=54, sAa=76, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=82, coreType='战列', coreNum=24, mFuel=3000, mAmmo=3000, mSteel=3500, mBaux=2000
}

ships['赤城'] = {
    index=22, rarity=5, cost=3, sp=3, type='CV', country='日本', class='赤城型1番舰', skill='命运的五分钟',
    hp=69, atk=0, tpd=0, def=30, aa=27, eva=30, acc=37, as=0, rec=46, speed=31.2, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=55, aaMax=57, evaMax=52, accMax=96, asMax=0, recMax=73,
    cap1=21, cap2=18, cap3=27, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=15, sAa=27, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=77, coreType='航母', coreNum=20, mFuel=500, mAmmo=0, mSteel=3000, mBaux=1200
}

ships['加贺'] = {
    index=23, rarity=5, cost=3, sp=3, type='CV', country='日本', class='加贺型1番舰', skill='机动部队',
    hp=71, atk=0, tpd=0, def=32, aa=32, eva=26, acc=37, as=0, rec=43, speed=28, luck=13, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=62, aaMax=62, evaMax=48, accMax=96, asMax=0, recMax=70,
    cap1=17, cap2=18, cap3=43, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.56, rSteel=4.8, rTime=1, sAtk=0, sTpd=0, sDef=16, sAa=32, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=80, coreType='航母', coreNum=20, mFuel=500, mAmmo=0, mSteel=3000, mBaux=1200
}

ships['祥凤'] = {
    index=24, rarity=4, cost=2, sp=3, type='CVL', country='日本', class='祥凤型1番舰',
    hp=32, atk=0, tpd=0, def=17, aa=18, eva=30, acc=34, as=0, rec=36, speed=29, luck=12, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=37, aaMax=48, evaMax=52, accMax=90, asMax=0, recMax=63,
    cap1=17, cap2=12, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九九式舰爆', eq2='九七式舰攻', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=9, sAa=18, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=55, coreType='航母', coreNum=8, mFuel=350, mAmmo=0, mSteel=600, mBaux=750
}

ships['瑞凤'] = {
    index=25, rarity=4, cost=2, sp=3, type='CVL', country='日本', class='祥凤型2番舰',
    hp=32, atk=0, tpd=0, def=17, aa=18, eva=30, acc=34, as=0, rec=36, speed=29, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=37, aaMax=48, evaMax=52, accMax=90, asMax=0, recMax=63,
    cap1=17, cap2=12, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九九式舰爆', eq2='九七式舰攻', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=9, sAa=18, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=55, coreType='航母', coreNum=8, mFuel=300, mAmmo=0, mSteel=650, mBaux=750
}

ships['百眼巨人'] = {
    index=26, rarity=3, cost=0, sp=2, type='CVL', country='英国', class='百眼巨人级1号舰',
    hp=23, atk=0, tpd=0, def=6, aa=10, eva=16, acc=33, as=0, rec=30, speed=20.7, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=15, tpdMax=0, defMax=26, aaMax=40, evaMax=38, accMax=89, asMax=0, recMax=57,
    cap1=5, cap2=10, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='剑鱼', eq2='E国单装4英寸炮', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.75, sAtk=2, sTpd=0, sDef=3, sAa=10, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=35, coreType='航母', coreNum=5, mFuel=200, mAmmo=0, mSteel=400, mBaux=500
}

ships['兰利'] = {
    index=27, rarity=3, cost=0, sp=2, type='CVL', country='美国', class='兰利级1号舰',
    hp=24, atk=0, tpd=0, def=6, aa=10, eva=11, acc=33, as=0, rec=32, speed=15, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=15, tpdMax=0, defMax=26, aaMax=40, evaMax=33, accMax=89, asMax=0, recMax=59,
    cap1=15, cap2=10, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F2A水牛', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.625, sAtk=0, sTpd=0, sDef=3, sAa=14, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=40, coreType='航母', coreNum=6, mFuel=300, mAmmo=0, mSteel=400, mBaux=400
}

ships['突击者'] = {
    index=28, rarity=4, cost=2, sp=3, type='CVL', country='美国', class='突击者级1号舰',
    hp=38, atk=0, tpd=0, def=20, aa=25, eva=25, acc=34, as=0, rec=40, speed=29.2, luck=25, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=40, aaMax=55, evaMax=47, accMax=90, asMax=0, recMax=67,
    cap1=15, cap2=25, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=30, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=30, coreType='航母', coreNum=8, mFuel=500, mAmmo=0, mSteel=1500, mBaux=2000
}

ships['列克星敦(CV-2)'] = {
    index=29, rarity=4, cost=3, sp=3, type='CV', country='美国', class='列克星敦级1号舰',
    hp=63, atk=0, tpd=0, def=40, aa=37, eva=30, acc=36, as=0, rec=42, speed=33.2, luck=20, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=65, aaMax=67, evaMax=52, accMax=95, asMax=0, recMax=69,
    cap1=20, cap2=20, cap3=30, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F2A水牛', eq2='SBD-3无畏', eq3='BTD-1毁灭者', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=20, sAa=43, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=40, coreType='航母', coreNum=5, mFuel=200, mAmmo=0, mSteel=400, mBaux=500
}

ships['萨拉托加'] = {
    index=30, rarity=4, cost=3, sp=3, type='CV', country='美国', class='列克星敦级2号舰', skill='罗宾',
    hp=63, atk=0, tpd=0, def=40, aa=55, eva=30, acc=36, as=0, rec=42, speed=33.2, luck=22, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=65, aaMax=85, evaMax=52, accMax=95, asMax=0, recMax=69,
    cap1=20, cap2=20, cap3=30, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F2A水牛', eq2='SBD-3无畏', eq3='BTD-1毁灭者', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=20, sAa=80, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=40, coreType='航母', coreNum=5, mFuel=200, mAmmo=0, mSteel=500, mBaux=400
}

ships['大黄蜂'] = {
    index=31, rarity=4, cost=3, sp=3, type='CV', country='美国', class='约克城级3号舰',
    hp=52, atk=0, tpd=0, def=32, aa=42, eva=30, acc=36, as=0, rec=38, speed=32.5, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=57, aaMax=72, evaMax=52, accMax=95, asMax=0, recMax=65,
    cap1=21, cap2=21, cap3=23, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='B-25(杜立特队)', eq2='无', eq3='无', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=16, sAa=54, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=70, coreType='航母', coreNum=18, mFuel=1000, mAmmo=500, mSteel=500, mBaux=2200
}

ships['高雄'] = {
    index=32, rarity=3, cost=2, sp=2, type='CA', country='日本', class='高雄型1番舰',
    hp=45, atk=42, tpd=21, def=33, aa=20, eva=37, acc=35, as=0, rec=16, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=56, defMax=48, aaMax=50, evaMax=81, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='零式水上侦察机', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=14, sDef=17, sAa=10, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=10, mFuel=300, mAmmo=300, mSteel=200, mBaux=0
}

ships['爱宕'] = {
    index=33, rarity=3, cost=2, sp=2, type='CA', country='日本', class='高雄型2番舰',
    hp=45, atk=42, tpd=21, def=33, aa=20, eva=37, acc=35, as=0, rec=16, speed=35, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=56, defMax=48, aaMax=50, evaMax=81, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='零式水上侦察机', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=14, sDef=17, sAa=10, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=10, mFuel=300, mAmmo=300, mSteel=200, mBaux=0
}

ships['摩耶'] = {
    index=34, rarity=3, cost=2, sp=2, type='CA', country='日本', class='高雄型3番舰',
    hp=45, atk=42, tpd=21, def=33, aa=20, eva=37, acc=35, as=0, rec=16, speed=35, luck=14, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=56, defMax=48, aaMax=50, evaMax=81, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=14, sDef=17, sAa=10, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=55, coreType='巡洋', coreNum=12, mFuel=300, mAmmo=300, mSteel=0, mBaux=300
}

ships['鸟海'] = {
    index=35, rarity=3, cost=2, sp=2, type='CA', country='日本', class='高雄型4番舰',
    hp=45, atk=42, tpd=21, def=33, aa=20, eva=37, acc=35, as=0, rec=16, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=56, defMax=48, aaMax=50, evaMax=81, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=14, sDef=17, sAa=10, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=10, mFuel=300, mAmmo=300, mSteel=200, mBaux=0
}

ships['希佩尔海军上将'] = {
    index=36, rarity=3, cost=2, sp=2, type='CA', country='德国', class='希佩尔海军上将级1号舰',
    hp=52, atk=36, tpd=20, def=33, aa=22, eva=30, acc=35, as=0, rec=14, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=56, tpdMax=55, defMax=48, aaMax=52, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=36, sTpd=10, sDef=20, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=30, coreType='巡洋', coreNum=6, mFuel=100, mAmmo=100, mSteel=200, mBaux=0
}

ships['布吕歇尔(重巡洋舰)'] = {
    index=37, rarity=3, cost=2, sp=2, type='CA', country='德国', class='希佩尔海军上将级2号舰',
    hp=52, atk=36, tpd=20, def=33, aa=22, eva=30, acc=35, as=0, rec=14, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=56, tpdMax=55, defMax=48, aaMax=52, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=36, sTpd=10, sDef=20, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=30, coreType='巡洋', coreNum=6, mFuel=100, mAmmo=100, mSteel=200, mBaux=0
}

ships['欧根亲王'] = {
    index=38, rarity=5, cost=2, sp=2, type='CA', country='德国', class='希佩尔海军上将级3号舰', skill='战线防御',
    hp=54, atk=36, tpd=20, def=36, aa=22, eva=30, acc=37, as=0, rec=14, speed=32, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=56, tpdMax=55, defMax=51, aaMax=52, evaMax=74, accMax=93, asMax=0, recMax=52,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=36, sTpd=10, sDef=21, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=30, coreType='巡洋', coreNum=6, mFuel=100, mAmmo=100, mSteel=200, mBaux=0
}

ships['威奇塔'] = {
    index=39, rarity=4, cost=2, sp=2, type='CA', country='美国', class='威奇塔级1号舰',
    hp=36, atk=38, tpd=0, def=30, aa=48, eva=31, acc=36, as=0, rec=14, speed=33, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=50, aaMax=88, evaMax=75, accMax=92, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=15, sAa=52, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=43, coreType='巡洋', coreNum=13, mFuel=0, mAmmo=500, mSteel=500, mBaux=0
}

ships['昆西'] = {
    index=40, rarity=3, cost=2, sp=2, type='CA', country='美国', class='新奥尔良级6号舰',
    hp=43, atk=38, tpd=0, def=32, aa=35, eva=31, acc=35, as=0, rec=15, speed=32.7, luck=12, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=52, aaMax=65, evaMax=75, accMax=91, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=16, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=5, mFuel=100, mAmmo=300, mSteel=400, mBaux=0
}

ships['天龙'] = {
    index=41, rarity=2, cost=1, sp=2, type='CL', country='日本', class='天龙型1番舰',
    hp=23, atk=13, tpd=16, def=9, aa=10, eva=38, acc=33, as=15, rec=9, speed=33, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=38, tpdMax=56, defMax=29, aaMax=40, evaMax=76, accMax=90, asMax=59, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=20, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=7, sTpd=19, sDef=5, sAa=5, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=3, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['龙田'] = {
    index=42, rarity=2, cost=1, sp=2, type='CL', country='日本', class='天龙型2番舰',
    hp=23, atk=13, tpd=16, def=9, aa=10, eva=38, acc=33, as=15, rec=9, speed=33, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=38, tpdMax=56, defMax=29, aaMax=40, evaMax=76, accMax=90, asMax=59, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=20, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=7, sTpd=19, sDef=5, sAa=5, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=3, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['北上'] = {
    index=43, rarity=3, cost=1, sp=2, type='CL', country='日本', class='球磨型3番舰',
    hp=25, atk=16, tpd=18, def=9, aa=10, eva=40, acc=33, as=15, rec=10, speed=36, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=58, defMax=29, aaMax=40, evaMax=78, accMax=90, asMax=59, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=21, sDef=5, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=65, coreType='巡洋', coreNum=15, mFuel=1500, mAmmo=1000, mSteel=1000, mBaux=1000
}

ships['大井'] = {
    index=44, rarity=3, cost=1, sp=2, type='CL', country='日本', class='球磨型4番舰',
    hp=25, atk=16, tpd=18, def=9, aa=10, eva=40, acc=33, as=15, rec=10, speed=36, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=58, defMax=29, aaMax=40, evaMax=78, accMax=90, asMax=59, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=21, sDef=5, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=65, coreType='巡洋', coreNum=15, mFuel=1500, mAmmo=1000, mSteel=1000, mBaux=1000
}

ships['五十铃'] = {
    index=45, rarity=3, cost=1, sp=2, type='CL', country='日本', class='长良型2番舰',
    hp=25, atk=16, tpd=18, def=9, aa=10, eva=40, acc=33, as=15, rec=10, speed=36, luck=12, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=58, defMax=29, aaMax=40, evaMax=78, accMax=90, asMax=59, recMax=21,
    cap1=1, cap2=1, cap3=1, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=21, sDef=5, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=5, mFuel=500, mAmmo=500, mSteel=500, mBaux=500
}

ships['夕张'] = {
    index=46, rarity=4, cost=1, sp=2, type='CL', country='日本', class='夕张型1番舰',
    hp=19, atk=16, tpd=15, def=13, aa=13, eva=40, acc=34, as=15, rec=10, speed=35.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=55, defMax=33, aaMax=43, evaMax=78, accMax=91, asMax=59, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='标准型动力系统', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=18, sDef=7, sAa=7, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=60, coreType='巡洋', coreNum=9, mFuel=1000, mAmmo=1000, mSteel=1000, mBaux=1000
}

ships['柯尼斯堡'] = {
    index=47, rarity=3, cost=1, sp=2, type='CL', country='德国', class='柯尼斯堡级1号舰',
    hp=33, atk=21, tpd=20, def=18, aa=17, eva=31, acc=33, as=26, rec=9, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=60, defMax=38, aaMax=47, evaMax=69, accMax=90, asMax=70, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='三联533毫米鱼雷', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=11, sTpd=20, sDef=11, sAa=9, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=5, mFuel=200, mAmmo=200, mSteel=100, mBaux=0
}

ships['卡尔斯鲁厄'] = {
    index=48, rarity=3, cost=1, sp=2, type='CL', country='德国', class='柯尼斯堡级2号舰',
    hp=33, atk=21, tpd=20, def=18, aa=17, eva=31, acc=33, as=26, rec=9, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=60, defMax=38, aaMax=47, evaMax=69, accMax=90, asMax=70, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='三联533毫米鱼雷', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=11, sTpd=20, sDef=11, sAa=9, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=5, mFuel=200, mAmmo=200, mSteel=100, mBaux=0
}

ships['科隆'] = {
    index=49, rarity=3, cost=1, sp=2, type='CL', country='德国', class='柯尼斯堡级3号舰',
    hp=33, atk=21, tpd=20, def=18, aa=17, eva=31, acc=33, as=26, rec=9, speed=32.5, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=60, defMax=38, aaMax=47, evaMax=69, accMax=90, asMax=70, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='三联533毫米鱼雷', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=11, sTpd=20, sDef=11, sAa=9, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=6, mFuel=200, mAmmo=200, mSteel=200, mBaux=0
}

ships['天狼星'] = {
    index=50, rarity=5, cost=1, sp=2, type='CL', country='英国', class='黛朵级8号舰',
    hp=28, atk=22, tpd=10, def=21, aa=52, eva=31, acc=35, as=40, rec=11, speed=32, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=50, defMax=46, aaMax=92, evaMax=69, accMax=92, asMax=84, recMax=22,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联5.25英寸炮', eq2='标准型对空雷达', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.5, sAtk=15, sTpd=10, sDef=11, sAa=52, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=70, coreType='巡洋', coreNum=8, mFuel=250, mAmmo=250, mSteel=200, mBaux=0
}

ships['林仙'] = {
    index=51, rarity=2, cost=1, sp=2, type='CL', country='英国', class='林仙级1号舰',
    hp=24, atk=17, tpd=10, def=14, aa=28, eva=30, acc=33, as=28, rec=9, speed=32, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=50, defMax=34, aaMax=58, evaMax=68, accMax=90, asMax=72, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=10, sDef=7, sAa=14, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['加拉蒂亚'] = {
    index=52, rarity=2, cost=1, sp=2, type='CL', country='英国', class='林仙级2号舰',
    hp=24, atk=17, tpd=10, def=14, aa=28, eva=30, acc=33, as=28, rec=9, speed=32, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=50, defMax=34, aaMax=58, evaMax=68, accMax=90, asMax=72, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=10, sDef=7, sAa=14, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['佩内洛珀'] = {
    index=53, rarity=2, cost=1, sp=2, type='CL', country='英国', class='林仙级3号舰',
    hp=24, atk=17, tpd=10, def=15, aa=28, eva=30, acc=33, as=28, rec=9, speed=32, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=50, defMax=35, aaMax=58, evaMax=68, accMax=90, asMax=72, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=10, sDef=8, sAa=14, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['曙光女神'] = {
    index=54, rarity=3, cost=1, sp=2, type='CL', country='英国', class='林仙级4号舰',
    hp=24, atk=17, tpd=10, def=15, aa=28, eva=30, acc=33, as=28, rec=9, speed=32, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=50, defMax=35, aaMax=58, evaMax=68, accMax=90, asMax=72, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=10, sDef=8, sAa=14, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=49, coreType='巡洋', coreNum=4, mFuel=300, mAmmo=0, mSteel=500, mBaux=0
}

ships['奥马哈'] = {
    index=55, rarity=2, cost=1, sp=2, type='CL', country='美国', class='奥马哈级1号舰',
    hp=28, atk=20, tpd=18, def=15, aa=30, eva=32, acc=33, as=18, rec=8, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=58, defMax=35, aaMax=60, evaMax=70, accMax=90, asMax=62, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='U国单装5英寸炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=10, sTpd=18, sDef=8, sAa=20, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=42, coreType='巡洋', coreNum=5, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['亚特兰大'] = {
    index=56, rarity=3, cost=1, sp=2, type='CL', country='美国', class='亚特兰大级1号舰',
    hp=27, atk=24, tpd=0, def=19, aa=58, eva=31, acc=33, as=40, rec=12, speed=33.6, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=0, defMax=44, aaMax=98, evaMax=69, accMax=90, asMax=84, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=12, sTpd=0, sDef=10, sAa=68, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=4, mFuel=500, mAmmo=0, mSteel=0, mBaux=300
}

ships['朱诺(CL-52)'] = {
    index=57, rarity=3, cost=1, sp=2, type='CL', country='美国', class='亚特兰大级2号舰',
    hp=27, atk=24, tpd=0, def=19, aa=58, eva=31, acc=33, as=40, rec=12, speed=33.6, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=0, defMax=44, aaMax=98, evaMax=69, accMax=90, asMax=84, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=12, sTpd=0, sDef=10, sAa=68, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=7, mFuel=500, mAmmo=500, mSteel=500, mBaux=500
}

ships['布鲁克林'] = {
    index=58, rarity=3, cost=1, sp=2, type='CL', country='美国', class='布鲁克林级1号舰',
    hp=33, atk=32, tpd=0, def=27, aa=42, eva=31, acc=33, as=25, rec=12, speed=31.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=52, aaMax=82, evaMax=69, accMax=90, asMax=69, recMax=23,
    cap1=4, cap2=4, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=14, sAa=43, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=30, coreType='巡洋', coreNum=5, mFuel=200, mAmmo=200, mSteel=100, mBaux=0
}

ships['海伦娜'] = {
    index=59, rarity=4, cost=2, sp=2, type='CL', country='美国', class='布鲁克林级9号舰',
    hp=33, atk=32, tpd=0, def=29, aa=45, eva=31, acc=34, as=25, rec=12, speed=31.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=54, aaMax=85, evaMax=69, accMax=91, asMax=69, recMax=23,
    cap1=4, cap2=4, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='标准型对海雷达', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=48, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=30, coreType='巡洋', coreNum=5, mFuel=200, mAmmo=200, mSteel=100, mBaux=0
}

ships['宁海'] = {
    index=60, rarity=4, cost=1, sp=2, type='CL', country='中国', class='宁海级1号舰',
    hp=20, atk=16, tpd=16, def=13, aa=16, eva=24, acc=34, as=20, rec=8, speed=23.2, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=56, defMax=33, aaMax=46, evaMax=62, accMax=91, asMax=64, recMax=19,
    cap1=1, cap2=1, cap3=1, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国双联140毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=8, sTpd=16, sDef=7, sAa=8, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=6, mFuel=200, mAmmo=200, mSteel=200, mBaux=200
}

ships['平海'] = {
    index=61, rarity=4, cost=1, sp=2, type='CL', country='中国', class='宁海级2号舰',
    hp=20, atk=16, tpd=16, def=13, aa=12, eva=22, acc=34, as=20, rec=8, speed=21.3, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=56, defMax=33, aaMax=42, evaMax=60, accMax=91, asMax=64, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国双联140毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=8, sTpd=16, sDef=7, sAa=6, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=9, mFuel=400, mAmmo=0, mSteel=400, mBaux=0
}

ships['罗伯茨'] = {
    index=62, rarity=3, cost=1, sp=2, type='BM', country='英国', class='罗伯茨级1号舰',
    hp=28, atk=26, tpd=0, def=32, aa=24, eva=10, acc=32, as=0, rec=10, speed=12.2, luck=20, range='长', size='小型舰/护卫舰',
    atkMax=56, tpdMax=0, defMax=52, aaMax=54, evaMax=43, accMax=87, asMax=0, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=30, sTpd=0, sDef=32, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0,
    modLv=50, coreType='战列', coreNum=8, mFuel=800, mAmmo=600, mSteel=400, mBaux=0
}

ships['阿贝克隆比'] = {
    index=63, rarity=3, cost=1, sp=2, type='BM', country='英国', class='罗伯茨级2号舰',
    hp=28, atk=26, tpd=0, def=32, aa=24, eva=10, acc=32, as=0, rec=10, speed=12.2, luck=18, range='长', size='小型舰/护卫舰',
    atkMax=56, tpdMax=0, defMax=52, aaMax=54, evaMax=43, accMax=87, asMax=0, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=30, sTpd=0, sDef=32, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0,
    modLv=50, coreType='战列', coreNum=8, mFuel=800, mAmmo=600, mSteel=400, mBaux=0
}

ships['吹雪'] = {
    index=64, rarity=2, cost=1, sp=2, type='DD', country='日本', class='吹雪型1番舰',
    hp=15, atk=11, tpd=25, def=7, aa=7, eva=43, acc=30, as=16, rec=6, speed=37, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=37, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=48, coreType='驱逐', coreNum=8, mFuel=200, mAmmo=400, mSteel=200, mBaux=0
}

ships['白雪'] = {
    index=65, rarity=2, cost=1, sp=2, type='DD', country='日本', class='吹雪型2番舰',
    hp=15, atk=11, tpd=25, def=7, aa=7, eva=43, acc=30, as=16, rec=6, speed=37, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=37, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=49, coreType='驱逐', coreNum=8, mFuel=200, mAmmo=400, mSteel=200, mBaux=0
}

ships['初雪'] = {
    index=66, rarity=2, cost=1, sp=2, type='DD', country='日本', class='吹雪型3番舰',
    hp=15, atk=11, tpd=25, def=7, aa=7, eva=43, acc=30, as=16, rec=6, speed=37, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=37, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=51, coreType='驱逐', coreNum=8, mFuel=200, mAmmo=400, mSteel=200, mBaux=0
}

ships['深雪'] = {
    index=67, rarity=2, cost=1, sp=2, type='DD', country='日本', class='吹雪型4番舰',
    hp=15, atk=11, tpd=25, def=7, aa=7, eva=43, acc=30, as=16, rec=6, speed=37, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=37, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=72, coreType='驱逐', coreNum=12, mFuel=250, mAmmo=500, mSteel=250, mBaux=0
}

ships['晓'] = {
    index=68, rarity=3, cost=1, sp=2, type='DD', country='日本', class='晓型1番舰',
    hp=15, atk=11, tpd=25, def=7, aa=8, eva=43, acc=30, as=16, rec=6, speed=38, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=38, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=6, mFuel=200, mAmmo=200, mSteel=400, mBaux=0
}

ships['响'] = {
    index=69, rarity=3, cost=1, sp=2, type='DD', country='日本', class='晓型2番舰',
    hp=15, atk=11, tpd=25, def=7, aa=8, eva=43, acc=30, as=16, rec=6, speed=38, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=38, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=47, coreType='驱逐', coreNum=7, mFuel=300, mAmmo=100, mSteel=500, mBaux=0
}

ships['雷'] = {
    index=70, rarity=3, cost=1, sp=2, type='DD', country='日本', class='晓型3番舰',
    hp=15, atk=11, tpd=25, def=7, aa=8, eva=43, acc=30, as=16, rec=6, speed=38, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=38, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=30, coreType='驱逐', coreNum=6, mFuel=200, mAmmo=500, mSteel=300, mBaux=0
}

ships['电'] = {
    index=71, rarity=3, cost=1, sp=2, type='DD', country='日本', class='晓型4番舰',
    hp=15, atk=11, tpd=25, def=7, aa=8, eva=43, acc=30, as=16, rec=6, speed=38, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=38, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=34, coreType='驱逐', coreNum=5, mFuel=400, mAmmo=400, mSteel=400, mBaux=0
}

ships['绫波'] = {
    index=72, rarity=2, cost=1, sp=2, type='DD', country='日本', class='绫波型1番舰',
    hp=15, atk=11, tpd=25, def=7, aa=10, eva=43, acc=30, as=16, rec=6, speed=38, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=40, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=12, mFuel=300, mAmmo=300, mSteel=800, mBaux=0
}

ships['敷波'] = {
    index=73, rarity=1, cost=1, sp=2, type='DD', country='日本', class='绫波型2番舰',
    hp=15, atk=11, tpd=25, def=7, aa=10, eva=43, acc=30, as=16, rec=6, speed=38, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=40, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=44, coreType='驱逐', coreNum=4, mFuel=200, mAmmo=500, mSteel=300, mBaux=0
}

ships['Z1'] = {
    index=74, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1934型1号舰',
    hp=18, atk=8, tpd=24, def=8, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.2, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=23, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=20, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=150, mSteel=200, mBaux=0
}

ships['Z16'] = {
    index=75, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1934A型11号舰',
    hp=18, atk=8, tpd=24, def=8, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.2, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=23, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=150, mSteel=200, mBaux=0
}

ships['Z21'] = {
    index=76, rarity=1, cost=1, sp=2, type='DD', country='德国', class='1936型5号舰',
    hp=20, atk=13, tpd=24, def=10, aa=12, eva=38, acc=30, as=22, rec=6, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=25, aaMax=42, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=12, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=30, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=150, mSteel=200, mBaux=0
}

ships['Z22'] = {
    index=77, rarity=1, cost=1, sp=2, type='DD', country='德国', class='1936型6号舰',
    hp=20, atk=13, tpd=24, def=10, aa=12, eva=38, acc=30, as=22, rec=6, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=25, aaMax=42, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=12, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=30, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=150, mSteel=200, mBaux=0
}

ships['Z24'] = {
    index=78, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1936A型2号舰',
    hp=21, atk=13, tpd=24, def=10, aa=11, eva=36, acc=30, as=22, rec=6, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=25, aaMax=41, evaMax=80, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=12, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['Z28'] = {
    index=79, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1936A型6号舰',
    hp=21, atk=13, tpd=24, def=10, aa=11, eva=36, acc=30, as=22, rec=6, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=25, aaMax=41, evaMax=80, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=12, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=8, mFuel=0, mAmmo=280, mSteel=820, mBaux=0,
}

ships['Z31'] = {
    index=80, rarity=3, cost=1, sp=2, type='DD', country='德国', class='1936AM型1号舰',
    hp=22, atk=13, tpd=24, def=11, aa=11, eva=36, acc=30, as=22, rec=6, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=26, aaMax=41, evaMax=80, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=5, mFuel=500, mAmmo=500, mSteel=500, mBaux=500
}

ships['紫石英'] = {
    index=81, rarity=2, cost=1, sp=2, type='DD', country='英国', class='F116',
    hp=13, atk=8, tpd=5, def=4, aa=12, eva=33, acc=30, as=35, rec=4, speed=20, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=55, defMax=19, aaMax=42, evaMax=77, accMax=87, asMax=68, recMax=15,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=5, sDef=4, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=10, mFuel=2000, mAmmo=1000, mSteel=200, mBaux=0
}

ships['萤火虫'] = {
    index=82, rarity=2, cost=1, sp=2, type='DD', country='英国', class='G级4号舰',
    hp=14, atk=7, tpd=18, def=5, aa=15, eva=36, acc=30, as=28, rec=5, speed=36, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=68, defMax=20, aaMax=45, evaMax=80, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=18, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=35, coreType='驱逐', coreNum=5, mFuel=0, mAmmo=400, mSteel=400, mBaux=0
}

ships['标枪'] = {
    index=83, rarity=2, cost=1, sp=2, type='DD', country='英国', class='J级8号舰',
    hp=14, atk=9, tpd=20, def=5, aa=15, eva=36, acc=30, as=28, rec=5, speed=36, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=70, defMax=20, aaMax=45, evaMax=80, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=3, mFuel=300, mAmmo=0, mSteel=500, mBaux=0
}

ships['天后'] = {
    index=84, rarity=2, cost=1, sp=2, type='DD', country='英国', class='J级4号舰',
    hp=14, atk=9, tpd=20, def=5, aa=15, eva=36, acc=30, as=28, rec=5, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=70, defMax=20, aaMax=45, evaMax=80, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=41, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=200, mSteel=0, mBaux=200
}

ships['黑背豺'] = {
    index=85, rarity=2, cost=1, sp=2, type='DD', country='英国', class='J级2号舰',
    hp=14, atk=9, tpd=20, def=5, aa=15, eva=36, acc=30, as=28, rec=5, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=70, defMax=20, aaMax=45, evaMax=80, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=5, mFuel=400, mAmmo=0, mSteel=500, mBaux=0
}

ships['哥萨克人'] = {
    index=86, rarity=1, cost=1, sp=2, type='DD', country='英国', class='部族级4号舰',
    hp=17, atk=13, tpd=12, def=7, aa=15, eva=36, acc=30, as=26, rec=5, speed=35.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=62, defMax=22, aaMax=45, evaMax=80, accMax=87, asMax=59, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=12, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=6, mFuel=420, mAmmo=220, mSteel=600, mBaux=0
}

ships['爱斯基摩人'] = {
    index=87, rarity=1, cost=1, sp=2, type='DD', country='英国', class='部族级5号舰',
    hp=17, atk=13, tpd=12, def=7, aa=15, eva=36, acc=30, as=26, rec=5, speed=35.5, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=62, defMax=22, aaMax=45, evaMax=80, accMax=87, asMax=59, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=12, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=25, coreType='驱逐', coreNum=3, mFuel=0, mAmmo=150, mSteel=200, mBaux=0
}

ships['旁遮普人'] = {
    index=88, rarity=1, cost=1, sp=2, type='DD', country='英国', class='部族级12号舰',
    hp=17, atk=13, tpd=12, def=7, aa=15, eva=36, acc=30, as=26, rec=5, speed=35.5, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=62, defMax=22, aaMax=45, evaMax=80, accMax=87, asMax=59, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=12, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=6, mFuel=450, mAmmo=200, mSteel=450, mBaux=0
}

ships['弗莱彻'] = {
    index=89, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-445',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=36, coreType='驱逐', coreNum=5, mFuel=250, mAmmo=200, mSteel=200, mBaux=0
}

ships['卡辛杨'] = {
    index=90, rarity=1, cost=1, sp=2, type='DD', country='美国', class='DD-793',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['安东尼'] = {
    index=91, rarity=1, cost=1, sp=2, type='DD', country='美国', class='DD-515',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['布雷恩'] = {
    index=92, rarity=1, cost=1, sp=2, type='DD', country='美国', class='DD-630',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=30, coreType='驱逐', coreNum=4, mFuel=200, mAmmo=250, mSteel=200, mBaux=0
}

ships['基林'] = {
    index=93, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-710',
    hp=20, atk=10, tpd=20, def=8, aa=28, eva=32, acc=30, as=30, rec=6, speed=35, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=23, aaMax=58, evaMax=76, accMax=87, asMax=63, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=8, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=30, coreType='驱逐', coreNum=4, mFuel=200, mAmmo=250, mSteel=200, mBaux=0
}

ships['基阿特'] = {
    index=94, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-712',
    hp=20, atk=10, tpd=20, def=8, aa=28, eva=32, acc=43, as=30, rec=6, speed=35, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=23, aaMax=58, evaMax=76, accMax=87, asMax=63, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=8, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=18, mFuel=500, mAmmo=500, mSteel=200, mBaux=200
}

ships['弗兰克·诺克斯'] = {
    index=95, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-742',
    hp=20, atk=10, tpd=20, def=8, aa=28, eva=32, acc=30, as=30, rec=6, speed=35, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=23, aaMax=58, evaMax=76, accMax=87, asMax=63, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=8, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['鲍尔'] = {
    index=96, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-839',
    hp=20, atk=10, tpd=20, def=8, aa=28, eva=32, acc=30, as=30, rec=6, speed=35, luck=23, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=23, aaMax=58, evaMax=76, accMax=87, asMax=63, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=8, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['果敢'] = {
    index=97, rarity=4, cost=1, sp=2, type='DD', country='苏联', class='7型17号舰',
    hp=18, atk=12, tpd=12, def=8, aa=20, eva=39, acc=31, as=24, rec=5, speed=39, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=62, defMax=23, aaMax=50, evaMax=83, accMax=88, asMax=57, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国单装130毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=12, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=66, coreType='驱逐', coreNum=24, mFuel=5000, mAmmo=5000, mSteel=5000, mBaux=5000
}

ships['沃克兰'] = {
    index=98, rarity=1, cost=1, sp=2, type='DD', country='法国', class='沃克兰级1号舰',
    hp=20, atk=12, tpd=22, def=5, aa=10, eva=40, acc=30, as=30, rec=6, speed=40, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=72, defMax=20, aaMax=40, evaMax=84, accMax=87, asMax=63, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='三联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=22, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=37, coreType='驱逐', coreNum=5, mFuel=400, mAmmo=200, mSteel=300, mBaux=0
}

ships['空想'] = {
    index=99, rarity=5, cost=2, sp=3, type='DD', country='法国', class='空想级1号舰',
    hp=22, atk=12, tpd=25, def=7, aa=15, eva=50, acc=32, as=40, rec=8, speed=42, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=75, defMax=22, aaMax=45, evaMax=94, accMax=89, asMax=73, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=0, sTpd=25, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='巡洋', coreNum=8, mFuel=3000, mAmmo=0, mSteel=1000, mBaux=0
}

ships['狮(战列舰)'] = {
    index=100, rarity=6, cost=4, sp=4, type='BB', country='英国', class='狮级1号舰', skill='初升的朝阳',
    hp=81, atk=85, tpd=0, def=80, aa=55, eva=28, acc=41, as=0, rec=15, speed=28.25, luck=10, range='长', size='大型舰/主力舰',
    atkMax=110, tpdMax=0, defMax=105, aaMax=85, evaMax=50, accMax=97, asMax=0, recMax=42,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国MK.III型三联16英寸炮', eq2='附加装甲(大型)', eq3='无', eq4='无',
    sFuel=125, sAmmo=175, rFuel=4.8, rSteel=9, rTime=1, sAtk=91, sTpd=0, sDef=80, sAa=47, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=80, coreType='战列', coreNum=24, mFuel=600, mAmmo=600, mSteel=3000, mBaux=100
}

ships['长门'] = {
    index=101, rarity=4, cost=3, sp=3, type='BB', country='日本', class='长门型1番舰',
    hp=76, atk=80, tpd=0, def=70, aa=28, eva=25, acc=39, as=0, rec=17, speed=25, luck=21, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=90, aaMax=58, evaMax=47, accMax=95, asMax=0, recMax=44,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国41厘米连装炮', eq2='91式穿甲弹', eq3='无', eq4='无',
    sFuel=95, sAmmo=130, rFuel=3.2, rSteel=6, rTime=1, sAtk=80, sTpd=0, sDef=70, sAa=14, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=80, coreType='战列', coreNum=5, mFuel=500, mAmmo=500, mSteel=500, mBaux=100
}

ships['陆奥'] = {
    index=102, rarity=4, cost=3, sp=3, type='BB', country='日本', class='长门型2番舰',
    hp=76, atk=80, tpd=0, def=70, aa=28, eva=25, acc=39, as=0, rec=17, speed=25, luck=5, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=90, aaMax=58, evaMax=47, accMax=95, asMax=0, recMax=44,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国41厘米连装炮', eq2='三式弹', eq3='无', eq4='无',
    sFuel=95, sAmmo=130, rFuel=3.2, rSteel=6, rTime=1, sAtk=80, sTpd=0, sDef=70, sAa=14, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=82, coreType='战列', coreNum=15, mFuel=500, mAmmo=900, mSteel=1000, mBaux=100
}

ships['皇家橡树'] = {
    index=103, rarity=3, cost=2, sp=2, type='BB', country='英国', class='R级4号舰',
    hp=68, atk=68, tpd=0, def=66, aa=30, eva=15, acc=38, as=0, rec=10, speed=21, luck=5, range='长', size='大型舰/主力舰',
    atkMax=88, tpdMax=0, defMax=86, aaMax=60, evaMax=37, accMax=94, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=73, sTpd=0, sDef=66, sAa=15, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['厌战'] = {
    index=104, rarity=4, cost=2, sp=2, type='BB', country='英国', class='伊丽莎白女王级2号舰',
    hp=69, atk=69, tpd=0, def=67, aa=45, eva=18, acc=39, as=0, rec=12, speed=24.5, luck=33, range='长', size='大型舰/主力舰',
    atkMax=89, tpdMax=0, defMax=87, aaMax=75, evaMax=40, accMax=95, asMax=0, recMax=39,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='E国八联40毫米砰砰炮', eq3='标准型火控雷达', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=74, sTpd=0, sDef=67, sAa=32, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['前卫'] = {
    index=105, rarity=5, cost=3, sp=3, type='BB', country='英国', class='前卫级1号舰', skill='火力平台',
    hp=85, atk=70, tpd=0, def=76, aa=75, eva=27, acc=40, as=0, rec=18, speed=30, luck=15, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=96, aaMax=105, evaMax=49, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='E国博福斯40毫米防空机炮(六联)', eq3='E国274型雷达', eq4='无',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=75, sTpd=0, sDef=76, sAa=77, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=250
}

ships['田纳西'] = {
    index=106, rarity=3, cost=2, sp=2, type='BB', country='美国', class='田纳西级1号舰',
    hp=70, atk=74, tpd=0, def=70, aa=33, eva=15, acc=38, as=0, rec=12, speed=21, luck=28, range='长', size='大型舰/主力舰',
    atkMax=94, tpdMax=0, defMax=90, aaMax=63, evaMax=37, accMax=94, asMax=0, recMax=39,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=74, sTpd=0, sDef=70, sAa=22, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=46, coreType='战列', coreNum=5, mFuel=350, mAmmo=200, mSteel=300, mBaux=100
}

ships['加利福尼亚'] = {
    index=107, rarity=3, cost=2, sp=2, type='BB', country='美国', class='田纳西级2号舰',
    hp=70, atk=74, tpd=0, def=70, aa=35, eva=15, acc=38, as=0, rec=12, speed=21, luck=20, range='长', size='大型舰/主力舰',
    atkMax=94, tpdMax=0, defMax=90, aaMax=65, evaMax=37, accMax=94, asMax=0, recMax=39,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='标准型对空雷达', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=74, sTpd=0, sDef=70, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=46, coreType='战列', coreNum=5, mFuel=350, mAmmo=200, mSteel=300, mBaux=100
}

ships['科罗拉多'] = {
    index=108, rarity=4, cost=3, sp=3, type='BB', country='美国', class='科罗拉多级1号舰',
    hp=77, atk=80, tpd=0, def=71, aa=35, eva=16, acc=39, as=0, rec=12, speed=21, luck=22, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=91, aaMax=65, evaMax=38, accMax=95, asMax=0, recMax=39,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=80, sTpd=0, sDef=71, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=55, coreType='战列', coreNum=5, mFuel=500, mAmmo=500, mSteel=500, mBaux=100
}

ships['马里兰'] = {
    index=109, rarity=4, cost=3, sp=3, type='BB', country='美国', class='科罗拉多级2号舰',
    hp=77, atk=80, tpd=0, def=71, aa=35, eva=16, acc=39, as=0, rec=12, speed=21, luck=24, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=91, aaMax=65, evaMax=38, accMax=95, asMax=0, recMax=39,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=80, sTpd=0, sDef=71, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=57, coreType='战列', coreNum=7, mFuel=600, mAmmo=600, mSteel=600, mBaux=100
}

ships['西弗吉尼亚'] = {
    index=110, rarity=4, cost=3, sp=3, type='BB', country='美国', class='科罗拉多级3号舰',
    hp=77, atk=80, tpd=0, def=71, aa=35, eva=16, acc=39, as=0, rec=20, speed=21, luck=26, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=91, aaMax=65, evaMax=38, accMax=95, asMax=0, recMax=47,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=80, sTpd=0, sDef=71, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=80, coreType='战列', coreNum=7, mFuel=600, mAmmo=600, mSteel=600, mBaux=100
}

ships['华盛顿'] = {
    index=111, rarity=5, cost=3, sp=3, type='BB', country='美国', class='北卡罗来纳级2号舰', skill='夜战突击',
    hp=74, atk=88, tpd=0, def=72, aa=60, eva=25, acc=40, as=0, rec=18, speed=28, luck=30, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=92, aaMax=90, evaMax=58, accMax=96, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=72, sAa=60, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=250
}

ships['维托里奥·维内托'] = {
    index=112, rarity=5, cost=3, sp=4, type='BB', country='意大利', class='维内托级1号舰',
    hp=75, atk=81, tpd=0, def=78, aa=32, eva=28, acc=40, as=0, rec=14, speed=31, luck=17, range='长', size='大型舰/主力舰',
    atkMax=101, tpdMax=0, defMax=98, aaMax=62, evaMax=50, accMax=96, asMax=0, recMax=41,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联381毫米炮', eq2='普列塞水下防护系统', eq3='意式餐具套装', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1.1, sAtk=81, sTpd=0, sDef=78, sAa=16, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=80, coreType='战列', coreNum=25, mFuel=0, mAmmo=150, mSteel=3000, mBaux=500
}

ships['黎塞留'] = {
    index=113, rarity=5, cost=6, sp=5, type='BB', country='法国', class='黎塞留级1号舰', skill='凯旋之歌',
    hp=78, atk=76, tpd=0, def=82, aa=30, eva=29, acc=40, as=0, rec=13, speed=32, luck=23, range='长', size='大型舰/主力舰',
    atkMax=96, tpdMax=0, defMax=102, aaMax=60, evaMax=51, accMax=96, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国四联380毫米炮', eq2='F国四联380毫米炮(炸膛)', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1, sAtk=76, sTpd=0, sDef=82, sAa=15, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=300
}

ships['沙恩霍斯特'] = {
    index=114, rarity=4, cost=2, sp=2, type='BC', country='德国', class='沙恩霍斯特级1号舰',
    hp=72, atk=56, tpd=0, def=70, aa=25, eva=30, acc=39, as=0, rec=15, speed=31.5, luck=16, range='长', size='大型舰/主力舰',
    atkMax=81, tpdMax=0, defMax=85, aaMax=55, evaMax=63, accMax=95, asMax=0, recMax=42,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.88, rSteel=6, rTime=0.75, sAtk=56, sTpd=0, sDef=74, sAa=13, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['格奈森瑙'] = {
    index=115, rarity=4, cost=2, sp=2, type='BC', country='德国', class='沙恩霍斯特级2号舰',
    hp=72, atk=56, tpd=0, def=70, aa=25, eva=30, acc=39, as=0, rec=15, speed=31.5, luck=10, range='长', size='大型舰/主力舰',
    atkMax=81, tpdMax=0, defMax=85, aaMax=55, evaMax=63, accMax=95, asMax=0, recMax=42,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.88, rSteel=6, rTime=0.75, sAtk=56, sTpd=0, sDef=74, sAa=13, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['大凤'] = {
    index=117, rarity=5, cost=3, sp=3, type='AV', country='日本', class='大凤型1号舰', skill='航空压制',
    hp=67, atk=0, tpd=0, def=50, aa=40, eva=35, acc=32, as=0, rec=45, speed=33, luck=5, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=85, aaMax=70, evaMax=57, accMax=85, asMax=0, recMax=72,
    cap1=18, cap2=24, cap3=12, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战62型', eq2='彗星', eq3='天山', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.4, rTime=1, sAtk=0, sTpd=0, sDef=25, sAa=44, dFuel=20, dAmmo=20, dSteel=40, dBaux=10,
    modLv=75, coreType='航母', coreNum=20, mFuel=200, mAmmo=0, mSteel=2000, mBaux=2000
}

ships['齐柏林伯爵'] = {
    index=118, rarity=4, cost=3, sp=3, type='CV', country='德国', class='齐柏林伯爵级1号舰',
    hp=52, atk=0, tpd=0, def=33, aa=36, eva=32, acc=36, as=0, rec=38, speed=35, luck=6, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=58, aaMax=66, evaMax=54, accMax=95, asMax=0, recMax=65,
    cap1=12, cap2=15, cap3=15, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='BF109T', eq2='Ju-87C斯图卡', eq3='改良型动力系统', eq4='无',
    sFuel=50, sAmmo=55, rFuel=2.08, rSteel=4.3, rTime=1, sAtk=0, sTpd=0, sDef=20, sAa=36, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=70, coreType='航母', coreNum=18, mFuel=200, mAmmo=0, mSteel=2300, mBaux=1800
}

ships['皇家方舟(91)'] = {
    index=119, rarity=5, cost=4, sp=4, type='CV', country='英国', class='皇家方舟级1号舰', skill='精准打击',
    hp=48, atk=0, tpd=0, def=36, aa=47, eva=29, acc=37, as=0, rec=40, speed=31, luck=15, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=61, aaMax=77, evaMax=51, accMax=96, asMax=0, recMax=67,
    cap1=18, cap2=18, cap3=24, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='剑鱼', eq2='海燕', eq3='无', eq4='无',
    sFuel=50, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=1, sAtk=3, sTpd=0, sDef=18, sAa=58, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['约克城'] = {
    index=120, rarity=4, cost=3, sp=3, type='CV', country='美国', class='约克城级1号舰',
    hp=50, atk=0, tpd=0, def=30, aa=38, eva=30, acc=36, as=0, rec=38, speed=32.5, luck=12, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=55, aaMax=68, evaMax=52, accMax=95, asMax=0, recMax=65,
    cap1=21, cap2=21, cap3=23, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F2A水牛', eq2='SBD-3无畏', eq3='TBD蹂躏者', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=15, sAa=45, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=75, coreType='航母', coreNum=20, mFuel=300, mAmmo=0, mSteel=1300, mBaux=2000
}

ships['企业'] = {
    index=121, rarity=5, cost=4, sp=4, type='CV', country='美国', class='约克城级2号舰', skill='独木成林',
    hp=50, atk=0, tpd=0, def=30, aa=40, eva=30, acc=37, as=0, rec=40, speed=32.5, luck=55, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=55, aaMax=70, evaMax=52, accMax=96, asMax=0, recMax=73,
    cap1=21, cap2=21, cap3=23, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBD蹂躏者', eq3='F2A水牛', eq4='TBD蹂躏者',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=15, sAa=49, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=80, coreType='航母', coreNum=20, mFuel=300, mAmmo=0, mSteel=1500, mBaux=2200
}

ships['龙骧'] = {
    index=122, rarity=4, cost=1, sp=3, type='CVL', country='日本', class='龙骧型1番舰',
    hp=33, atk=0, tpd=0, def=13, aa=19, eva=28, acc=34, as=0, rec=36, speed=28, luck=9, range='短', size='中型舰/护卫舰',
    atkMax=25, tpdMax=0, defMax=33, aaMax=49, evaMax=50, accMax=90, asMax=0, recMax=63,
    cap1=21, cap2=15, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九七式舰攻', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=7, sAa=19, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['博格'] = {
    index=123, rarity=3, cost=1, sp=3, type='CVL', country='美国', class='博格级1号舰',
    hp=35, atk=0, tpd=0, def=7, aa=33, eva=15, acc=33, as=0, rec=36, speed=16.5, luck=15, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=27, aaMax=63, evaMax=37, accMax=89, asMax=0, recMax=63,
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=4, sAa=38, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=52, coreType='航母', coreNum=10, mFuel=400, mAmmo=0, mSteel=800, mBaux=600
}

ships['追赶者'] = {
    index=124, rarity=4, cost=2, sp=3, type='CVL', country='英国', class='攻击者级3号舰',
    hp=35, atk=0, tpd=0, def=7, aa=33, eva=15, acc=34, as=5, rec=36, speed=16.5, luck=30, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=27, aaMax=63, evaMax=37, accMax=90, asMax=16, recMax=63,
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='剑鱼MKIII', eq2='海喷火', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=2, sTpd=0, sDef=4, sAa=33, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=63, coreType='航母', coreNum=12, mFuel=450, mAmmo=0, mSteel=1300, mBaux=800
}

ships['巨像'] = {
    index=125, rarity=3, cost=2, sp=3, type='CVL', country='英国', class='巨像级1号舰',
    hp=40, atk=0, tpd=0, def=18, aa=40, eva=22, acc=33, as=0, rec=38, speed=25, luck=22, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=38, aaMax=70, evaMax=44, accMax=89, asMax=0, recMax=65,
    cap1=20, cap2=15, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海喷火MKXV', eq2='萤火虫', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=2, sTpd=0, sDef=9, sAa=44, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=52, coreType='航母', coreNum=10, mFuel=300, mAmmo=0, mSteel=650, mBaux=700
}

ships['普林斯顿'] = {
    index=126, rarity=3, cost=2, sp=3, type='CVL', country='美国', class='独立级2号舰',
    hp=36, atk=0, tpd=0, def=20, aa=45, eva=28, acc=33, as=0, rec=39, speed=31, luck=10, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=40, aaMax=65, evaMax=50, accMax=89, asMax=0, recMax=66,
    cap1=10, cap2=15, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=50, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=52, coreType='航母', coreNum=10, mFuel=300, mAmmo=0, mSteel=650, mBaux=700
}

ships['独角兽'] = {
    index=127, rarity=3, cost=1, sp=2, type='CVL', country='英国', class='无番号',
    hp=43, atk=0, tpd=0, def=22, aa=42, eva=21, acc=33, as=0, rec=36, speed=24, luck=21, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=42, aaMax=72, evaMax=43, accMax=89, asMax=0, recMax=63,
    cap1=20, cap2=10, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海喷火', eq2='剑鱼MKIII', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=2, sTpd=0, sDef=11, sAa=48, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['德意志(装甲舰)'] = {
    index=128, rarity=3, cost=2, sp=2, type='BC', country='德国', class='德意志级1号舰',
    hp=55, atk=43, tpd=12, def=35, aa=20, eva=25, acc=38, as=0, rec=13, speed=27.5, luck=13, range='长', size='大型舰/主力舰',
    atkMax=68, tpdMax=42, defMax=50, aaMax=50, evaMax=58, accMax=94, asMax=0, recMax=40,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='柴油机', eq3='无', eq4='不可装备',
    sFuel=50, sAmmo=90, rFuel=2.08, rSteel=4.3, rTime=0.75, sAtk=43, sTpd=0, sDef=38, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['舍尔海军上将'] = {
    index=129, rarity=3, cost=2, sp=2, type='BC', country='德国', class='德意志级2号舰',
    hp=55, atk=43, tpd=12, def=35, aa=20, eva=25, acc=38, as=0, rec=13, speed=27.5, luck=15, range='长', size='大型舰/主力舰',
    atkMax=68, tpdMax=42, defMax=50, aaMax=50, evaMax=58, accMax=94, asMax=0, recMax=40,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='柴油机', eq3='无', eq4='不可装备',
    sFuel=50, sAmmo=90, rFuel=2.08, rSteel=4.3, rTime=0.75, sAtk=43, sTpd=0, sDef=38, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['斯佩伯爵海军上将'] = {
    index=130, rarity=4, cost=2, sp=2, type='BC', country='德国', class='德意志级3号舰',
    hp=57, atk=43, tpd=12, def=36, aa=22, eva=25, acc=39, as=0, rec=14, speed=27.5, luck=8, range='长', size='大型舰/主力舰',
    atkMax=68, tpdMax=42, defMax=50, aaMax=52, evaMax=58, accMax=95, asMax=0, recMax=41,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='柴油机', eq3='无', eq4='不可装备',
    sFuel=50, sAmmo=90, rFuel=2.08, rSteel=4.3, rTime=0.75, sAtk=43, sTpd=0, sDef=39, sAa=11, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=55, coreType='巡洋', coreNum=15, mFuel=350, mAmmo=400, mSteel=750, mBaux=0
}

ships['古鹰'] = {
    index=131, rarity=3, cost=2, sp=2, type='CA', country='日本', class='古鹰型1番舰',
    hp=36, atk=28, tpd=16, def=26, aa=18, eva=35, acc=35, as=0, rec=11, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=51, defMax=41, aaMax=48, evaMax=79, accMax=91, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=28, sTpd=10, sDef=13, sAa=9, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=44, coreType='巡洋', coreNum=6, mFuel=450, mAmmo=200, mSteel=400, mBaux=0
}

ships['加古'] = {
    index=132, rarity=3, cost=2, sp=2, type='CA', country='日本', class='古鹰型2番舰',
    hp=36, atk=28, tpd=16, def=26, aa=18, eva=35, acc=35, as=0, rec=11, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=51, defMax=41, aaMax=48, evaMax=79, accMax=91, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=28, sTpd=10, sDef=13, sAa=9, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=44, coreType='巡洋', coreNum=6, mFuel=450, mAmmo=200, mSteel=400, mBaux=0
}

ships['青叶'] = {
    index=133, rarity=3, cost=2, sp=2, type='CA', country='日本', class='青叶型1番舰',
    hp=37, atk=28, tpd=16, def=27, aa=18, eva=35, acc=35, as=0, rec=11, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=51, defMax=42, aaMax=48, evaMax=79, accMax=91, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=28, sTpd=10, sDef=14, sAa=9, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=44, coreType='巡洋', coreNum=6, mFuel=450, mAmmo=200, mSteel=400, mBaux=0
}

ships['衣笠'] = {
    index=134, rarity=3, cost=2, sp=2, type='CA', country='日本', class='青叶型2番舰',
    hp=37, atk=28, tpd=16, def=27, aa=18, eva=35, acc=35, as=0, rec=11, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=51, defMax=42, aaMax=48, evaMax=79, accMax=91, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=28, sTpd=10, sDef=14, sAa=9, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['伦敦'] = {
    index=135, rarity=3, cost=2, sp=2, type='CA', country='英国', class='伦敦级1号舰',
    hp=50, atk=35, tpd=18, def=28, aa=36, eva=31, acc=35, as=0, rec=15, speed=32.5, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=53, defMax=41, aaMax=66, evaMax=75, accMax=91, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=39, sTpd=9, sDef=14, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=39, coreType='巡洋', coreNum=7, mFuel=300, mAmmo=0, mSteel=500, mBaux=0
}

ships['肯特'] = {
    index=136, rarity=3, cost=2, sp=2, type='CA', country='英国', class='肯特级1号舰',
    hp=49, atk=34, tpd=10, def=25, aa=35, eva=30, acc=35, as=0, rec=14, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=45, defMax=40, aaMax=65, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=38, sTpd=5, sDef=13, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=39, coreType='巡洋', coreNum=7, mFuel=300, mAmmo=0, mSteel=500, mBaux=0
}

ships['波特兰'] = {
    index=137, rarity=3, cost=2, sp=2, type='CA', country='美国', class='波特兰级1号舰',
    hp=49, atk=38, tpd=0, def=33, aa=38, eva=31, acc=35, as=0, rec=16, speed=32.7, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=53, aaMax=68, evaMax=75, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=26, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=39, coreType='巡洋', coreNum=6, mFuel=400, mAmmo=250, mSteel=500, mBaux=0
}

ships['印第安纳波利斯'] = {
    index=138, rarity=4, cost=2, sp=2, type='CA', country='美国', class='波特兰级2号舰',
    hp=49, atk=38, tpd=0, def=33, aa=48, eva=31, acc=36, as=0, rec=16, speed=32.7, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=53, aaMax=78, evaMax=75, accMax=92, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='极密货物', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=42, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['彭萨科拉'] = {
    index=139, rarity=3, cost=2, sp=2, type='CA', country='美国', class='彭萨科拉级1号舰',
    hp=47, atk=40, tpd=0, def=33, aa=36, eva=30, acc=35, as=0, rec=16, speed=32.5, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=65, tpdMax=0, defMax=53, aaMax=66, evaMax=74, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=40, sTpd=0, sDef=17, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=35, coreType='巡洋', coreNum=7, mFuel=400, mAmmo=250, mSteel=500, mBaux=0
}

ships['盐湖城'] = {
    index=140, rarity=3, cost=2, sp=2, type='CA', country='美国', class='彭萨科拉级2号舰',
    hp=47, atk=40, tpd=0, def=33, aa=36, eva=30, acc=35, as=0, rec=16, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=65, tpdMax=0, defMax=53, aaMax=66, evaMax=74, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=40, sTpd=0, sDef=17, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['北安普顿'] = {
    index=141, rarity=3, cost=2, sp=2, type='CA', country='美国', class='北安普顿级1号舰',
    hp=45, atk=38, tpd=0, def=33, aa=38, eva=31, acc=35, as=0, rec=16, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=53, aaMax=68, evaMax=75, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=26, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=5, mFuel=300, mAmmo=200, mSteel=500, mBaux=0
}

ships['休斯顿'] = {
    index=142, rarity=3, cost=2, sp=2, type='CA', country='美国', class='北安普顿级5号舰',
    hp=45, atk=38, tpd=0, def=33, aa=38, eva=31, acc=35, as=0, rec=16, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=53, aaMax=68, evaMax=75, accMax=91, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=26, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=6, mFuel=400, mAmmo=250, mSteel=500, mBaux=0
}

ships['新奥尔良'] = {
    index=143, rarity=3, cost=2, sp=2, type='CA', country='美国', class='新奥尔良级1号舰',
    hp=43, atk=38, tpd=0, def=32, aa=35, eva=31, acc=35, as=0, rec=15, speed=32.7, luck=12, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=52, aaMax=65, evaMax=75, accMax=91, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=16, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=42, coreType='巡洋', coreNum=5, mFuel=300, mAmmo=200, mSteel=500, mBaux=0
}

ships['基洛夫'] = {
    index=144, rarity=4, cost=1, sp=2, type='CL', country='苏联', class='26型1号舰',
    hp=29, atk=30, tpd=10, def=26, aa=24, eva=33, acc=34, as=20, rec=10, speed=36, luck=27, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=50, defMax=46, aaMax=54, evaMax=77, accMax=91, asMax=64, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联180毫米炮', eq2='Бе-4舰载侦察机', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=15, sTpd=10, sDef=13, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['川内'] = {
    index=145, rarity=2, cost=1, sp=2, type='CL', country='日本', class='川内型1番舰',
    hp=25, atk=15, tpd=26, def=10, aa=10, eva=36, acc=33, as=20, rec=8, speed=35.2, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=40, tpdMax=66, defMax=30, aaMax=40, evaMax=74, accMax=90, asMax=64, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=29, sDef=5, sAa=5, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=10, mFuel=500, mAmmo=500, mSteel=500, mBaux=500
}

ships['神通'] = {
    index=146, rarity=2, cost=1, sp=2, type='CL', country='日本', class='川内型2番舰',
    hp=25, atk=15, tpd=26, def=10, aa=13, eva=36, acc=33, as=20, rec=8, speed=35.2, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=40, tpdMax=66, defMax=30, aaMax=43, evaMax=74, accMax=90, asMax=64, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=29, sDef=5, sAa=7, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['那珂'] = {
    index=147, rarity=2, cost=1, sp=2, type='CL', country='日本', class='川内型3番舰',
    hp=25, atk=15, tpd=26, def=10, aa=13, eva=36, acc=33, as=20, rec=8, speed=35.2, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=40, tpdMax=66, defMax=30, aaMax=43, evaMax=74, accMax=90, asMax=64, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=29, sDef=5, sAa=7, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['M计划'] = {
    index=148, rarity=5, cost=1, sp=2, type='CL', country='德国', class='M计划级1号舰',
    hp=33, atk=19, tpd=13, def=18, aa=16, eva=36, acc=35, as=24, rec=9, speed=36, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=49, tpdMax=53, defMax=43, aaMax=46, evaMax=74, accMax=92, asMax=68, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联150毫米炮', eq2='四联533毫米鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=13, sDef=11, sAa=8, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['埃姆登'] = {
    index=149, rarity=2, cost=1, sp=2, type='CL', country='德国', class='埃姆登级1号舰',
    hp=30, atk=17, tpd=8, def=18, aa=16, eva=26, acc=33, as=24, rec=8, speed=29, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=44, defMax=38, aaMax=46, evaMax=64, accMax=90, asMax=68, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=9, sTpd=8, sDef=11, sAa=8, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=35, coreType='巡洋', coreNum=5, mFuel=300, mAmmo=300, mSteel=200, mBaux=0,
}

ships['翡翠'] = {
    index=150, rarity=2, cost=1, sp=2, type='CL', country='英国', class='翡翠级1号舰',
    hp=30, atk=17, tpd=24, def=15, aa=25, eva=30, acc=33, as=30, rec=10, speed=33, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=42, tpdMax=64, defMax=35, aaMax=55, evaMax=68, accMax=90, asMax=74, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装6英寸炮', eq2='金块箱', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=24, sDef=8, sAa=13, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=35, coreType='巡洋', coreNum=3, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['进取'] = {
    index=151, rarity=2, cost=1, sp=2, type='CL', country='英国', class='翡翠级2号舰',
    hp=30, atk=18, tpd=24, def=15, aa=25, eva=30, acc=33, as=30, rec=10, speed=33, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=43, tpdMax=64, defMax=35, aaMax=55, evaMax=68, accMax=90, asMax=74, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=12, sTpd=24, sDef=8, sAa=13, dFuel=5, dAmmo=8, dSteel=5, dBaux=0,
    modLv=38, coreType='巡洋', coreNum=3, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['爱丁堡'] = {
    index=152, rarity=4, cost=1, sp=2, type='CL', country='英国', class='爱丁堡级1号舰',
    hp=35, atk=27, tpd=10, def=30, aa=40, eva=30, acc=34, as=20, rec=10, speed=33, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=50, defMax=50, aaMax=70, evaMax=68, accMax=91, asMax=64, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联6英寸炮', eq2='金块箱', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=18, sTpd=10, sDef=15, sAa=24, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['贝尔法斯特'] = {
    index=153, rarity=5, cost=1, sp=2, type='CL', country='英国', class='爱丁堡级2号舰',
    hp=35, atk=27, tpd=10, def=30, aa=40, eva=30, acc=35, as=20, rec=10, speed=33, luck=40, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=50, defMax=50, aaMax=70, evaMax=68, accMax=92, asMax=64, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=18, sTpd=10, sDef=15, sAa=24, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['勇敢'] = {
    index=154, rarity=3, cost=1, sp=2, type='BC', country='英国', class='勇敢级1号舰',
    hp=52, atk=42, tpd=15, def=28, aa=18, eva=30, acc=38, as=0, rec=14, speed=32, luck=10, range='长', size='大型舰/主力舰',
    atkMax=67, tpdMax=45, defMax=43, aaMax=48, evaMax=63, accMax=94, asMax=0, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=100, rFuel=2.08, rSteel=3.9, rTime=0.75, sAtk=46, sTpd=0, sDef=28, sAa=9, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['光荣(大型轻巡洋舰)'] = {
    index=155, rarity=3, cost=1, sp=2, type='BC', country='英国', class='勇敢级2号舰',
    hp=52, atk=42, tpd=15, def=28, aa=18, eva=30, acc=38, as=0, rec=14, speed=32, luck=9, range='长', size='大型舰/主力舰',
    atkMax=67, tpdMax=45, defMax=43, aaMax=48, evaMax=63, accMax=94, asMax=0, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=100, rFuel=2.08, rSteel=3.9, rTime=0.75, sAtk=46, sTpd=0, sDef=28, sAa=9, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['暴怒'] = {
    index=156, rarity=4, cost=2, sp=2, type='BBV', country='英国', class='勇敢级3号舰',
    hp=57, atk=35, tpd=10, def=28, aa=20, eva=30, acc=38, as=0, rec=20, speed=32, luck=18, range='长', size='大型舰/主力舰',
    atkMax=60, tpdMax=40, defMax=43, aaMax=50, evaMax=63, accMax=94, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=10, cap4=5, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装18英寸舰炮', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=100, rFuel=2.08, rSteel=3.9, rTime=0.75, sAtk=22, sTpd=0, sDef=28, sAa=20, dFuel=50, dAmmo=60, dSteel=60, dBaux=10
}

ships['圣地亚哥'] = {
    index=157, rarity=4, cost=1, sp=2, type='CL', country='美国', class='亚特兰大级3号舰',
    hp=27, atk=24, tpd=0, def=19, aa=58, eva=31, acc=34, as=40, rec=12, speed=33.6, luck=40, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=0, defMax=44, aaMax=98, evaMax=69, accMax=91, asMax=84, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=12, sTpd=0, sDef=10, sAa=68, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['圣胡安'] = {
    index=158, rarity=3, cost=1, sp=2, type='CL', country='美国', class='亚特兰大级4号舰',
    hp=27, atk=24, tpd=0, def=19, aa=58, eva=31, acc=33, as=40, rec=12, speed=33.6, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=0, defMax=44, aaMax=98, evaMax=69, accMax=90, asMax=84, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=12, sTpd=0, sDef=10, sAa=68, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=8, mFuel=500, mAmmo=300, mSteel=300, mBaux=600
}

ships['索莫斯'] = {
    index=159, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DD-381', 
    hp=20, atk=15, tpd=26, def=8, aa=18, eva=37, acc=30, as=30, rec=6, speed=36, luck=16, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=76, defMax=23, aaMax=48, evaMax=86, accMax=87, asMax=74, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=26, sDef=8, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['摩尔曼斯克'] = {
    index=160, rarity=3, cost=1, sp=2, type='CL', country='苏联', class='奥马哈级2号舰',
    hp=28, atk=20, tpd=20, def=15, aa=40, eva=33, acc=33, as=25, rec=8, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=60, defMax=35, aaMax=70, evaMax=71, accMax=90, asMax=69, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='U国博福斯40毫米防空炮(双联)', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=10, sTpd=20, sDef=8, sAa=24, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=35, coreType='巡洋', coreNum=5, mFuel=500, mAmmo=0, mSteel=500, mBaux=0
}

ships['德·鲁伊特'] = {
    index=161, rarity=2, cost=1, sp=2, type='CL', country='undefined', class='无番号',
    hp=28, atk=19, tpd=0, def=15, aa=25, eva=32, acc=33, as=30, rec=8, speed=33, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=49, tpdMax=0, defMax=40, aaMax=55, evaMax=70, accMax=90, asMax=74, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='N国双联152毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=0, sDef=8, sAa=13, dFuel=5, dAmmo=8, dSteel=5, dBaux=0
}

ships['逸仙'] = {
    index=162, rarity=4, cost=0, sp=2, type='CL', country='中国', class='无番号',
    hp=18, atk=12, tpd=10, def=10, aa=20, eva=21, acc=34, as=25, rec=8, speed=20, luck=35, range='中', size='中型舰/护卫舰',
    atkMax=37, tpdMax=50, defMax=30, aaMax=50, evaMax=59, accMax=91, asMax=69, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国单装150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=6, sTpd=10, sDef=5, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=62, coreType='巡洋', coreNum=10, mFuel=250, mAmmo=250, mSteel=250, mBaux=250
}

ships['维那莫依嫩'] = {
    index=163, rarity=4, cost=1, sp=2, type='BM', country='undefined', class='维那莫依嫩级1号舰',
    hp=26, atk=27, tpd=0, def=28, aa=32, eva=13, acc=34, as=0, rec=9, speed=16, luck=24, range='长', size='小型舰/护卫舰',
    atkMax=47, tpdMax=0, defMax=48, aaMax=62, evaMax=46, accMax=90, asMax=0, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='254毫米博福斯双联主炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.54, rSteel=1.1, rTime=0.45, sAtk=27, sTpd=0, sDef=28, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['秋月'] = {
    index=164, rarity=2, cost=1, sp=2, type='DD', country='日本', class='秋月型1番舰',
    hp=19, atk=13, tpd=18, def=7, aa=28, eva=36, acc=30, as=23, rec=7, speed=33, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=22, aaMax=58, evaMax=80, accMax=87, asMax=56, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=44, coreType='驱逐', coreNum=6, mFuel=150, mAmmo=200, mSteel=300, mBaux=0
}

ships['凉月'] = {
    index=165, rarity=2, cost=1, sp=2, type='DD', country='日本', class='秋月型3番舰',
    hp=19, atk=13, tpd=18, def=7, aa=28, eva=37, acc=30, as=23, rec=7, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=22, aaMax=58, evaMax=81, accMax=87, asMax=56, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=6, mFuel=200, mAmmo=150, mSteel=300, mBaux=0
}

ships['阳炎'] = {
    index=166, rarity=3, cost=1, sp=2, type='DD', country='日本', class='阳炎型1番舰',
    hp=16, atk=12, tpd=28, def=7, aa=11, eva=37, acc=30, as=21, rec=7, speed=34, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=41, evaMax=81, accMax=87, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=10, mFuel=600, mAmmo=600, mSteel=500, mBaux=100
}

ships['不知火'] = {
    index=167, rarity=2, cost=1, sp=2, type='DD', country='日本', class='阳炎型2番舰',
    hp=16, atk=12, tpd=28, def=7, aa=11, eva=37, acc=30, as=21, rec=7, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=41, evaMax=81, accMax=87, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=10, mFuel=600, mAmmo=600, mSteel=500, mBaux=100
}

ships['黑潮'] = {
    index=168, rarity=2, cost=1, sp=2, type='DD', country='日本', class='阳炎型3番舰',
    hp=16, atk=12, tpd=28, def=7, aa=11, eva=37, acc=30, as=21, rec=7, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=41, evaMax=81, accMax=87, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=10, mFuel=600, mAmmo=600, mSteel=500, mBaux=100
}

ships['雪风'] = {
    index=169, rarity=5, cost=2, sp=2, type='DD', country='日本', class='阳炎型8番舰', skill='祥瑞御免',
    hp=16, atk=12, tpd=28, def=7, aa=20, eva=45, acc=32, as=21, rec=7, speed=38.2, luck=50, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=50, evaMax=89, accMax=89, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=75, coreType='驱逐', coreNum=15, mFuel=1000, mAmmo=1000, mSteel=500, mBaux=300
}

ships['Z3'] = {
    index=170, rarity=3, cost=1, sp=2, type='DD', country='德国', class='1934型3号舰',
    hp=18, atk=8, tpd=24, def=8, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.2, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=23, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z46'] = {
    index=171, rarity=5, cost=1, sp=2, type='DD', country='德国', class='1936C型1号舰',
    hp=22, atk=12, tpd=24, def=11, aa=30, eva=38, acc=32, as=26, rec=7, speed=37.5, luck=6, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=74, defMax=26, aaMax=60, evaMax=82, accMax=89, asMax=59, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联128毫米高平两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=10, mFuel=200, mAmmo=100, mSteel=300, mBaux=0
}

ships['热心'] = {
    index=172, rarity=3, cost=1, sp=2, type='DD', country='英国', class='A级3号舰',
    hp=14, atk=7, tpd=24, def=6, aa=15, eva=35, acc=30, as=28, rec=6, speed=35, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=74, defMax=21, aaMax=45, evaMax=79, accMax=87, asMax=61, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['阿卡司塔'] = {
    index=173, rarity=3, cost=1, sp=2, type='DD', country='英国', class='A级6号舰',
    hp=14, atk=7, tpd=26, def=6, aa=15, eva=35, acc=30, as=28, rec=6, speed=35, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=76, defMax=21, aaMax=45, evaMax=79, accMax=87, asMax=61, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=26, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['索玛雷兹'] = {
    index=174, rarity=4, cost=1, sp=2, type='DD', country='英国', class='S级1号舰',
    hp=14, atk=8, tpd=22, def=7, aa=22, eva=36, acc=31, as=30, rec=5, speed=36, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=72, defMax=22, aaMax=52, evaMax=80, accMax=88, asMax=63, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=1, sTpd=22, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['维纳斯'] = {
    index=175, rarity=3, cost=1, sp=2, type='DD', country='英国', class='V级1号舰',
    hp=14, atk=8, tpd=21, def=7, aa=22, eva=38, acc=30, as=30, rec=5, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=71, defMax=22, aaMax=52, evaMax=82, accMax=87, asMax=63, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=1, sTpd=21, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=8, mFuel=420, mAmmo=200, mSteel=650, mBaux=0
}

ships['军团'] = {
    index=176, rarity=2, cost=1, sp=2, type='DD', country='英国', class='L级4号舰',
    hp=15, atk=12, tpd=20, def=8, aa=27, eva=36, acc=30, as=28, rec=5, speed=36, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=70, defMax=23, aaMax=57, evaMax=80, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=1, sTpd=20, sDef=8, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['撒切尔'] = {
    index=177, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-514',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['沙利文'] = {
    index=178, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-537',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=32, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=5, mFuel=250, mAmmo=200, mSteel=200, mBaux=0
}

ships['西格斯比'] = {
    index=179, rarity=2, cost=1, sp=2, type='DD', country='美国', class='DD-502',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['奥班农'] = {
    index=180, rarity=5, cost=1, sp=2, type='DD', country='美国', class='DD-450',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=40, acc=32, as=35, rec=6, speed=37, luck=52, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=89, accMax=89, asMax=79, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='一袋土豆', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['威廉·D·波特'] = {
    index=181, rarity=5, cost=1, sp=2, type='DD', country='美国', class='DD-579', skill='扫把星',
    hp=17, atk=8, tpd=20, def=7, aa=28, eva=40, acc=32, as=25, rec=1, speed=37, luck=2, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=58, evaMax=84, accMax=89, asMax=58, recMax=1,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=62, coreType='驱逐', coreNum=12, mFuel=500, mAmmo=1000, mSteel=500, mBaux=0
}

ships['波特'] = {
    index=182, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-356',
    hp=18, atk=15, tpd=24, def=8, aa=15, eva=37, acc=30, as=25, rec=6, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=74, defMax=23, aaMax=45, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=8, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=39, coreType='驱逐', coreNum=5, mFuel=200, mAmmo=150, mSteel=300, mBaux=0
}

ships['拉菲(DD-724)'] = {
    index=183, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-724',
    hp=22, atk=10, tpd=20, def=10, aa=30, eva=36, acc=31, as=32, rec=7, speed=38.5, luck=45, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=30, aaMax=60, evaMax=80, accMax=88, asMax=65, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=10, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=200, mSteel=1000, mBaux=100
}

ships['拉菲(DD-459)'] = {
    index=184, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-459',
    hp=16, atk=7, tpd=20, def=6, aa=20, eva=37, acc=31, as=22, rec=6, speed=37.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=70, defMax=21, aaMax=50, evaMax=81, accMax=88, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷', eq2='U国单装5英寸炮', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=6, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['卡米契亚·内拉'] = {
    index=185, rarity=4, cost=1, sp=2, type='DD', country='意大利', class='索尔达蒂级1号舰',
    hp=18, atk=9, tpd=18, def=7, aa=11, eva=39, acc=31, as=28, rec=5, speed=38, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=68, defMax=22, aaMax=41, evaMax=83, accMax=88, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联120毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=11, mFuel=350, mAmmo=250, mSteel=500, mBaux=450
}

ships['阿维埃尔'] = {
    index=186, rarity=4, cost=1, sp=2, type='DD', country='意大利', class='索尔达蒂级2号舰',
    hp=18, atk=9, tpd=18, def=7, aa=11, eva=39, acc=31, as=28, rec=5, speed=38, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=68, defMax=22, aaMax=41, evaMax=83, accMax=88, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联120毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['安东尼奥·达诺利'] = {
    index=187, rarity=4, cost=1, sp=2, type='DD', country='意大利', class='航海家级4号舰',
    hp=20, atk=10, tpd=18, def=7, aa=11, eva=40, acc=31, as=22, rec=5, speed=39, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=68, defMax=22, aaMax=41, evaMax=84, accMax=88, asMax=55, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联120毫米炮', eq2='标准型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=200, mSteel=500, mBaux=400
}

ships['乌戈里尼·维瓦尔迪'] = {
    index=188, rarity=4, cost=1, sp=2, type='DD', country='意大利', class='航海家级5号舰',
    hp=20, atk=10, tpd=18, def=7, aa=11, eva=40, acc=31, as=22, rec=5, speed=39, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=68, defMax=22, aaMax=41, evaMax=84, accMax=88, asMax=55, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联120毫米炮', eq2='标准型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=200, mSteel=500, mBaux=400
}

ships['天城'] = {
    index=189, rarity=5, cost=3, sp=3, type='BC', country='日本', class='天城型1番舰', skill='协调轰击',
    hp=80, atk=90, tpd=0, def=70, aa=20, eva=27, acc=39, as=0, rec=15, speed=30, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=115, tpdMax=0, defMax=90, aaMax=50, evaMax=49, accMax=96, asMax=0, recMax=42, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国41厘米连装炮', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=130, rFuel=3.2, rSteel=5.8, rTime=1.0, sAtk=90, sTpd=0, sDef=70, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['土佐'] = {
    index=190, rarity=5, cost=5, sp=5, type='BB', country='日本', class='加贺型2番舰', skill='全炮效力射',
    hp=80, atk=90, tpd=0, def=73, aa=21, eva=24, acc=39, as=0, rec=15, speed=26.5, luck=7, range='长', size='大型舰/主力舰', 
    atkMax=115, tpdMax=0, defMax=93, aaMax=51, evaMax=44, accMax=96, asMax=0, recMax=42, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国41厘米连装炮', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=130, rFuel=3.2, rSteel=5.8, rTime=1.0, sAtk=90, sTpd=0, sDef=73, sAa=11, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['A150'] = {
    index=191, rarity=6, cost=1, sp=6, type='BB', country='日本', class='A150型1番舰', skill='泡沫幻影', 
    hp=104, atk=103, tpd=0, def=100, aa=43, eva=24, acc=39, as=0, rec=16, speed=28, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=128, tpdMax=0, defMax=120, aaMax=73, evaMax=44, accMax=96, asMax=0, recMax=45, 
    cap1=6, cap2=6, cap3=6, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='甲炮（A150）', eq2='三式弹', eq3='J国15.5厘米三联主炮', eq4='无',
    sFuel=170, sAmmo=200, rFuel=6, rSteel=11, rTime=1.0, sAtk=103, sTpd=0, sDef=100, sAa=29, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['塔什干'] = {
    index=192, rarity=5, cost=1, sp=2, type='DD', country='苏联', class='20I型1号舰',
    hp=24, atk=13, tpd=25, def=8, aa=16, eva=45, acc=32, as=20, rec=5, speed=42.7, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=75, defMax=23, aaMax=46, evaMax=89, accMax=89, asMax=53, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国双联130毫米炮', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=25, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=70, coreType='驱逐', coreNum=10, mFuel=400, mAmmo=400, mSteel=400, mBaux=400
}

ships['恩格斯'] = {
    index=193, rarity=4, cost=1, sp=2, type='DD', country='苏联', class='俄尔普斯6号舰',
    hp=13, atk=15, tpd=18, def=5, aa=9, eva=45, acc=31, as=24, rec=5, speed=35.5, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=68, defMax=20, aaMax=39, evaMax=79, accMax=88, asMax=57, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国单装305毫米无后座力炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=18, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['大青花鱼'] = {
    index=194, rarity=5, cost=6, sp=5, type='SS', country='美国', class='SS-218',
    hp=12, atk=4, tpd=24, def=10, aa=0, eva=20, acc=32, as=0, rec=12, speed=21, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.45, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=68, coreType='潜艇', coreNum=12, mFuel=0, mAmmo=1500, mSteel=1500, mBaux=0
}

ships['射水鱼'] = {
    index=195, rarity=5, cost=6, sp=5, type='SS', country='美国', class='SS-311',
    hp=12, atk=4, tpd=24, def=10, aa=0, eva=20, acc=32, as=0, rec=12, speed=21, luck=27, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.45, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=70, coreType='潜艇', coreNum=12, mFuel=0, mAmmo=1500, mSteel=1500, mBaux=0
}

ships['M1'] = {
    index=196, rarity=3, cost=4, sp=4, type='SC', country='英国', class='M级1号舰',
    hp=12, atk=20, tpd=18, def=10, aa=0, eva=15, acc=30, as=0, rec=10, speed=15, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=50, tpdMax=58, defMax=25, aaMax=0, evaMax=37, accMax=90, asMax=0, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装12英寸潜艇主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=40, rFuel=1, rSteel=1, rTime=0.5, sAtk=4, sTpd=18, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-47'] = {
    index=197, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U-47',
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=31, as=0, rec=13, speed=18, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=95, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=66, coreType='潜艇', coreNum=8, mFuel=0, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['U-505'] = {
    index=198, rarity=5, cost=6, sp=5, type='SS', country='德国', class='U-505',
    hp=12, atk=4, tpd=22, def=10, aa=0, eva=18, acc=32, as=0, rec=12, speed=18, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=72, defMax=25, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=75, coreType='潜艇', coreNum=12, mFuel=0, mAmmo=1500, mSteel=1500, mBaux=0,
}

ships['絮库夫'] = {
    index=199, rarity=3, cost=4, sp=4, type='SC', country='法国', class='无番号',
    hp=20, atk=16, tpd=22, def=12, aa=0, eva=19, acc=30, as=0, rec=12, speed=18.5, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=62, defMax=27, aaMax=0, evaMax=41, accMax=90, asMax=0, recMax=45,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国旋转鱼雷发射器', eq2='F国双联203毫米潜艇主炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=1, rSteel=1, rTime=0.5, sAtk=0, sTpd=22, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='潜艇', coreNum=8, mFuel=200, mAmmo=1000, mSteel=1000, mBaux=100
}

ships['兴登堡'] = {
    index=200, rarity=6, cost=4, sp=4, type='BB', country='德国', class='兴登堡级1号舰', skill='高速轻弹',
    hp=100, atk=84, tpd=0, def=80, aa=36, eva=26, acc=41, as=0, rec=16, speed=30, luck=5, range='长', size='大型舰/主力舰',
    atkMax=109, tpdMax=0, defMax=100, aaMax=66, evaMax=48, accMax=97, asMax=0, recMax=43,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联406毫米炮', eq2='附加装甲(大型)', eq3='无', eq4='无',
    sFuel=125, sAmmo=165, rFuel=4.8, rSteel=9.9, rTime=1.1, sAtk=84, sTpd=0, sDef=84, sAa=18, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['V方案'] = {
    index=201, rarity=5, cost=2, sp=6, type='BB', country='奥匈帝国', class='V方案', skill='亚得里亚之梦',
    hp=76, atk=87, tpd=0, def=72, aa=25, eva=24, acc=40, as=0, rec=16, speed=24, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=112, tpdMax=0, defMax=92, aaMax=55, evaMax=48, accMax=100, asMax=0, recMax=38, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=130, rFuel=4.1, rSteel=8, rTime=1.0, sAtk=87, sTpd=0, sDef=72, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['伊利诺伊'] = {
    index=202, rarity=6, cost=6, sp=6, type='BB', country='美国', class='衣阿华级5号舰', skill='巨炮残响',
    hp=84, atk=91, tpd=0, def=86, aa=75, eva=30, acc=41, as=0, rec=22, speed=33, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=116, tpdMax=0, defMax=106, aaMax=110, evaMax=52, accMax=102, asMax=0, recMax=49, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='早期型U国三联16英寸炮（MK7）', eq2='先进型火控雷达', eq3='改良型动力系统', eq4='无',
    sFuel=135, sAmmo=175, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=91, sTpd=0, sDef=86, sAa=89, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['伊丽莎白女王(00)'] = {
    index=203, rarity=3, cost=2, sp=2, type='BB', country='英国', class='伊丽莎白女王级1号舰',
    hp=69, atk=69, tpd=0, def=66, aa=25, eva=19, acc=38, as=0, rec=11, speed=25, luck=10, range='长', size='大型舰/主力舰',
    atkMax=89, tpdMax=0, defMax=86, aaMax=55, evaMax=41, accMax=94, asMax=0, recMax=38,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='标准型动力系统', eq3='无', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=74, sTpd=0, sDef=66, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['约克公爵'] = {
    index=205, rarity=5, cost=4, sp=3, type='BB', country='英国', class='英王乔治五世级3号舰', skill='骑士之誓',
    hp=74, atk=75, tpd=0, def=75, aa=55, eva=26, acc=40, as=0, rec=15, speed=29, luck=18, range='长', size='大型舰/主力舰',
    atkMax=95, tpdMax=0, defMax=95, aaMax=85, evaMax=48, accMax=96, asMax=0, recMax=42,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国四联14英寸炮', eq2='E国双联5.25英寸炮', eq3='标准型火控雷达', eq4='无',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=80, sTpd=0, sDef=75, sAa=47, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=80, coreType='战列', coreNum=20, mFuel=1200, mAmmo=1200, mSteel=700, mBaux=500
}

ships['北卡罗来纳'] = {
    index=206, rarity=5, cost=4, sp=4, type='BB', country='美国', class='北卡罗来纳级1号舰', skill='灵活转换(形态一)',
    hp=74, atk=88, tpd=0, def=72, aa=60, eva=25, acc=40, as=0, rec=18, speed=28, luck=25, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=92, aaMax=90, evaMax=47, accMax=96, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型火控雷达', eq2='U国三联16英寸炮(MK6)', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=72, sAa=60, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=0, mAmmo=0, mSteel=0, mBaux=300
}

ships['南达科他(BB-57)'] = {
    index=207, rarity=5, cost=5, sp=5, type='BB', country='美国', class='南达科他级1号舰', skill='不屈的迎风花',
    hp=75, atk=88, tpd=0, def=80, aa=63, eva=24, acc=40, as=0, rec=17, speed=27.5, luck=13, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=100, aaMax=93, evaMax=46, accMax=96, asMax=0, recMax=44,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=80, sAa=65, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=20, mFuel=500, mAmmo=1000, mSteel=1500, mBaux=300
}

ships['马萨诸塞'] = {
    index=208, rarity=5, cost=4, sp=4, type='BB', country='美国', class='南达科他级3号舰', skill='重击',
    hp=75, atk=88, tpd=0, def=80, aa=66, eva=24, acc=40, as=0, rec=17, speed=27.5, luck=24, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=100, aaMax=96, evaMax=46, accMax=96, asMax=0, recMax=44,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='超重弹', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=80, sAa=69, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['密苏里'] = {
    index=209, rarity=6, cost=6, sp=6, type='BB', country='美国', class='衣阿华级3号舰', skill='决胜之兵',
    hp=84, atk=91, tpd=0, def=82, aa=73, eva=30, acc=41, as=0, rec=20, speed=33, luck=24, range='长', size='大型舰/主力舰',
    atkMax=116, tpdMax=0, defMax=102, aaMax=108, evaMax=52, accMax=102, asMax=0, recMax=47,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='早期型U国三联16英寸炮（MK7）', eq2='先进型火控雷达', eq3='改良型动力系统', eq4='无',
    sFuel=135, sAmmo=175, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=91, sTpd=0, sDef=82, sAa=86, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=91, coreType='战列', coreNum=20, mFuel=600, mAmmo=1200, mSteel=1700, mBaux=500
}

ships['衣阿华'] = {
    index=210, rarity=6, cost=4, sp=4, type='BB', country='美国', class='衣阿华级1号舰', skill='止战之戈',
    hp=84, atk=91, tpd=0, def=82, aa=71, eva=30, acc=41, as=0, rec=18, speed=33, luck=24, range='长', size='大型舰/主力舰',
    atkMax=116, tpdMax=0, defMax=102, aaMax=106, evaMax=52, accMax=102, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='早期型U国三联16英寸炮（MK7）', eq2='先进型火控雷达', eq3='改良型动力系统', eq4='无',
    sFuel=135, sAmmo=175, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=91, sTpd=0, sDef=82, sAa=83, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['卡约·杜伊里奥'] = {
    index=211, rarity=5, cost=2, sp=2, type='BB', country='意大利', class='安德烈亚·多利亚级2号舰',
    hp=54, atk=59, tpd=0, def=59, aa=18, eva=22, acc=40, as=0, rec=10, speed=22, luck=10, range='长', size='大型舰/主力舰',
    atkMax=79, tpdMax=0, defMax=79, aaMax=48, evaMax=44, accMax=96, asMax=0, recMax=37,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联305毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.25, rSteel=4.55, rTime=1, sAtk=59, sTpd=0, sDef=59, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=60, coreType='战列', coreNum=12, mFuel=1200, mAmmo=1200, mSteel=1200, mBaux=100
}

ships['利托里奥'] = {
    index=212, rarity=5, cost=3, sp=4, type='BB', country='意大利', class='维内托级2号舰', skill='381警告！', 
    hp=75, atk=81, tpd=0, def=78, aa=33, eva=28, acc=40, as=0, rec=14, speed=31, luck=17, range='长', size='大型舰/主力舰', 
    atkMax=101, tpdMax=0, defMax=98, aaMax=63, evaMax=50, accMax=96, asMax=0, recMax=41, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联381毫米炮', eq2='普列塞水下防护系统', eq3='意式餐具套装', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1.1, sAtk=81, sTpd=0, sDef=78, sAa=17, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['罗马'] = {
    index=213, rarity=5, cost=3, sp=3, type='BB', country='意大利', class='维内托级3号舰', skill='强装药主炮',
    hp=75, atk=81, tpd=0, def=78, aa=35, eva=28, acc=40, as=0, rec=14, speed=31, luck=10, range='长', size='大型舰/主力舰',
    atkMax=101, tpdMax=0, defMax=98, aaMax=65, evaMax=50, accMax=96, asMax=0, recMax=41,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联381毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1.1, sAtk=81, sTpd=0, sDef=78, sAa=18, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['苏联'] = {
    index=214, rarity=5, cost=3, sp=3, type='BB', country='苏联', class='苏联级1号舰', skill='神圣的战争',
    hp=92, atk=86, tpd=0, def=77, aa=37, eva=29, acc=40, as=0, rec=11, speed=28, luck=8, range='长', size='大型舰/主力舰',
    atkMax=111, tpdMax=0, defMax=97, aaMax=67, evaMax=51, accMax=96, asMax=0, recMax=38,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联406毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=125, sAmmo=165, rFuel=4.8, rSteel=9, rTime=1, sAtk=86, sTpd=0, sDef=77, sAa=20, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['玛丽亚皇后'] = {
    index=215, rarity=4, cost=2, sp=2, type='BB', country='苏联', class='玛丽亚皇后级1号舰', 
    hp=54, atk=59, tpd=0, def=60, aa=12, eva=22, acc=40, as=0, rec=10, speed=21, luck=9, range='长', size='大型舰/主力舰', 
    atkMax=79, tpdMax=0, defMax=80, aaMax=42, evaMax=44, accMax=96, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.3, rSteel=4.55, rTime=1.0, sAtk=59, sTpd=0, sDef=60, sAa=6, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
    modLv=70, coreType='战列', coreNum=18, mFuel=1200, mAmmo=500, mSteel=1700, mBaux=200
}

ships['敦刻尔克'] = {
    index=216, rarity=5, cost=2, sp=2, type='BB', country='法国', class='敦刻尔克级1号舰',
    hp=62, atk=65, tpd=0, def=65, aa=33, eva=30, acc=40, as=0, rec=13, speed=31, luck=9, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=80, aaMax=63, evaMax=63, accMax=96, asMax=0, recMax=40,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国330毫米四联主炮', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.625, sAtk=65, sTpd=0, sDef=65, sAa=17, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['斯特拉斯堡'] = {
    index=217, rarity=5, cost=2, sp=2, type='BB', country='法国', class='敦刻尔克级2号舰',
    hp=66, atk=65, tpd=0, def=70, aa=33, eva=30, acc=40, as=0, rec=13, speed=31, luck=9, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=85, aaMax=63, evaMax=63, accMax=96, asMax=0, recMax=40,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国330毫米四联主炮', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.625, sAtk=65, sTpd=0, sDef=70, sAa=17, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['古斯塔夫五世'] = {
    index=218, rarity=4, cost=1, sp=2, type='BM', country='undefined', class='瑞典级3号舰',
    hp=40, atk=35, tpd=0, def=46, aa=29, eva=16, acc=39, as=0, rec=10, speed=23, luck=15, range='长', size='小型舰/护卫舰',
    atkMax=65, tpdMax=0, defMax=66, aaMax=59, evaMax=49, accMax=95, asMax=0, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='R国双联280毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=35, sTpd=0, sDef=46, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['瑞鹤'] = {
    index=219, rarity=5, cost=3, sp=3, type='CV', country='日本', class='翔鹤型2番舰',
    hp=62, atk=0, tpd=0, def=31, aa=36, eva=40, acc=37, as=0, rec=46, speed=34.2, luck=40, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=56, aaMax=66, evaMax=62, accMax=96, asMax=0, recMax=73,
    cap1=19, cap2=26, cap3=21, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=16, sAa=36, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=80, coreType='航母', coreNum=20, mFuel=450, mAmmo=0, mSteel=3500, mBaux=1200
}

ships['翔鹤'] = {
    index=220, rarity=5, cost=3, sp=3, type='CV', country='日本', class='翔鹤型1番舰',
    hp=62, atk=0, tpd=0, def=31, aa=36, eva=35, acc=37, as=0, rec=46, speed=34.2, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=56, aaMax=66, evaMax=57, accMax=96, asMax=0, recMax=73,
    cap1=19, cap2=26, cap3=21, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=16, sAa=36, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=80, coreType='航母', coreNum=20, mFuel=450, mAmmo=0, mSteel=3500, mBaux=1200
}

ships['飞龙'] = {
    index=221, rarity=4, cost=3, sp=3, type='CV', country='日本', class='飞龙型1番舰',
    hp=48, atk=0, tpd=0, def=27, aa=30, eva=35, acc=36, as=0, rec=38, speed=34.5, luck=13, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=52, aaMax=60, evaMax=57, accMax=95, asMax=0, recMax=65,
    cap1=21, cap2=18, cap3=18, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=14, sAa=30, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=75, coreType='航母', coreNum=20, mFuel=300, mAmmo=0, mSteel=3000, mBaux=1000
}

ships['苍龙'] = {
    index=222, rarity=4, cost=3, sp=3, type='CV', country='日本', class='苍龙型1番舰',
    hp=46, atk=0, tpd=0, def=25, aa=25, eva=35, acc=36, as=0, rec=42, speed=34.5, luck=10, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=50, aaMax=55, evaMax=57, accMax=95, asMax=0, recMax=69,
    cap1=21, cap2=18, cap3=18, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=13, sAa=25, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=75, coreType='航母', coreNum=20, mFuel=300, mAmmo=0, mSteel=3000, mBaux=1000
}

ships['信浓'] = {
    index=223, rarity=6, cost=4, sp=4, type='AV', country='日本', class='大和型3番舰', skill='穿梭支援',
    hp=96, atk=0, tpd=0, def=75, aa=38, eva=25, acc=33, as=0, rec=47, speed=27, luck=1, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=105, aaMax=68, evaMax=47, accMax=86, asMax=0, recMax=74,
    cap1=12, cap2=12, cap3=35, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='天河', eq2='烈风', eq3='流星', eq4='无',
    sFuel=110, sAmmo=100, rFuel=3.5, rSteel=6, rTime=1, sAtk=0, sTpd=0, sDef=38, sAa=40, dFuel=20, dAmmo=20, dSteel=40, dBaux=10,
    modLv=80, coreType='航母', coreNum=20, mFuel=450, mAmmo=0, mSteel=4500, mBaux=1500
}

ships['可畏'] = {
    index=224, rarity=5, cost=3, sp=3, type='AV', country='英国', class='光辉级3号舰', skill='马塔潘角之箭',
    hp=66, atk=0, tpd=0, def=63, aa=55, eva=34, acc=32, as=0, rec=42, speed=30.5, luck=22, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=93, aaMax=85, evaMax=56, accMax=85, asMax=0, recMax=69,
    cap1=10, cap2=24, cap3=15, cap4=8, msl1=0, msl2=0, msl3=0, msl4=0, eq1='大青花鱼鱼雷机', eq2='海喷火', eq3='无', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.6, rTime=1, sAtk=3, sTpd=0, sDef=32, sAa=74, dFuel=20, dAmmo=20, dSteel=40, dBaux=10,
    modLv=75, coreType='航母', coreNum=20, mFuel=450, mAmmo=200, mSteel=4000, mBaux=1500
}

ships['黄蜂(CV-7)'] = {
    index=225, rarity=4, cost=2, sp=2, type='CV', country='美国', class='黄蜂级1号舰',
    hp=37, atk=0, tpd=0, def=20, aa=35, eva=27, acc=36, as=0, rec=40, speed=29.5, luck=9, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=45, aaMax=65, evaMax=49, accMax=95, asMax=0, recMax=67,
    cap1=15, cap2=15, cap3=25, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='SBD-3无畏', eq3='TBF复仇者', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=10, sAa=40, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=65, coreType='航母', coreNum=20, mFuel=300, mAmmo=0, mSteel=1300, mBaux=2000
}

ships['埃塞克斯'] = {
    index=226, rarity=5, cost=3, sp=4, type='CV', country='美国', class='埃塞克斯级1号舰', skill='猎火鸡比赛',
    hp=60, atk=0, tpd=0, def=35, aa=60, eva=30, acc=37, as=0, rec=50, speed=33, luck=20, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=90, evaMax=52, accMax=96, asMax=0, recMax=77,
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=90, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['飞鹰'] = {
    index=227, rarity=3, cost=2, sp=3, type='CVL', country='日本', class='飞鹰型1番舰',
    hp=55, atk=0, tpd=0, def=16, aa=22, eva=25, acc=33, as=0, rec=34, speed=25.5, luck=13, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=36, aaMax=52, evaMax=47, accMax=89, asMax=0, recMax=61,
    cap1=12, cap2=18, cap3=18, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=8, sAa=22, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=54, coreType='航母', coreNum=9, mFuel=400, mAmmo=0, mSteel=950, mBaux=750
}

ships['隼鹰'] = {
    index=228, rarity=3, cost=2, sp=3, type='CVL', country='日本', class='飞鹰型2番舰',
    hp=55, atk=0, tpd=0, def=16, aa=22, eva=25, acc=33, as=0, rec=34, speed=25.5, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=36, aaMax=52, evaMax=47, accMax=89, asMax=0, recMax=61,
    cap1=12, cap2=18, cap3=18, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='九九式舰爆', eq3='九七式舰攻', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=8, sAa=22, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=55, coreType='航母', coreNum=9, mFuel=450, mAmmo=0, mSteel=900, mBaux=700
}

ships['凤翔'] = {
    index=229, rarity=3, cost=1, sp=2, type='CVL', country='日本', class='凤翔型1番舰',
    hp=27, atk=0, tpd=0, def=9, aa=15, eva=20, acc=33, as=0, rec=30, speed=25, luck=25, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=29, aaMax=45, evaMax=42, accMax=89, asMax=0, recMax=57,
    cap1=6, cap2=6, cap3=8, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九六式舰战', eq2='九七式舰攻', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.625, sAtk=0, sTpd=0, sDef=5, sAa=15, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['竞技神'] = {
    index=230, rarity=4, cost=1, sp=2, type='CVL', country='英国', class='竞技神级1号舰',
    hp=28, atk=0, tpd=0, def=10, aa=23, eva=18, acc=33, as=0, rec=30, speed=25, luck=15, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=30, aaMax=53, evaMax=40, accMax=89, asMax=0, recMax=57,
    cap1=6, cap2=12, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='剑鱼', eq2='洛克希德“天狼星”', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.75, sAtk=2, sTpd=0, sDef=5, sAa=23, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['伦道夫'] = {
    index=231, rarity=5, cost=3, sp=4, type='CV', country='美国', class='埃塞克斯级7号舰', skill='高强度弹射', 
    hp=60, atk=0, tpd=0, def=35, aa=62, eva=30, acc=37, as=0, rec=50, speed=33, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=60, aaMax=92, evaMax=52, accMax=96, asMax=0, recMax=77, 
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=94, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['贝亚恩'] = {
    index=232, rarity=3, cost=1, sp=2, type='CV', country='法国', class='贝亚恩级1号舰',
    hp=62, atk=0, tpd=0, def=34, aa=29, eva=19, acc=35, as=0, rec=32, speed=21.5, luck=16, range='短', size='大型舰/主力舰',
    atkMax=35, tpdMax=0, defMax=59, aaMax=59, evaMax=41, accMax=94, asMax=0, recMax=59,
    cap1=12, cap2=12, cap3=12, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='D.790', eq2='LN.401', eq3='BR.810', eq4='无',
    sFuel=50, sAmmo=55, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=17, sAa=29, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=65, coreType='航母', coreNum=18, mFuel=500, mAmmo=500, mSteel=500, mBaux=2500
}

ships['最上'] = {
    index=233, rarity=4, cost=2, sp=2, type='CA', country='日本', class='最上型1番舰',
    hp=42, atk=41, tpd=25, def=33, aa=22, eva=35, acc=36, as=0, rec=13, speed=35, luck=9, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=60, defMax=48, aaMax=52, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=16, sDef=17, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=45, coreType='航母', coreNum=10, mFuel=300, mAmmo=0, mSteel=400, mBaux=500
}

ships['三隈'] = {
    index=234, rarity=4, cost=2, sp=2, type='CA', country='日本', class='最上型2番舰',
    hp=42, atk=41, tpd=25, def=33, aa=22, eva=35, acc=36, as=0, rec=13, speed=35, luck=6, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=60, defMax=48, aaMax=52, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=16, sDef=17, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['铃谷'] = {
    index=235, rarity=4, cost=2, sp=2, type='CA', country='日本', class='最上型3番舰',
    hp=42, atk=41, tpd=25, def=33, aa=22, eva=35, acc=36, as=0, rec=13, speed=35, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=60, defMax=48, aaMax=52, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=16, sDef=17, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['熊野'] = {
    index=236, rarity=4, cost=2, sp=2, type='CA', country='日本', class='最上型4番舰',
    hp=42, atk=41, tpd=25, def=33, aa=22, eva=35, acc=36, as=0, rec=13, speed=35, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=60, defMax=48, aaMax=52, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=16, sDef=17, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['萨福克'] = {
    index=237, rarity=3, cost=2, sp=2, type='CA', country='英国', class='肯特级5号舰',
    hp=49, atk=34, tpd=10, def=26, aa=36, eva=30, acc=35, as=0, rec=13, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=45, defMax=41, aaMax=66, evaMax=74, accMax=91, asMax=0, recMax=51,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=38, sTpd=5, sDef=13, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['约克'] = {
    index=238, rarity=3, cost=2, sp=2, type='CA', country='英国', class='约克级1号舰',
    hp=33, atk=28, tpd=12, def=29, aa=38, eva=30, acc=35, as=0, rec=14, speed=32, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=47, defMax=44, aaMax=68, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=32, sTpd=6, sDef=15, sAa=21, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=8, mFuel=300, mAmmo=200, mSteel=500, mBaux=10,
}

ships['埃克赛特'] = {
    index=239, rarity=3, cost=2, sp=2, type='CA', country='英国', class='约克级2号舰',
    hp=33, atk=28, tpd=12, def=29, aa=38, eva=30, acc=35, as=0, rec=14, speed=32, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=47, defMax=44, aaMax=68, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=32, sTpd=6, sDef=15, sAa=21, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='巡洋', coreNum=8, mFuel=300, mAmmo=200, mSteel=500, mBaux=10,
}

ships['旧金山'] = {
    index=240, rarity=4, cost=2, sp=2, type='CA', country='美国', class='新奥尔良级5号舰',
    hp=43, atk=38, tpd=0, def=32, aa=40, eva=33, acc=36, as=0, rec=15, speed=32.7, luck=30, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=0, defMax=47, aaMax=70, evaMax=77, accMax=92, asMax=0, recMax=53,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=16, sAa=29, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=9, mFuel=300, mAmmo=200, mSteel=500, mBaux=0
}

ships['巴尔的摩'] = {
    index=241, rarity=5, cost=4, sp=4, type='CA', country='美国', class='巴尔的摩级1号舰', skill='不朽的英魂',
    hp=52, atk=43, tpd=0, def=36, aa=60, eva=31, acc=37, as=0, rec=18, speed=33, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=0, defMax=56, aaMax=90, evaMax=75, accMax=93, asMax=0, recMax=56,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮(MK12/15)', eq2='U国双联5英寸平高两用炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=60, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=50, coreType='巡洋', coreNum=15, mFuel=300, mAmmo=200, mSteel=800, mBaux=300
}

ships['卡德'] = {
    index=242, rarity=3, cost=2, sp=2, type='CVL', country='美国', class='博格级2号舰', 
    hp=35, atk=0, tpd=0, def=7, aa=36, eva=15, acc=33, as=0, rec=36, speed=16.5, luck=19, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=27, aaMax=66, evaMax=37, accMax=89, asMax=0, recMax=63, 
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=4, sAa=41, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['德梅因'] = {
    index=243, rarity=6, cost=3, sp=3, type='CA', country='美国', class='德梅因级1号舰', skill='八英寸机关枪',
    hp=52, atk=53, tpd=0, def=38, aa=78, eva=31, acc=38, as=0, rec=18, speed=33, luck=11, range='中', size='中型舰/护卫舰',
    atkMax=83, tpdMax=0, defMax=58, aaMax=108, evaMax=75, accMax=94, asMax=0, recMax=56,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16三联8英寸自动炮', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=53, sTpd=0, sDef=19, sAa=88, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['灵敏'] = {
    index=244, rarity=4, cost=2, sp=2, type='DD', country='苏联', class='7型18号舰', 
    hp=18, atk=12, tpd=12, def=8, aa=20, eva=39, acc=31, as=24, rec=5, speed=39, luck=27, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=62, defMax=23, aaMax=50, evaMax=83, accMax=88, asMax=57, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国单装130毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=12, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=60, coreType='驱逐', coreNum=15, mFuel=800, mAmmo=0, mSteel=1200, mBaux=0
}

ships['扎拉'] = {
    index=245, rarity=4, cost=2, sp=2, type='CA', country='意大利', class='扎拉级1号舰',
    hp=46, atk=35, tpd=0, def=41, aa=23, eva=32, acc=35, as=0, rec=14, speed=32, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=60, tpdMax=0, defMax=61, aaMax=53, evaMax=70, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(中型)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.8, sAtk=35, sTpd=0, sDef=21, sAa=12, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['阿尔及利亚'] = {
    index=246, rarity=4, cost=2, sp=2, type='CA', country='法国', class='阿尔及利亚级1号舰',
    hp=42, atk=36, tpd=12, def=35, aa=31, eva=31, acc=35, as=0, rec=14, speed=31, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=42, defMax=55, aaMax=61, evaMax=69, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国双联M1931式203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=36, sTpd=6, sDef=18, sAa=16, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['香取'] = {
    index=247, rarity=3, cost=1, sp=2, type='CL', country='日本', class='香取型1番舰',
    hp=23, atk=13, tpd=10, def=7, aa=16, eva=15, acc=33, as=30, rec=9, speed=18, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=38, tpdMax=50, defMax=27, aaMax=46, evaMax=53, accMax=90, asMax=74, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装高射炮', eq2='零式水上侦察机', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.5, rSteel=1.5, rTime=0.5, sAtk=7, sTpd=12, sDef=4, sAa=8, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=35, coreType='巡洋', coreNum=5, mFuel=500, mAmmo=500, mSteel=500, mBaux=500
}

ships['大淀'] = {
    index=248, rarity=5, cost=1, sp=2, type='CL', country='日本', class='大淀型1番舰',
    hp=32, atk=20, tpd=0, def=25, aa=33, eva=35, acc=35, as=28, rec=20, speed=35.3, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=0, defMax=50, aaMax=63, evaMax=73, accMax=92, asMax=72, recMax=31,
    cap1=6, cap2=6, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国15.5厘米三联主炮', eq2='紫云', eq3='改良型声纳', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=0, sDef=13, sAa=17, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=55, coreType='航母', coreNum=10, mFuel=800, mAmmo=500, mSteel=900, mBaux=900
}

ships['莱比锡'] = {
    index=249, rarity=3, cost=1, sp=2, type='CL', country='德国', class='莱比锡级1号舰',
    hp=35, atk=25, tpd=20, def=26, aa=19, eva=30, acc=33, as=26, rec=9, speed=32, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=60, defMax=46, aaMax=49, evaMax=68, accMax=90, asMax=70, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=13, sTpd=20, sDef=16, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=48, coreType='巡洋', coreNum=6, mFuel=200, mAmmo=200, mSteel=150, mBaux=200
}

ships['伍斯特'] = {
    index=250, rarity=6, cost=2, sp=2, type='CL', country='美国', class='伍斯特级1号舰',
    hp=40, atk=38, tpd=0, def=30, aa=82, eva=31, acc=35, as=40, rec=17, speed=32, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=0, defMax=55, aaMax=122, evaMax=69, accMax=92, asMax=62, recMax=55,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国MK16DP双联6英寸高射炮', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.45, sAtk=19, sTpd=0, sDef=15, sAa=104, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['奥克兰'] = {
    index=251, rarity=3, cost=2, sp=2, type='CL', country='美国', class='亚特兰大级5号舰',
    hp=27, atk=22, tpd=0, def=19, aa=65, eva=31, acc=33, as=40, rec=12, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=0, defMax=44, aaMax=105, evaMax=69, accMax=90, asMax=84, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国博福斯40毫米防空炮(四联)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=11, sTpd=0, sDef=10, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['克利夫兰'] = {
    index=252, rarity=4, cost=2, sp=2, type='CL', country='美国', class='克利夫兰级1号舰', skill='高速射击',
    hp=36, atk=31, tpd=0, def=30, aa=65, eva=31, acc=34, as=30, rec=12, speed=32.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=0, defMax=55, aaMax=105, evaMax=69, accMax=91, asMax=74, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['应瑞'] = {
    index=253, rarity=3, cost=0, sp=2, type='CL', country='中国', class='应瑞级1号舰',
    hp=23, atk=14, tpd=10, def=16, aa=10, eva=15, acc=33, as=20, rec=7, speed=20, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=39, tpdMax=50, defMax=36, aaMax=40, evaMax=53, accMax=90, asMax=64, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国单装150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=7, sTpd=10, sDef=8, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['肇和'] = {
    index=254, rarity=3, cost=0, sp=2, type='CL', country='中国', class='应瑞级2号舰',
    hp=24, atk=14, tpd=10, def=16, aa=10, eva=15, acc=33, as=20, rec=7, speed=20, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=39, tpdMax=50, defMax=36, aaMax=40, evaMax=53, accMax=90, asMax=64, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国单装150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=7, sTpd=10, sDef=8, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['加罗林'] = {
    index=255, rarity=4, cost=2, sp=2, type='CL', country='英国', class='加罗林级1号舰', 
    hp=24, atk=12, tpd=10, def=17, aa=10, eva=29, acc=34, as=24, rec=10, speed=28, luck=28, range='中', size='中型舰/护卫舰', 
    atkMax=37, tpdMax=50, defMax=37, aaMax=40, evaMax=70, accMax=92, asMax=69, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.7, rSteel=1.3, rTime=0.45, sAtk=9, sTpd=10, sDef=9, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['布莱克'] = {
    index=256, rarity=5, cost=2, sp=2, type='CL', country='英国', class='虎级3号舰', 
    hp=36, atk=28, tpd=0, def=30, aa=74, eva=33, acc=37, as=40, rec=15, speed=31.5, luck=13, range='中', size='中型舰/护卫舰', 
    atkMax=53, tpdMax=0, defMax=50, aaMax=104, evaMax=69, accMax=94, asMax=62, recMax=26, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联MK.N5型6英寸高平速射炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=35, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=18, sTpd=0, sDef=15, sAa=75, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['阿尔比翁'] = {
    index=257, rarity=4, cost=2, sp=2, type='CVL', country='英国', class='半人马级2号舰', 
    hp=48, atk=0, tpd=0, def=38, aa=55, eva=26, acc=33, as=0, rec=38, speed=28, luck=10, range='短', size='中型舰/护卫舰', 
    atkMax=30, tpdMax=0, defMax=63, aaMax=85, evaMax=50, accMax=89, asMax=0, recMax=67, 
    cap1=16, cap2=19, cap3=8, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='飞龙(装备)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.5, rSteel=2.9, rTime=0.75, sAtk=3, sTpd=0, sDef=19, sAa=74, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['高波'] = {
    index=258, rarity=4, cost=2, sp=2, type='DD', country='日本', class='夕云型6番舰', 
    hp=16, atk=12, tpd=30, def=7, aa=15, eva=37, acc=30, as=21, rec=7, speed=35, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=80, defMax=22, aaMax=45, evaMax=81, accMax=87, asMax=54, recMax=18, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=33, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=40, coreType='驱逐', coreNum=10, mFuel=500, mAmmo=400, mSteel=600, mBaux=200,
}

ships['吞武里'] = {
    index=259, rarity=4, cost=1, sp=2, type='BM', country='undefined', class='吞武里级1号舰',
    hp=24, atk=20, tpd=0, def=26, aa=10, eva=13, acc=33, as=0, rec=9, speed=15.5, luck=17, range='长', size='小型舰/护卫舰',
    atkMax=50, tpdMax=0, defMax=46, aaMax=40, evaMax=46, accMax=88, asMax=0, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='柴油机', eq3='不可装备', eq4='不可装备',
    sFuel=12, sAmmo=20, rFuel=0.48, rSteel=1.05, rTime=0.4, sAtk=20, sTpd=0, sDef=26, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['睦月'] = {
    index=260, rarity=1, cost=1, sp=2, type='DD', country='日本', class='睦月型1番舰',
    hp=13, atk=7, tpd=18, def=5, aa=8, eva=40, acc=30, as=16, rec=4, speed=37, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=68, defMax=20, aaMax=38, evaMax=84, accMax=87, asMax=49, recMax=15,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12厘米单装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['白露'] = {
    index=261, rarity=3, cost=1, sp=2, type='DD', country='日本', class='白露型1番舰',
    hp=15, atk=9, tpd=24, def=5, aa=10, eva=38, acc=30, as=21, rec=5, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=20, aaMax=40, evaMax=82, accMax=87, asMax=54, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['时雨'] = {
    index=262, rarity=4, cost=1, sp=2, type='DD', country='日本', class='白露型2番舰', skill='及时雨',
    hp=16, atk=9, tpd=24, def=5, aa=10, eva=44, acc=30, as=21, rec=5, speed=34, luck=35, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=20, aaMax=40, evaMax=88, accMax=87, asMax=54, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['村雨'] = {
    index=263, rarity=3, cost=1, sp=2, type='DD', country='日本', class='白露型3番舰',
    hp=15, atk=9, tpd=24, def=5, aa=10, eva=38, acc=30, as=21, rec=5, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=20, aaMax=40, evaMax=82, accMax=87, asMax=54, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['夕立'] = {
    index=264, rarity=4, cost=1, sp=2, type='DD', country='日本', class='白露型4番舰',
    hp=15, atk=9, tpd=24, def=5, aa=10, eva=38, acc=30, as=21, rec=5, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=20, aaMax=40, evaMax=82, accMax=87, asMax=54, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['岚'] = {
    index=265, rarity=4, cost=1, sp=2, type='DD', country='日本', class='阳炎型16番舰',
    hp=16, atk=10, tpd=24, def=6, aa=11, eva=37, acc=31, as=24, rec=6, speed=34, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=74, defMax=21, aaMax=41, evaMax=81, accMax=88, asMax=57, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型声纳', eq2='标准型深弹投射器', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=12, mFuel=250, mAmmo=1000, mSteel=300, mBaux=0
}

ships['初夏'] = {
    index=266, rarity=4, cost=2, sp=2, type='DD', country='日本', class='北风型5番舰', 
    hp=20, atk=13, tpd=26, def=8, aa=35, eva=36, acc=30, as=32, rec=7, speed=36.7, luck=5, range='短', size='小型舰/护卫舰', 
    atkMax=33, tpdMax=76, defMax=23, aaMax=65, evaMax=80, accMax=87, asMax=65, recMax=18, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='J国六联61厘米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.49, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=29, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=50, coreType='驱逐', coreNum=8, mFuel=200, mAmmo=300, mSteel=300, mBaux=100
}

ships['岛风(岛风型驱逐舰)'] = {
    index=267, rarity=5, cost=2, sp=2, type='DD', country='日本', class='岛风型1番舰',
    hp=20, atk=10, tpd=45, def=7, aa=13, eva=50, acc=32, as=21, rec=8, speed=40, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=95, defMax=22, aaMax=43, evaMax=94, accMax=89, asMax=54, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米五连装鱼雷', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=48, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=18, mFuel=300, mAmmo=1200, mSteel=300, mBaux=0
}

ships['峰风'] = {
    index=268, rarity=1, cost=1, sp=2, type='DD', country='日本', class='峰风型1番舰',
    hp=12, atk=6, tpd=16, def=5, aa=8, eva=45, acc=30, as=16, rec=4, speed=39, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=66, defMax=20, aaMax=38, evaMax=94, accMax=87, asMax=49, recMax=15,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12厘米单装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.45, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=19, sDef=5, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['Z17'] = {
    index=269, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1936型1号舰',
    hp=19, atk=8, tpd=24, def=9, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.5, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=24, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=11, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=41, coreType='驱逐', coreNum=4, mFuel=0, mAmmo=250, mSteel=200, mBaux=0
}

ships['Z18'] = {
    index=270, rarity=2, cost=1, sp=2, type='DD', country='德国', class='1936型2号舰',
    hp=19, atk=8, tpd=24, def=9, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.5, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=24, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=11, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=4, mFuel=0, mAmmo=250, mSteel=200, mBaux=0
}

ships['吸血鬼'] = {
    index=271, rarity=3, cost=1, sp=2, type='DD', country='undefined', class='D68',
    hp=14, atk=8, tpd=18, def=5, aa=15, eva=34, acc=30, as=32, rec=5, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=68, defMax=20, aaMax=45, evaMax=78, accMax=87, asMax=65, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='标准型深弹投射器', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=18, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['海达人'] = {
    index=272, rarity=3, cost=1, sp=2, type='DD', country='undefined', class='G63',
    hp=17, atk=13, tpd=12, def=7, aa=15, eva=36, acc=30, as=26, rec=5, speed=35.5, luck=35, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=62, defMax=22, aaMax=45, evaMax=80, accMax=87, asMax=59, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='改良型深弹投射器', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=12, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['塞尔弗里奇'] = {
    index=273, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-357', 
    hp=18, atk=15, tpd=24, def=8, aa=18, eva=37, acc=30, as=25, rec=6, speed=38.5, luck=16, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=74, defMax=23, aaMax=48, evaMax=81, accMax=87, asMax=58, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=8, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=39, coreType='驱逐', coreNum=8, mFuel=300, mAmmo=400, mSteel=500, mBaux=100,
}

ships['X1'] = {
    index=274, rarity=3, cost=3, sp=2, type='SC', country='英国', class='X1型1号舰', 
    hp=20, atk=10, tpd=20, def=12, aa=0, eva=19, acc=30, as=0, rec=15, speed=19.5, luck=9, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=60, defMax=27, aaMax=0, evaMax=41, accMax=90, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=1, rSteel=1, rTime=0.45, sAtk=3, sTpd=20, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['康弗斯'] = {
    index=275, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-509',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=65, coreType='驱逐', coreNum=10, mFuel=500, mAmmo=500, mSteel=500, mBaux=100,
}

ships['戴森'] = {
    index=276, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-572',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['克拉克斯顿'] = {
    index=277, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-571',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=65, coreType='驱逐', coreNum=10, mFuel=500, mAmmo=500, mSteel=500, mBaux=100,
}

ships['霍埃尔'] = {
    index=278, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-533',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=55, coreType='驱逐', coreNum=9, mFuel=250, mAmmo=1000, mSteel=300, mBaux=0
}

ships['塞缪尔·B·罗伯茨'] = {
    index=279, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DE-413',
    hp=14, atk=6, tpd=10, def=6, aa=22, eva=34, acc=30, as=35, rec=6, speed=28, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=60, defMax=21, aaMax=52, evaMax=78, accMax=87, asMax=68, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='改良型深弹投射器', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=10, sDef=6, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=8, mFuel=300, mAmmo=200, mSteel=500, mBaux=0
}

ships['约翰斯顿'] = {
    index=280, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-557',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=30, as=25, rec=6, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=9, mFuel=250, mAmmo=1000, mSteel=300, mBaux=0
}

ships['雷鸣'] = {
    index=281, rarity=5, cost=2, sp=2, type='DD', country='苏联', class='7型6号舰',
    hp=18, atk=12, tpd=12, def=8, aa=20, eva=39, acc=31, as=24, rec=5, speed=39, luck=30, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=62, defMax=23, aaMax=50, evaMax=83, accMax=88, asMax=57, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国单装130毫米炮', eq2='三联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=12, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['潜甲'] = {
    index=282, rarity=4, cost=4, sp=4, type='SS', country='中国', class='U-120', 
    hp=8, atk=1, tpd=11, def=5, aa=0, eva=20, acc=31, as=0, rec=12, speed=13, luck=1, range='短', size='小型舰/护卫舰', 
    atkMax=21, tpdMax=61, defMax=20, aaMax=0, evaMax=42, accMax=95, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.45, rSteel=0.4, rTime=0.25, sAtk=0, sTpd=11, sDef=5, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['潜乙'] = {
    index=283, rarity=4, cost=4, sp=4, type='SS', country='中国', class='U-121', 
    hp=8, atk=1, tpd=11, def=5, aa=0, eva=20, acc=31, as=0, rec=12, speed=13, luck=1, range='短', size='小型舰/护卫舰', 
    atkMax=21, tpdMax=61, defMax=20, aaMax=0, evaMax=42, accMax=95, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.45, rSteel=0.4, rTime=0.25, sAtk=0, sTpd=11, sDef=5, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['布吕歇尔(装甲巡洋舰)'] = {
    index=284, rarity=3, cost=2, sp=2, type='CA', country='德国', class='布吕歇尔级1号舰', 
    hp=52, atk=40, tpd=0, def=42, aa=7, eva=25, acc=34, as=0, rec=10, speed=24.5, luck=9, range='中', size='中型舰/护卫舰', 
    atkMax=60, tpdMax=0, defMax=57, aaMax=37, evaMax=58, accMax=89, asMax=0, recMax=22, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.7, rTime=0.75, sAtk=40, sTpd=0, sDef=24, sAa=4, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['85工程'] = {
    index=285, rarity=5, cost=2, sp=2, type='CV', country='苏联', class='85型1号舰', skill='舰队防空圈',
    hp=60, atk=0, tpd=0, def=34, aa=66, eva=30, acc=37, as=0, rec=51, speed=31.4, luck=0, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=59, aaMax=96, evaMax=54, accMax=95, asMax=0, recMax=80, 
    cap1=15, cap2=15, cap3=18, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=65, rFuel=2.4, rSteel=4.8, rTime=0.95, sAtk=0, sTpd=0, sDef=17, sAa=96, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['不挠(战列巡洋舰)'] = {
    index=286, rarity=4, cost=2, sp=2, type='BC', country='英国', class='无敌级3号舰', 
    hp=58, atk=49, tpd=0, def=40, aa=10, eva=27, acc=38, as=0, rec=10, speed=25.5, luck=15, range='长', size='大型舰/主力舰', 
    atkMax=74, tpdMax=0, defMax=55, aaMax=40, evaMax=49, accMax=94, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型动力系统', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=90, rFuel=2.8, rSteel=5.3, rTime=0.75, sAtk=53, sTpd=0, sDef=40, sAa=5, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['鹰潭'] = {
    index=287, rarity=5, cost=6, sp=6, type='DDGAA', country='中国', class='053K型1号舰', skill='南沙功臣', 
    hp=20, atk=12, tpd=0, def=8, aa=57, eva=33, acc=40, as=42, rec=24, speed=28, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=37, tpdMax=0, defMax=23, aaMax=87, evaMax=82, accMax=99, asMax=89, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=20, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=1, rTime=0.35, sAtk=12, sTpd=0, sDef=8, sAa=78, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['U-552'] = {
    index=288, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U-552', 
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=32, as=0, rec=13, speed=18, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=46, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['U-81'] = {
    index=289, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U-81',
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=31, as=0, rec=13, speed=18, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=95, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=60, coreType='潜艇', coreNum=8, mFuel=0, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['U-96'] = {
    index=290, rarity=5, cost=6, sp=5, type='SS', country='德国', class='U-96',
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=32, as=0, rec=13, speed=18, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=60, coreType='潜艇', coreNum=10, mFuel=100, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['U-2540'] = {
    index=291, rarity=4, cost=6, sp=6, type='SS', country='德国', class='U-2540', 
    hp=16, atk=6, tpd=28, def=11, aa=0, eva=25, acc=33, as=0, rec=12, speed=17.2, luck=24, range='短', size='小型舰/护卫舰', 
    atkMax=26, tpdMax=78, defMax=26, aaMax=0, evaMax=50, accMax=97, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.275, sAtk=0, sTpd=28, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
    modLv=70, coreType='潜艇', coreNum=12, mFuel=500, mAmmo=2000, mSteel=1000, mBaux=500
}

ships['U-156'] = {
    index=292, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U156',
    hp=12, atk=4, tpd=22, def=10, aa=0, eva=18, acc=31, as=0, rec=12, speed=18, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=72, defMax=25, aaMax=0, evaMax=40, accMax=95, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['U-1206'] = {
    index=293, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U1206',
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=32, as=0, rec=13, speed=17.7, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='G国海军马桶', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=60, coreType='潜艇', coreNum=10, mFuel=100, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['刺尾鱼'] = {
    index=294, rarity=5, cost=6, sp=5, type='SS', country='美国', class='SS-306',
    hp=12, atk=4, tpd=24, def=10, aa=0, eva=20, acc=32, as=0, rec=12, speed=20, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.45, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['S-56'] = {
    index=295, rarity=5, cost=6, sp=6, type='SS', country='苏联', class='С-56',
    hp=12, atk=3, tpd=21, def=9, aa=0, eva=22, acc=32, as=0, rec=12, speed=19.5, luck=26, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=71, defMax=24, aaMax=0, evaMax=44, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.51, rTime=0.275, sAtk=0, sTpd=21, sDef=9, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['贝劳伍德'] = {
    index=296, rarity=3, cost=2, sp=3, type='CVL', country='美国', class='独立级3号舰', 
    hp=36, atk=0, tpd=0, def=20, aa=45, eva=28, acc=33, as=0, rec=39, speed=31, luck=20, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=40, aaMax=65, evaMax=50, accMax=89, asMax=0, recMax=66, 
    cap1=10, cap2=15, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=50, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['乔治·埃夫洛夫'] = {
    index=297, rarity=5, cost=1, sp=2, type='CA', country='undefined', class='埃夫洛夫级一号舰',
    hp=48, atk=37, tpd=8, def=48, aa=18, eva=26, acc=38, as=0, rec=12, speed=23.5, luck=50, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=43, defMax=63, aaMax=48, evaMax=59, accMax=94, asMax=0, recMax=50,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联9.2英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=37, sTpd=4, sDef=24, sAa=9, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['苏赫巴托尔'] = {
    index=298, rarity=6, cost=0, sp=2, type='AP', country='undefined', class='无番号', skill='钓鱼',
    hp=10, atk=9, tpd=0, def=3, aa=5, eva=30, acc=33, as=0, rec=5, speed=15, luck=50, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=0, defMax=13, aaMax=35, evaMax=96, accMax=90, asMax=0, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=10, rFuel=1, rSteel=1, rTime=0.5, sAtk=5, sTpd=0, sDef=2, sAa=0, dFuel=2, dAmmo=2, dSteel=2, dBaux=0
}

ships['让巴尔'] = {
    index=299, rarity=5, cost=2, sp=2, type='BB', country='法国', class='黎塞留级2号舰', skill='旁观者',
    hp=80, atk=76, tpd=0, def=85, aa=79, eva=27, acc=40, as=0, rec=15, speed=32, luck=18, range='长', size='大型舰/主力舰',
    atkMax=96, tpdMax=0, defMax=105, aaMax=109, evaMax=49, accMax=96, asMax=0, recMax=44,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国四联380毫米炮', eq2='博福斯M1951双联57毫米高炮', eq3='无', eq4='无',
    sFuel=95, sAmmo=135, rFuel=4.3, rSteel=8, rTime=1, sAtk=76, sTpd=0, sDef=85, sAa=83, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=90, coreType='战列', coreNum=24, mFuel=450, mAmmo=1000, mSteel=2000, mBaux=200
}

ships['马耳他'] = {
    index=300, rarity=6, cost=4, sp=4, type='CV', country='英国', class='马耳他级1号舰', skill='他山之石',
    hp=92, atk=0, tpd=0, def=53, aa=70, eva=33, acc=37, as=0, rec=40, speed=33.2, luck=6, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=78, aaMax=100, evaMax=59, accMax=96, asMax=0, recMax=77, 
    cap1=25, cap2=25, cap3=24, cap4=23, msl1=0, msl2=0, msl3=0, msl4=0, eq1='飞龙(装备)', eq2='无', eq3='无', eq4='无',
    sFuel=95, sAmmo=125, rFuel=4.8, rSteel=8.5, rTime=0.95, sAtk=3, sTpd=0, sDef=27, sAa=104, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['马汉'] = {
    index=301, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-364',
    hp=16, atk=9, tpd=24, def=7, aa=9, eva=37, acc=30, as=25, rec=6, speed=37, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=22, aaMax=39, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=42, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=1000, mSteel=500, mBaux=0
}

ships['圣路易斯'] = {
    index=302, rarity=4, cost=1, sp=2, type='CL', country='美国', class='布鲁克林级8号舰',
    hp=33, atk=32, tpd=0, def=29, aa=45, eva=31, acc=34, as=25, rec=12, speed=31.5, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=54, aaMax=85, evaMax=69, accMax=91, asMax=69, recMax=23,
    cap1=4, cap2=4, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='标准型对空雷达', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=48, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['奥丁'] = {
    index=303, rarity=5, cost=0, sp=2, type='AP', country='undefined', class='无级别', skill='护渔',
    hp=12, atk=10, tpd=0, def=5, aa=9, eva=33, acc=30, as=0, rec=6, speed=18, luck=30, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=15, aaMax=39, evaMax=99, accMax=87, asMax=0, recMax=17,
    cap1=1, cap2=1, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='冈格尼尔', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=10, rFuel=1, rSteel=1, rTime=0.5, sAtk=5, sTpd=0, sDef=3, sAa=0, dFuel=2, dAmmo=2, dSteel=2, dBaux=0
}

ships['圣女贞德'] = {
    index=304, rarity=3, cost=1, sp=2, type='CL', country='法国', class='圣女贞德级1号舰',
    hp=29, atk=19, tpd=8, def=15, aa=22, eva=20, acc=30, as=26, rec=8, speed=25, luck=23, range='中', size='中型舰/护卫舰',
    atkMax=44, tpdMax=48, defMax=35, aaMax=52, evaMax=58, accMax=87, asMax=70, recMax=19,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国双联155毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=8, sDef=8, sAa=11, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['英王乔治五世'] = {
    index=305, rarity=5, cost=3, sp=3, type='BB', country='英国', class='英王乔治五世级1号舰', skill='圣剑之击',
    hp=74, atk=75, tpd=0, def=75, aa=50, eva=26, acc=40, as=0, rec=15, speed=29, luck=24, range='长', size='大型舰/主力舰',
    atkMax=95, tpdMax=0, defMax=95, aaMax=85, evaMax=48, accMax=96, asMax=0, recMax=42,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国四联14英寸炮', eq2='E国双联5.25英寸炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=80, sTpd=0, sDef=75, sAa=44, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['巴夫勒尔'] = {
    index=306, rarity=4, cost=1, sp=2, type='DD', country='英国', class='战斗级1号舰',
    hp=18, atk=10, tpd=23, def=8, aa=33, eva=36, acc=30, as=34, rec=6, speed=35.8, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=73, defMax=23, aaMax=63, evaMax=80, accMax=87, asMax=67, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.5英寸炮（MK.VI型）', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=23, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=1000, mSteel=500, mBaux=0
}

ships['女灶神'] = {
    index=307, rarity=5, cost=0, sp=2, type='AP', country='美国', class='AR-4', skill='希望的曙光',
    hp=40, atk=8, tpd=0, def=7, aa=15, eva=21, acc=30, as=0, rec=6, speed=16, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=0, defMax=22, aaMax=45, evaMax=76, accMax=87, asMax=0, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=20, rFuel=1.28, rSteel=2.4, rTime=0.5, sAtk=4, sTpd=0, sDef=4, sAa=4, dFuel=2, dAmmo=2, dSteel=2, dBaux=0
}

ships['哥特兰'] = {
    index=308, rarity=4, cost=1, sp=2, type='CAV', country='undefined', class='哥特兰级1号舰',
    hp=25, atk=15, tpd=10, def=16, aa=25, eva=22, acc=30, as=20, rec=32, speed=27.5, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=40, tpdMax=50, defMax=36, aaMax=60, evaMax=60, accMax=87, asMax=53, recMax=43,
    cap1=0, cap2=0, cap3=8, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='标准型声纳', eq3='萨博S.17BS', eq4='不可装备',
    sFuel=30, sAmmo=80, rFuel=1.28, rSteel=1.5, rTime=0.5, sAtk=15, sTpd=5, sDef=8, sAa=25, dFuel=50, dAmmo=40, dSteel=60, dBaux=6
}

ships['诺夫哥罗德'] = {
    index=309, rarity=6, cost=0, sp=2, type='BM', country='苏联', class='诺夫哥罗德级1号舰', skill='球上倒立',
    hp=20, atk=20, tpd=0, def=36, aa=1, eva=6, acc=32, as=0, rec=6, speed=6, luck=9, range='长', size='小型舰/护卫舰',
    atkMax=50, tpdMax=0, defMax=56, aaMax=5, evaMax=39, accMax=87, asMax=0, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=12, sAmmo=25, rFuel=0.48, rSteel=1.05, rTime=0.4, sAtk=20, sTpd=0, sDef=36, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['库欣'] = {
    index=310, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-376',
    hp=16, atk=9, tpd=24, def=7, aa=9, eva=37, acc=30, as=25, rec=6, speed=37, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=22, aaMax=39, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['瓜达卡纳尔'] = {
    index=311, rarity=3, cost=2, sp=2, type='CVL', country='美国', class='卡萨布兰卡级6号舰',
    hp=36, atk=0, tpd=0, def=7, aa=37, eva=15, acc=33, as=0, rec=38, speed=18, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=27, aaMax=67, evaMax=37, accMax=89, asMax=0, recMax=65,
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=4, sAa=43, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=75, coreType='航母', coreNum=16, mFuel=1000, mAmmo=500, mSteel=500, mBaux=1000,
}

ships['纽伦堡'] = {
    index=312, rarity=4, cost=1, sp=2, type='CL', country='德国', class='莱比锡级2号舰',
    hp=35, atk=25, tpd=20, def=26, aa=24, eva=30, acc=34, as=26, rec=9, speed=32, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=60, defMax=46, aaMax=54, evaMax=68, accMax=91, asMax=70, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=13, sTpd=20, sDef=16, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['阿贾克斯'] = {
    index=313, rarity=3, cost=1, sp=2, type='CL', country='英国', class='利安德级3号舰',
    hp=28, atk=20, tpd=13, def=24, aa=30, eva=30, acc=33, as=28, rec=10, speed=32.5, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=53, defMax=44, aaMax=60, evaMax=68, accMax=90, asMax=72, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=13, sTpd=13, sDef=12, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['哥特雄狮'] = {
    index=314, rarity=4, cost=1, sp=2, type='CL', country='undefined', class='三王冠级2号舰',
    hp=29, atk=19, tpd=12, def=25, aa=50, eva=35, acc=34, as=24, rec=10, speed=33, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=44, tpdMax=52, defMax=45, aaMax=80, evaMax=73, accMax=91, asMax=68, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='R国三联152毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=10, sTpd=12, sDef=13, sAa=39, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['宵月'] = {
    index=315, rarity=2, cost=1, sp=2, type='DD', country='日本', class='秋月型10番舰',
    hp=19, atk=13, tpd=18, def=7, aa=28, eva=36, acc=30, as=23, rec=7, speed=33, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=22, aaMax=58, evaMax=80, accMax=87, asMax=56, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=2, dAmmo=4, dSteel=3, dBaux=0
}

ships['明斯克'] = {
    index=316, rarity=4, cost=1, sp=2, type='DD', country='苏联', class='38型1号舰',
    hp=20, atk=12, tpd=20, def=8, aa=18, eva=40, acc=42, as=24, rec=5, speed=41.7, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=70, defMax=23, aaMax=48, evaMax=84, accMax=87, asMax=57, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国单装130毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=20, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=15, mFuel=500, mAmmo=400, mSteel=600, mBaux=100
}

ships['M2'] = {
    index=317, rarity=3, cost=4, sp=4, type='SC', country='英国', class='M级2号舰',
    hp=12, atk=20, tpd=18, def=10, aa=0, eva=15, acc=30, as=0, rec=10, speed=15, luck=6, range='短', size='小型舰/护卫舰',
    atkMax=50, tpdMax=58, defMax=25, aaMax=0, evaMax=37, accMax=90, asMax=0, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装12英寸潜艇主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=40, rFuel=1, rSteel=1, rTime=0.5, sAtk=4, sTpd=18, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['毛奇'] = {
    index=318, rarity=5, cost=1, sp=2, type='BC', country='德国', class='毛奇级1号舰',
    hp=59, atk=48, tpd=0, def=45, aa=10, eva=27, acc=40, as=0, rec=10, speed=28.4, luck=15, range='长', size='大型舰/主力舰',
    atkMax=73, tpdMax=0, defMax=60, aaMax=40, evaMax=49, accMax=96, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联280毫米主炮(旧)', eq2='无', eq3='无', eq4='无',
    sFuel=55, sAmmo=100, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=48, sTpd=0, sDef=48, sAa=5, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['不挠(装甲航母)'] = {
    index=319, rarity=5, cost=3, sp=3, type='AV', country='英国', class='光辉级4号舰', skill='持久作战',
    hp=66, atk=0, tpd=0, def=56, aa=58, eva=34, acc=32, as=0, rec=40, speed=30.5, luck=24, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=86, aaMax=88, evaMax=56, accMax=85, asMax=0, recMax=67,
    cap1=12, cap2=24, cap3=20, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海喷火', eq2='大青花鱼鱼雷机', eq3='无', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.4, rTime=1, sAtk=3, sTpd=0, sDef=28, sAa=80, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['鹞鹰'] = {
    index=320, rarity=4, cost=2, sp=3, type='CVL', country='意大利', class='鹞鹰级1号舰',
    hp=60, atk=0, tpd=0, def=23, aa=30, eva=30, acc=34, as=0, rec=35, speed=20, luck=7, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=43, aaMax=60, evaMax=52, accMax=90, asMax=0, recMax=62,
    cap1=16, cap2=10, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='RE.2001', eq2='G.55S', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=12, sAa=30, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['费拉迪D'] = {
    index=321, rarity=5, cost=1, sp=2, type='BB', country='意大利', class='费拉迪D方案1号舰', skill='海神谴戒', 
    hp=72, atk=83, tpd=0, def=70, aa=19, eva=24, acc=40, as=0, rec=13, speed=26, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=108, tpdMax=0, defMax=90, aaMax=54, evaMax=46, accMax=100, asMax=0, recMax=42, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=145, rFuel=2.5, rSteel=4.6, rTime=1.0, sAtk=83, sTpd=0, sDef=70, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['希尔曼'] = {
    index=322, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-532', skill='大卫·塔菲3',
    hp=17, atk=8, tpd=20, def=7, aa=24, eva=37, acc=42, as=25, rec=6, speed=37, luck=24, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=22, aaMax=54, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['基辅'] = {
    index=323, rarity=5, cost=1, sp=2, type='DD', country='苏联', class='48型1号舰',
    hp=24, atk=13, tpd=24, def=7, aa=20, eva=45, acc=32, as=18, rec=5, speed=42.5, luck=6, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=74, defMax=22, aaMax=50, evaMax=89, accMax=89, asMax=51, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米2-н鱼雷', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=65, coreType='驱逐', coreNum=15, mFuel=500, mAmmo=500, mSteel=500, mBaux=100
}

ships['塔斯卡卢萨'] = {
    index=324, rarity=3, cost=1, sp=2, type='CA', country='美国', class='新奥尔良级4号舰',
    hp=43, atk=38, tpd=0, def=32, aa=35, eva=31, acc=35, as=0, rec=15, speed=32.7, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=52, aaMax=65, evaMax=75, accMax=91, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=16, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['列克星敦(CV-16)'] = {
    index=325, rarity=5, cost=3, sp=5, type='CV', country='美国', class='埃塞克斯级8号舰', skill='蓝色幽灵',
    hp=60, atk=0, tpd=0, def=35, aa=65, eva=30, acc=37, as=0, rec=50, speed=33, luck=25, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=95, evaMax=52, accMax=96, asMax=0, recMax=77,
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=100, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=90, coreType='航母', coreNum=30, mFuel=400, mAmmo=300, mSteel=2100, mBaux=3000,
}

ships['诺福克(78)'] = {
    index=326, rarity=4, cost=2, sp=2, type='CA', country='英国', class='诺福克级1号舰',
    hp=50, atk=35, tpd=18, def=28, aa=33, eva=30, acc=36, as=0, rec=20, speed=32.3, luck=30, range='中', size='中型舰/护卫舰',
    atkMax=60, tpdMax=53, defMax=43, aaMax=63, evaMax=74, accMax=92, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='改良型对海雷达', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=39, sTpd=9, sDef=14, sAa=17, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['斯特雷特'] = {
    index=327, rarity=4, cost=1, sp=2, type='DD', country='美国', class='贝纳姆级9号舰',
    hp=16, atk=9, tpd=27, def=6, aa=10, eva=50, acc=31, as=25, rec=6, speed=40.7, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=77, defMax=21, aaMax=40, evaMax=94, accMax=88, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=27, sDef=6, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['妙高'] = {
    index=328, rarity=3, cost=3, sp=3, type='CA', country='日本', class='妙高型1番舰',
    hp=43, atk=42, tpd=19, def=31, aa=20, eva=36, acc=35, as=0, rec=13, speed=33, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=54, defMax=46, aaMax=50, evaMax=80, accMax=91, asMax=0, recMax=51,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='零式水上侦察机', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=13, sDef=16, sAa=10, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['奥古斯塔'] = {
    index=329, rarity=4, cost=2, sp=2, type='CA', country='美国', class='北安普顿级6号舰',
    hp=45, atk=38, tpd=0, def=33, aa=38, eva=31, acc=36, as=0, rec=16, speed=32.5, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=0, defMax=53, aaMax=68, evaMax=75, accMax=92, asMax=0, recMax=54,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=26, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['卫士'] = {
    index=330, rarity=4, cost=1, sp=2, type='DD', country='英国', class='果敢级3号舰',
    hp=24, atk=10, tpd=22, def=8, aa=45, eva=34, acc=31, as=48, rec=10, speed=30, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=72, defMax=23, aaMax=75, evaMax=78, accMax=88, asMax=81, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.N6双联4.5英寸炮', eq2='五联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=3, sTpd=22, sDef=8, sAa=9, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['无比'] = {
    index=331, rarity=6, cost=4, sp=5, type='BC', country='英国', class='无比级1号舰', skill='完美战巡',
    hp=80, atk=93, tpd=8, def=58, aa=20, eva=29, acc=40, as=0, rec=15, speed=35, luck=6, range='长', size='大型舰/主力舰',
    atkMax=118, tpdMax=38, defMax=83, aaMax=50, evaMax=51, accMax=96, asMax=0, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联20英寸主炮', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=99, sTpd=0, sDef=58, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['神鹰'] = {
    index=332, rarity=4, cost=1, sp=2, type='CVL', country='日本', class='神鹰型1番舰',
    hp=40, atk=0, tpd=0, def=8, aa=25, eva=16, acc=34, as=0, rec=36, speed=21, luck=10, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=28, aaMax=55, evaMax=38, accMax=90, asMax=0, recMax=63,
    cap1=17, cap2=10, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻', eq2='零战五二型', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=4, sAa=25, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
    modLv=56, coreType='航母', coreNum=15, mFuel=400, mAmmo=300, mSteel=1500, mBaux=700
}

ships['德格拉斯'] = {
    index=333, rarity=5, cost=1, sp=2, type='CL', country='法国', class='德格拉斯级1号舰',
    hp=32, atk=27, tpd=0, def=32, aa=80, eva=32, acc=33, as=42, rec=20, speed=33.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=0, defMax=52, aaMax=110, evaMax=70, accMax=90, asMax=64, recMax=31,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国M1948双联127毫米炮', eq2='博福斯M1951双联57毫米高炮', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=14, sTpd=0, sDef=16, sAa=84, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['不惧(驱逐舰)'] = {
    index=334, rarity=4, cost=1, sp=2, type='DD', country='苏联', class='41型1号舰',
    hp=23, atk=10, tpd=26, def=9, aa=32, eva=36, acc=30, as=30, rec=7, speed=33.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=76, defMax=24, aaMax=62, evaMax=80, accMax=87, asMax=63, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-2-1双联130毫米炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=26, sDef=9, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['伏尔塔'] = {
    index=335, rarity=4, cost=1, sp=2, type='DD', country='法国', class='莫加多尔级2号舰',
    hp=24, atk=17, tpd=25, def=10, aa=18, eva=48, acc=30, as=22, rec=9, speed=42, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=42, tpdMax=75, defMax=25, aaMax=48, evaMax=92, accMax=87, asMax=55, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国M1934双联138毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=25, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=45, coreType='驱逐', coreNum=10, mFuel=500, mAmmo=500, mSteel=500, mBaux=300
}

ships['竹'] = {
    index=336, rarity=3, cost=1, sp=2, type='DD', country='日本', class='松型2番舰',
    hp=13, atk=6, tpd=16, def=4, aa=22, eva=35, acc=30, as=30, rec=5, speed=27.8, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=66, defMax=19, aaMax=52, evaMax=79, accMax=87, asMax=63, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装高射炮', eq2='61厘米四连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=19, sDef=4, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['伟大的庞贝'] = {
    index=337, rarity=5, cost=1, sp=2, type='CL', country='意大利', class='罗马统帅级2号舰',
    hp=24, atk=18, tpd=24, def=12, aa=20, eva=47, acc=34, as=24, rec=10, speed=40, luck=23, range='中', size='中型舰/护卫舰',
    atkMax=43, tpdMax=59, defMax=27, aaMax=50, evaMax=91, accMax=91, asMax=57, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联135毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.1, rTime=0.4, sAtk=9, sTpd=24, sDef=6, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['天鹰'] = {
    index=338, rarity=5, cost=2, sp=3, type='AV', country='意大利', class='天鹰级一号舰', skill='地中海护卫',
    hp=64, atk=0, tpd=0, def=36, aa=55, eva=31, acc=32, as=0, rec=34, speed=30, luck=7, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=66, aaMax=75, evaMax=53, accMax=85, asMax=0, recMax=61,
    cap1=34, cap2=16, cap3=16, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='RE.2001', eq2='G.55S', eq3='无', eq4='无',
    sFuel=75, sAmmo=65, rFuel=3, rSteel=5.2, rTime=0.95, sAtk=0, sTpd=0, sDef=18, sAa=64, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['帝国'] = {
    index=339, rarity=5, cost=3, sp=4, type='CV', country='意大利', class='维内托级4号舰', skill='航空曙光',
    hp=70, atk=0, tpd=0, def=60, aa=38, eva=28, acc=36, as=0, rec=40, speed=31, luck=7, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=80, aaMax=68, evaMax=50, accMax=95, asMax=0, recMax=67,
    cap1=33, cap2=22, cap3=20, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='RE.2001', eq2='G.55S', eq3='无', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.5, rSteel=4.8, rTime=1, sAtk=0, sTpd=0, sDef=30, sAa=40, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=75, coreType='航母', coreNum=18, mFuel=500, mAmmo=500, mSteel=1800, mBaux=2000
}

ships['波尔扎诺'] = {
    index=340, rarity=4, cost=2, sp=2, type='CA', country='意大利', class='波尔扎诺级1号舰',
    hp=42, atk=36, tpd=10, def=30, aa=26, eva=34, acc=35, as=0, rec=13, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=45, defMax=45, aaMax=56, evaMax=78, accMax=92, asMax=0, recMax=51,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联203毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.5, rTime=0.65, sAtk=36, sTpd=5, sDef=15, sAa=13, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=40, coreType='航母', coreNum=9, mFuel=200, mAmmo=100, mSteel=500, mBaux=600,
}

ships['龙骑兵'] = {
    index=341, rarity=4, cost=1, sp=2, type='CL', country='undefined', class='达娜厄级3号舰',
    hp=25, atk=16, tpd=20, def=18, aa=35, eva=30, acc=34, as=30, rec=9, speed=29, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=55, defMax=38, aaMax=65, evaMax=68, accMax=92, asMax=63, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.4, rTime=0.475, sAtk=8, sTpd=20, sDef=9, sAa=18, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['江原'] = {
    index=342, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-922',
    hp=20, atk=10, tpd=15, def=8, aa=43, eva=32, acc=30, as=55, rec=10, speed=35, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=65, defMax=23, aaMax=73, evaMax=76, accMax=87, asMax=115, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=15, sDef=8, sAa=13, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=55, coreType='驱逐', coreNum=15, mFuel=500, mAmmo=500, mSteel=1000, mBaux=300
}

ships['蔚山'] = {
    index=343, rarity=5, cost=2, sp=4, type='DDG', country='???', class='FF-951',
    hp=16, atk=7, tpd=1, def=5, aa=55, eva=40, acc=30, as=0, rec=13, speed=34, luck=15, range='短', size='小型舰/主力舰',
    atkMax=27, tpdMax=1, defMax=20, aaMax=85, evaMax=84, accMax=87, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='MK.141导弹发射架', eq2='RGM-84鱼叉反舰导弹', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=65, rFuel=0.48, rSteel=0.7, rTime=0.5, sAtk=7, sTpd=1, sDef=5, sAa=74, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
    modLv=60, coreType='驱逐', coreNum=20, mFuel=600, mAmmo=1000, mSteel=1000, mBaux=500
}

ships['忠武'] = {
    index=344, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-91',
    hp=17, atk=8, tpd=18, def=7, aa=48, eva=37, acc=30, as=40, rec=10, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=68, defMax=22, aaMax=78, evaMax=81, accMax=87, asMax=84, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=18, sDef=7, sAa=18, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=15, mFuel=500, mAmmo=500, mSteel=500, mBaux=200
}

ships['威斯康星'] = {
    index=345, rarity=6, cost=5, sp=5, type='BB', country='美国', class='衣阿华级4号舰', skill='高速特遣队',
    hp=84, atk=91, tpd=0, def=82, aa=73, eva=30, acc=41, as=0, rec=20, speed=33, luck=24, range='长', size='大型舰/主力舰',
    atkMax=116, tpdMax=0, defMax=102, aaMax=108, evaMax=52, accMax=102, asMax=0, recMax=47,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='早期型U国三联16英寸炮（MK7）', eq2='先进型火控雷达', eq3='改良型动力系统', eq4='无',
    sFuel=135, sAmmo=175, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=91, sTpd=0, sDef=82, sAa=86, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['谢菲尔德'] = {
    index=346, rarity=4, cost=1, sp=2, type='CL', country='英国', class='南安普顿级4号舰',
    hp=35, atk=30, tpd=10, def=30, aa=45, eva=32, acc=35, as=20, rec=10, speed=33, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=50, defMax=50, aaMax=75, evaMax=68, accMax=92, asMax=64, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=19, sTpd=10, sDef=15, sAa=32, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['蒙彼利埃'] = {
    index=347, rarity=5, cost=1, sp=2, type='CL', country='美国', class='克利夫兰级3号舰',
    hp=36, atk=31, tpd=0, def=30, aa=65, eva=31, acc=34, as=30, rec=12, speed=32.5, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=0, defMax=55, aaMax=105, evaMax=69, accMax=91, asMax=74, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['丹佛'] = {
    index=348, rarity=5, cost=1, sp=2, type='CL', country='美国', class='克利夫兰级4号舰',
    hp=36, atk=31, tpd=0, def=30, aa=65, eva=31, acc=34, as=30, rec=12, speed=32.5, luck=21, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=0, defMax=55, aaMax=105, evaMax=69, accMax=91, asMax=74, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['初月'] = {
    index=349, rarity=4, cost=1, sp=2, type='DD', country='日本', class='秋月型4番舰',
    hp=19, atk=13, tpd=18, def=7, aa=30, eva=36, acc=30, as=30, rec=7, speed=33, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=22, aaMax=60, evaMax=80, accMax=87, asMax=63, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['菲尔普斯'] = {
    index=350, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-360',
    hp=18, atk=15, tpd=24, def=8, aa=15, eva=37, acc=30, as=25, rec=6, speed=38.5, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=74, defMax=23, aaMax=45, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=8, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-1405'] = {
    index=351, rarity=4, cost=6, sp=6, type='SS', country='德国', class='U-1405',
    hp=8, atk=2, tpd=12, def=5, aa=0, eva=28, acc=31, as=0, rec=10, speed=25, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=22, tpdMax=62, defMax=20, aaMax=0, evaMax=61, accMax=95, asMax=0, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.5, rSteel=0.4, rTime=0.15, sAtk=0, sTpd=12, sDef=7, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=70, coreType='潜艇', coreNum=10, mFuel=500, mAmmo=1200, mSteel=1000, mBaux=0
}

ships['莫斯科'] = {
    index=352, rarity=6, cost=3, sp=3, type='CA', country='苏联', class='66型1号舰', skill='巡洋舰压制',
    hp=56, atk=51, tpd=0, def=50, aa=68, eva=32, acc=40, as=0, rec=18, speed=34.5, luck=7, range='长', size='中型舰/护卫舰',
    atkMax=76, tpdMax=0, defMax=70, aaMax=98, evaMax=65, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联СМ-40型220毫米炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='无', eq4='不可装备',
    sFuel=65, sAmmo=100, rFuel=2.4, rSteel=3.8, rTime=0.8, sAtk=51, sTpd=0, sDef=25, sAa=66, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['斯维尔德洛夫'] = {
    index=353, rarity=4, cost=2, sp=2, type='CL', country='苏联', class='68-бис型1号舰',
    hp=36, atk=31, tpd=16, def=28, aa=53, eva=33, acc=36, as=30, rec=20, speed=33, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=56, defMax=48, aaMax=83, evaMax=66, accMax=92, asMax=74, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联Б-38型152毫米炮', eq2='S国СМ-5-1双联100毫米高炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=16, sTpd=16, sDef=14, sAa=44, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['阿尔贝托·迪·朱桑诺'] = {
    index=354, rarity=4, cost=1, sp=2, type='CL', country='意大利', class='佣兵队长级1号舰',
    hp=28, atk=20, tpd=10, def=12, aa=23, eva=40, acc=33, as=25, rec=12, speed=40, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=50, defMax=32, aaMax=53, evaMax=73, accMax=90, asMax=58, recMax=29,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.9, rSteel=1.7, rTime=0.6, sAtk=10, sTpd=10, sDef=6, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['联合力量'] = {
    index=355, rarity=5, cost=1, sp=2, type='BB', country='undefined', class='联合力量级1号舰',
    hp=53, atk=57, tpd=0, def=62, aa=12, eva=22, acc=39, as=0, rec=10, speed=21, luck=10, range='长', size='大型舰/主力舰',
    atkMax=77, tpdMax=0, defMax=82, aaMax=42, evaMax=44, accMax=94, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='Ar国三联30.5厘米炮', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.25, rSteel=4.55, rTime=1, sAtk=57, sTpd=0, sDef=62, sAa=6, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['爱丽'] = {
    index=356, rarity=3, cost=1, sp=2, type='CL', country='undefined', class='爱丽级1号舰',
    hp=22, atk=13, tpd=10, def=16, aa=16, eva=17, acc=33, as=25, rec=7, speed=21, luck=11, range='中', size='中型舰/护卫舰',
    atkMax=38, tpdMax=50, defMax=36, aaMax=46, evaMax=55, accMax=90, asMax=69, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=7, sTpd=10, sDef=8, sAa=8, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['羽黑'] = {
    index=357, rarity=3, cost=3, sp=2, type='CA', country='日本', class='妙高型4番舰', skill='第五战队',
    hp=43, atk=42, tpd=19, def=31, aa=23, eva=36, acc=35, as=0, rec=13, speed=33, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=54, defMax=46, aaMax=53, evaMax=80, accMax=91, asMax=0, recMax=51,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='零式水上侦察机', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=42, sTpd=13, sDef=16, sAa=12, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['天津风'] = {
    index=358, rarity=4, cost=1, sp=2, type='DD', country='日本', class='阳炎型9番舰',
    hp=16, atk=12, tpd=28, def=7, aa=11, eva=38, acc=31, as=21, rec=7, speed=35, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=41, evaMax=82, accMax=88, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['吕-34'] = {
    index=359, rarity=3, cost=5, sp=5, type='SS', country='日本', class='海中-5型',
    hp=12, atk=3, tpd=24, def=11, aa=0, eva=17, acc=31, as=0, rec=6, speed=18.9, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=69, defMax=26, aaMax=0, evaMax=39, accMax=91, asMax=0, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='53厘米氧气鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.3, sAtk=0, sTpd=27, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['虎(轻巡洋舰)'] = {
    index=360, rarity=5, cost=1, sp=2, type='CL', country='英国', class='虎级1号舰',
    hp=36, atk=28, tpd=0, def=30, aa=74, eva=33, acc=37, as=40, rec=15, speed=31.5, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=53, tpdMax=0, defMax=50, aaMax=104, evaMax=69, accMax=94, asMax=62, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联MK.N5型6英寸高平速射炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=35, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=18, sTpd=0, sDef=15, sAa=75, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['K1'] = {
    index=361, rarity=3, cost=4, sp=5, type='SS', country='英国', class='K级1号舰',
    hp=23, atk=5, tpd=20, def=12, aa=0, eva=15, acc=31, as=0, rec=7, speed=24, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=70, defMax=27, aaMax=0, evaMax=37, accMax=91, asMax=0, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.8, rSteel=0.8, rTime=0.45, sAtk=2, sTpd=20, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['星座'] = {
    index=362, rarity=4, cost=4, sp=5, type='BC', country='美国', class='列克星敦级2号舰', skill='特遣先锋',
    hp=76, atk=82, tpd=12, def=56, aa=36, eva=28, acc=40, as=0, rec=12, speed=33, luck=7, range='长', size='大型舰/主力舰',
    atkMax=107, tpdMax=42, defMax=71, aaMax=66, evaMax=61, accMax=95, asMax=0, recMax=39,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=120, rFuel=2.8, rSteel=5.3, rTime=0.75, sAtk=82, sTpd=0, sDef=56, sAa=23, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=80, coreType='战列', coreNum=18, mFuel=1200, mAmmo=1800, mSteel=2100, mBaux=100
}

ships['炽热'] = {
    index=363, rarity=4, cost=2, sp=4, type='DDG', country='苏联', class='57бис型4号舰',
    hp=26, atk=8, tpd=1, def=12, aa=46, eva=34, acc=38, as=0, rec=10, speed=34.5, luck=12, range='短', size='小型舰/主力舰',
    atkMax=36, tpdMax=1, defMax=27, aaMax=76, evaMax=72, accMax=97, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='“狗鱼”反舰导弹', eq2='СМ-59-1发射架', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=50, rFuel=0.48, rSteel=1.2, rTime=0.65, sAtk=8, sTpd=1, sDef=12, sAa=56, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
    modLv=70, coreType='驱逐', coreNum=18, mFuel=2000, mAmmo=200, mSteel=100, mBaux=2000
}

ships['加纳里亚斯'] = {
    index=364, rarity=3, cost=1, sp=2, type='CA', country='undefined', class='加纳里亚斯级1号舰',
    hp=48, atk=34, tpd=22, def=30, aa=31, eva=30, acc=35, as=0, rec=11, speed=33, luck=21, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=57, defMax=43, aaMax=61, evaMax=74, accMax=91, asMax=0, recMax=22,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=34, sTpd=11, sDef=15, sAa=16, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['门德斯·努涅斯'] = {
    index=365, rarity=3, cost=2, sp=2, type='CL', country='undefined', class='门德斯·努涅斯级1号舰',
    hp=25, atk=15, tpd=12, def=17, aa=40, eva=31, acc=30, as=18, rec=9, speed=29, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=52, defMax=32, aaMax=70, evaMax=69, accMax=87, asMax=62, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.9, rSteel=1.6, rTime=0.5, sAtk=8, sTpd=12, sDef=9, sAa=24, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['鹦鹉螺'] = {
    index=366, rarity=5, cost=4, sp=4, type='SS', country='美国', class='SS-168', skill='秘密潜行',
    hp=24, atk=8, tpd=23, def=13, aa=0, eva=16, acc=32, as=0, rec=15, speed=17.4, luck=24, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=73, defMax=28, aaMax=0, evaMax=38, accMax=96, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.75, rSteel=0.7, rTime=0.4, sAtk=0, sTpd=23, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=70, coreType='潜艇', coreNum=15, mFuel=1200, mAmmo=2000, mSteel=2000, mBaux=0
}

ships['乌尔里希·冯·胡滕'] = {
    index=367, rarity=6, cost=6, sp=6, type='BB', country='德国', class='H41级1号舰', skill='德式设计',
    hp=108, atk=92, tpd=0, def=82, aa=40, eva=23, acc=41, as=0, rec=17, speed=30.1, luck=5, range='长', size='大型舰/主力舰',
    atkMax=117, tpdMax=0, defMax=102, aaMax=70, evaMax=45, accMax=97, asMax=0, recMax=44,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国SKC/40型42厘米三联主炮', eq2='无', eq3='无', eq4='无',
    sFuel=135, sAmmo=165, rFuel=4.8, rSteel=9.9, rTime=1.175, sAtk=92, sTpd=0, sDef=86, sAa=24, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['塞德利茨'] = {
    index=368, rarity=5, cost=2, sp=2, type='BC', country='德国', class='塞德利茨级1号舰',
    hp=60, atk=48, tpd=0, def=50, aa=10, eva=27, acc=40, as=0, rec=10, speed=29, luck=18, range='长', size='大型舰/主力舰',
    atkMax=73, tpdMax=0, defMax=65, aaMax=40, evaMax=49, accMax=96, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联280毫米主炮(旧)', eq2='无', eq3='无', eq4='无',
    sFuel=55, sAmmo=100, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=48, sTpd=0, sDef=53, sAa=5, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['克莱夫勋爵'] = {
    index=369, rarity=4, cost=1, sp=2, type='BM', country='英国', class='克莱夫勋爵级1号舰',
    hp=26, atk=28, tpd=0, def=35, aa=17, eva=8, acc=33, as=0, rec=9, speed=7, luck=15, range='长', size='小型舰/护卫舰',
    atkMax=58, tpdMax=0, defMax=55, aaMax=42, evaMax=41, accMax=88, asMax=0, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国单装18英寸舰炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=35, rFuel=0.65, rSteel=1.25, rTime=0.5, sAtk=32, sTpd=0, sDef=35, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['光辉'] = {
    index=370, rarity=5, cost=3, sp=3, type='AV', country='英国', class='光辉级1号舰', skill='先驱首战',
    hp=66, atk=0, tpd=0, def=63, aa=53, eva=33, acc=32, as=0, rec=43, speed=30.5, luck=19, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=93, aaMax=83, evaMax=55, accMax=87, asMax=0, recMax=72,
    cap1=10, cap2=27, cap3=12, cap4=8, msl1=0, msl2=0, msl3=0, msl4=0, eq1='剑鱼', eq2='海燕', eq3='无', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.5, rTime=0.975, sAtk=3, sTpd=0, sDef=32, sAa=70, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['海王星'] = {
    index=371, rarity=6, cost=1, sp=2, type='CL', country='英国', class='海王星级1号舰',
    hp=40, atk=40, tpd=20, def=30, aa=80, eva=32, acc=37, as=36, rec=15, speed=33, luck=6, range='中', size='中型舰/护卫舰',
    atkMax=70, tpdMax=60, defMax=50, aaMax=110, evaMax=68, accMax=94, asMax=58, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.N6双联4.5英寸炮', eq2='E国三联6英寸高平两用炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.95, rSteel=1.6, rTime=0.5, sAtk=24, sTpd=20, sDef=15, sAa=84, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['早春'] = {
    index=372, rarity=4, cost=1, sp=2, type='DD', country='日本', class='北风型7番舰',
    hp=20, atk=13, tpd=26, def=8, aa=32, eva=36, acc=30, as=32, rec=7, speed=36.7, luck=6, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=76, defMax=23, aaMax=62, evaMax=80, accMax=87, asMax=65, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='J国六联61厘米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.49, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=29, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=8, mFuel=200, mAmmo=300, mSteel=300, mBaux=100
}

ships['莱昂纳多·达·芬奇'] = {
    index=373, rarity=4, cost=4, sp=4, type='SS', country='意大利', class='马可尼级3号舰',
    hp=12, atk=4, tpd=23, def=10, aa=0, eva=17, acc=32, as=0, rec=11, speed=18, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=24, tpdMax=73, defMax=25, aaMax=0, evaMax=39, accMax=95, asMax=0, recMax=44,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.5, rSteel=0.5, rTime=0.325, sAtk=0, sTpd=23, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['汉考克'] = {
    index=374, rarity=5, cost=5, sp=4, type='CV', country='美国', class='埃塞克斯级11号舰', skill='多用途航母',
    hp=60, atk=0, tpd=0, def=35, aa=69, eva=30, acc=37, as=0, rec=50, speed=33, luck=22, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=99, evaMax=52, accMax=96, asMax=0, recMax=77,
    cap1=18, cap2=18, cap3=38, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国博福斯40毫米防空炮(四联)', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=65, rFuel=2.4, rSteel=4.6, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=109, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['圣哈辛托'] = {
    index=375, rarity=3, cost=1, sp=2, type='CVL', country='美国', class='独立级9号舰',
    hp=36, atk=0, tpd=0, def=20, aa=46, eva=32, acc=33, as=0, rec=39, speed=31.5, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=40, aaMax=66, evaMax=54, accMax=89, asMax=0, recMax=66,
    cap1=10, cap2=17, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='TBF（乔治·布什）', eq2='F6F地狱猫', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=51, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['埃德加·居内'] = {
    index=376, rarity=3, cost=1, sp=2, type='CA', country='法国', class='埃德加·居内级一号舰',
    hp=50, atk=28, tpd=0, def=45, aa=10, eva=26, acc=34, as=0, rec=10, speed=23, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=53, tpdMax=0, defMax=65, aaMax=40, evaMax=59, accMax=89, asMax=0, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(中型)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.5, rTime=0.775, sAtk=28, sTpd=0, sDef=23, sAa=5, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['木曾'] = {
    index=377, rarity=4, cost=1, sp=2, type='CLT', country='日本', class='球磨型5番舰', skill='重雷装舰突袭',
    hp=24, atk=10, tpd=50, def=9, aa=18, eva=40, acc=34, as=10, rec=10, speed=36, luck=14, range='中', size='中型舰/护卫舰',
    atkMax=35, tpdMax=95, defMax=29, aaMax=48, evaMax=78, accMax=91, asMax=26, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='61厘米四连装鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=75, rFuel=0.8, rSteel=1.5, rTime=0.65, sAtk=10, sTpd=78, sDef=5, sAa=0, dFuel=40, dAmmo=36, dSteel=50, dBaux=0
}

ships['斯普利特'] = {
    index=378, rarity=4, cost=1, sp=2, type='DD', country='undefined', class='斯普利特级1号舰',
    hp=20, atk=9, tpd=16, def=7, aa=22, eva=36, acc=30, as=24, rec=7, speed=31.5, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=66, defMax=22, aaMax=52, evaMax=80, accMax=87, asMax=57, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='U国博福斯40毫米防空炮(四联)', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=16, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['哥伦比亚'] = {
    index=379, rarity=4, cost=1, sp=2, type='CL', country='美国', class='克利夫兰级2号舰',
    hp=36, atk=31, tpd=0, def=30, aa=65, eva=31, acc=34, as=30, rec=12, speed=32.5, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=0, defMax=55, aaMax=105, evaMax=69, accMax=91, asMax=74, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='U国博福斯40毫米防空炮(四联)', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['圣乔治'] = {
    index=380, rarity=6, cost=5, sp=5, type='BB', country='英国', class='N3型1号舰', skill='大舰队',
    hp=84, atk=97, tpd=0, def=85, aa=41, eva=19, acc=39, as=0, rec=15, speed=23, luck=8, range='长', size='大型舰/主力舰',
    atkMax=122, tpdMax=0, defMax=105, aaMax=71, evaMax=41, accMax=100, asMax=0, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联18英寸主炮（N）', eq2='无', eq3='无', eq4='无',
    sFuel=125, sAmmo=180, rFuel=4.7, rSteel=8.7, rTime=1, sAtk=103, sTpd=0, sDef=85, sAa=26, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=70, coreType='战列', coreNum=18, mFuel=1000, mAmmo=2000, mSteel=2000, mBaux=100
}

ships['印第安纳'] = {
    index=381, rarity=5, cost=2, sp=2, type='BB', country='美国', class='南达科他级2号舰', skill='战列舰支队',
    hp=75, atk=88, tpd=0, def=80, aa=68, eva=24, acc=40, as=0, rec=17, speed=27.5, luck=19, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=100, aaMax=98, evaMax=46, accMax=96, asMax=0, recMax=44,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=80, sAa=73, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['坎伯兰'] = {
    index=382, rarity=3, cost=2, sp=2, type='CA', country='英国', class='肯特级2号舰',
    hp=49, atk=35, tpd=10, def=30, aa=39, eva=30, acc=35, as=0, rec=14, speed=32.5, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=45, defMax=45, aaMax=69, evaMax=74, accMax=91, asMax=0, recMax=52,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=39, sTpd=5, sDef=15, sAa=23, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['奥斯塔公爵'] = {
    index=383, rarity=4, cost=1, sp=2, type='CL', country='意大利', class='奥斯塔公爵级1号舰',
    hp=32, atk=20, tpd=8, def=26, aa=29, eva=38, acc=33, as=27, rec=12, speed=36.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=43, defMax=46, aaMax=59, evaMax=71, accMax=90, asMax=60, recMax=29,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=1, rSteel=1.9, rTime=0.675, sAtk=10, sTpd=8, sDef=13, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['法迪布鲁诺'] = {
    index=384, rarity=4, cost=1, sp=2, type='BM', country='意大利', class='法迪布鲁诺1号舰',
    hp=24, atk=24, tpd=0, def=50, aa=12, eva=9, acc=32, as=0, rec=5, speed=3.3, luck=16, range='长', size='小型舰/护卫舰',
    atkMax=54, tpdMax=0, defMax=75, aaMax=42, evaMax=42, accMax=87, asMax=0, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联381毫米炮（BM）', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=35, rFuel=0.9, rSteel=1, rTime=0.45, sAtk=24, sTpd=0, sDef=50, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['S113'] = {
    index=385, rarity=4, cost=1, sp=2, type='DD', country='德国', class='1916型1号舰',
    hp=20, atk=12, tpd=18, def=10, aa=12, eva=39, acc=30, as=20, rec=6, speed=36.9, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=68, defMax=25, aaMax=42, evaMax=83, accMax=87, asMax=53, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=18, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['莉安夕'] = {
    index=386, rarity=5, cost=6, sp=5, type='SS', country='德国', class='Hai',
    hp=8, atk=3, tpd=15, def=5, aa=0, eva=26, acc=31, as=0, rec=10, speed=17.2, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=65, defMax=20, aaMax=0, evaMax=59, accMax=95, asMax=0, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.6, rSteel=0.5, rTime=0.2, sAtk=0, sTpd=15, sDef=7, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['海圻'] = {
    index=387, rarity=5, cost=0, sp=2, type='CL', country='中国', class='海天级2号舰',
    hp=26, atk=18, tpd=12, def=17, aa=10, eva=17, acc=33, as=20, rec=8, speed=24, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=43, tpdMax=52, defMax=37, aaMax=40, evaMax=61, accMax=90, asMax=64, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='阿姆斯特朗八英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=9, sTpd=12, sDef=9, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['纽波特纽斯'] = {
    index=388, rarity=6, cost=3, sp=3, type='CA', country='美国', class='德梅因级3号舰', skill='超额',
    hp=52, atk=53, tpd=0, def=38, aa=78, eva=31, acc=38, as=0, rec=18, speed=33, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=83, tpdMax=0, defMax=58, aaMax=108, evaMax=75, accMax=94, asMax=0, recMax=56,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16三联8英寸自动炮', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=53, sTpd=0, sDef=19, sAa=88, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['留里克'] = {
    index=389, rarity=4, cost=2, sp=2, type='CA', country='苏联', class='留里克级1号舰',
    hp=52, atk=46, tpd=0, def=47, aa=10, eva=25, acc=34, as=0, rec=10, speed=21, luck=10, range='长', size='中型舰/护卫舰',
    atkMax=71, tpdMax=0, defMax=67, aaMax=40, evaMax=58, accMax=89, asMax=0, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='维克斯双联10英寸主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=45, sAmmo=70, rFuel=1.3, rSteel=2.6, rTime=0.75, sAtk=46, sTpd=0, sDef=24, sAa=5, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['库图佐夫'] = {
    index=390, rarity=4, cost=1, sp=2, type='CL', country='苏联', class='68-бис型12号舰',
    hp=36, atk=31, tpd=16, def=28, aa=53, eva=33, acc=36, as=30, rec=20, speed=33, luck=26, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=56, defMax=48, aaMax=83, evaMax=66, accMax=92, asMax=74, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联Б-38型152毫米炮', eq2='S国СМ-5-1双联100毫米高炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=16, sTpd=16, sDef=14, sAa=44, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['查尔斯·F·亚当斯'] = {
    index=391, rarity=5, cost=1, sp=2, type='DDGAA', country='美国', class='查尔斯·亚当斯级1号舰',
    hp=24, atk=15, tpd=1, def=10, aa=57, eva=33, acc=40, as=42, rec=23, speed=33, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=35, tpdMax=1, defMax=25, aaMax=87, evaMax=71, accMax=99, asMax=86, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=0, msl4=0, eq1='MK-10导弹发射器', eq2='鞑靼人防空导弹', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=35, rFuel=0.5, rSteel=1, rTime=0.5, sAtk=15, sTpd=1, sDef=10, sAa=84, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['天雾'] = {
    index=392, rarity=3, cost=1, sp=2, type='DD', country='日本', class='绫波型5番舰',
    hp=15, atk=11, tpd=25, def=7, aa=10, eva=43, acc=30, as=16, rec=6, speed=38, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=40, evaMax=87, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['查尔斯·奥斯本'] = {
    index=393, rarity=5, cost=1, sp=2, type='DD', country='美国', class='DD-570',
    hp=17, atk=11, tpd=24, def=7, aa=24, eva=40, acc=30, as=35, rec=6, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=22, aaMax=54, evaMax=84, accMax=87, asMax=68, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['泰勒'] = {
    index=394, rarity=5, cost=1, sp=2, type='DD', country='美国', class='DD-468',
    hp=17, atk=8, tpd=24, def=7, aa=24, eva=42, acc=30, as=35, rec=6, speed=37, luck=26, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=74, defMax=22, aaMax=54, evaMax=86, accMax=87, asMax=68, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['闪电'] = {
    index=395, rarity=4, cost=1, sp=2, type='DD', country='undefined', class='雷鸣级2号舰',
    hp=16, atk=10, tpd=17, def=6, aa=18, eva=38, acc=30, as=30, rec=7, speed=39, luck=24, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=57, defMax=21, aaMax=48, evaMax=82, accMax=87, asMax=63, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.45, rSteel=0.95, rTime=0.45, sAtk=0, sTpd=17, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['新墨西哥'] = {
    index=396, rarity=3, cost=2, sp=2, type='BB', country='美国', class='新墨西哥级一号舰',
    hp=70, atk=74, tpd=0, def=68, aa=34, eva=15, acc=38, as=0, rec=12, speed=22, luck=20, range='长', size='大型舰/主力舰',
    atkMax=94, tpdMax=0, defMax=88, aaMax=64, evaMax=37, accMax=94, asMax=0, recMax=39,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=74, sTpd=0, sDef=68, sAa=22, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['斯大林格勒'] = {
    index=397, rarity=6, cost=3, sp=3, type='BC', country='苏联', class='82型1号舰', skill='巡洋舰领袖',
    hp=72, atk=67, tpd=0, def=55, aa=76, eva=31, acc=40, as=0, rec=20, speed=35.5, luck=8, range='超长', size='大型舰/主力舰',
    atkMax=97, tpdMax=0, defMax=75, aaMax=106, evaMax=64, accMax=96, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联СМ-31型305毫米主炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=3, rSteel=5.2, rTime=0.95, sAtk=67, sTpd=0, sDef=55, sAa=78, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['德里'] = {
    index=398, rarity=3, cost=1, sp=2, type='CL', country='英国', class='达娜厄级4号',
    hp=25, atk=12, tpd=0, def=18, aa=48, eva=30, acc=34, as=35, rec=10, speed=29, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=37, tpdMax=0, defMax=38, aaMax=78, evaMax=68, accMax=92, asMax=68, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.4, rTime=0.425, sAtk=9, sTpd=0, sDef=9, sAa=36, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['阿布鲁奇公爵'] = {
    index=399, rarity=4, cost=2, sp=2, type='CL', country='意大利', class='佣兵队长（5批次）级1号舰',
    hp=36, atk=26, tpd=8, def=34, aa=32, eva=34, acc=33, as=30, rec=13, speed=34, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=51, tpdMax=43, defMax=54, aaMax=62, evaMax=67, accMax=90, asMax=68, recMax=30,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.1, rSteel=2, rTime=0.7, sAtk=13, sTpd=8, sDef=17, sAa=16, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['七省联盟'] = {
    index=400, rarity=4, cost=2, sp=2, type='CL', country='undefined', class='七省联盟级2号舰',
    hp=32, atk=23, tpd=0, def=26, aa=67, eva=34, acc=36, as=35, rec=12, speed=32, luck=29, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=0, defMax=46, aaMax=97, evaMax=72, accMax=92, asMax=79, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='博福斯M1951双联57毫米高炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.75, rSteel=1.4, rTime=0.45, sAtk=12, sTpd=0, sDef=13, sAa=65, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=80, coreType='巡洋', coreNum=24, mFuel=2400, mAmmo=2400, mSteel=2400, mBaux=2400
}

ships['胆大'] = {
    index=401, rarity=4, cost=2, sp=4, type='DDG', country='苏联', class='56-У型1号舰',
    hp=28, atk=11, tpd=1, def=12, aa=56, eva=33, acc=38, as=0, rec=12, speed=34.8, luck=12, range='短', size='小型舰/主力舰',
    atkMax=39, tpdMax=1, defMax=27, aaMax=96, evaMax=71, accMax=97, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='“白蚁”M反舰导弹', eq2='КТ-15М-БРК发射器', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=55, rFuel=0.5, rSteel=1.2, rTime=0.625, sAtk=11, sTpd=1, sDef=12, sAa=86, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['U-35'] = {
    index=402, rarity=5, cost=5, sp=5, type='SS', country='德国', class='U31型5号舰',
    hp=8, atk=3, tpd=20, def=8, aa=0, eva=28, acc=34, as=0, rec=15, speed=16.4, luck=23, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=70, defMax=23, aaMax=0, evaMax=61, accMax=98, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=15, rFuel=0.6, rSteel=0.5, rTime=0.25, sAtk=0, sTpd=20, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['格拉摩根'] = {
    index=403, rarity=5, cost=3, sp=3, type='DDGAA', country='英国', class='郡级6号舰', skill='改进型海参',
    hp=28, atk=18, tpd=1, def=12, aa=51, eva=32, acc=40, as=37, rec=25, speed=31.5, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=1, defMax=27, aaMax=81, evaMax=70, accMax=99, asMax=82, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='海参防空导弹', eq2='海参导弹发射系统', eq3='无', eq4='无',
    sFuel=30, sAmmo=35, rFuel=0.7, rSteel=1.2, rTime=0.55, sAtk=21, sTpd=1, sDef=12, sAa=66, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['怨仇'] = {
    index=404, rarity=5, cost=3, sp=3, type='AV', country='英国', class='怨仇级1号舰', skill='钨作战',
    hp=70, atk=0, tpd=0, def=54, aa=60, eva=34, acc=32, as=0, rec=40, speed=32, luck=15, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=84, aaMax=90, evaMax=56, accMax=87, asMax=0, recMax=67,
    cap1=18, cap2=30, cap3=21, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='萤火虫', eq2='TBF复仇者', eq3='海喷火', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.9, rSteel=5.4, rTime=1.05, sAtk=3, sTpd=0, sDef=27, sAa=84, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['乔治·莱格'] = {
    index=405, rarity=4, cost=2, sp=2, type='CL', country='法国', class='拉加利索尼埃级6号舰',
    hp=32, atk=26, tpd=8, def=32, aa=37, eva=35, acc=33, as=32, rec=13, speed=35, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=51, tpdMax=43, defMax=52, aaMax=67, evaMax=68, accMax=90, asMax=65, recMax=30,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=1, rSteel=1.9, rTime=0.7, sAtk=13, sTpd=8, sDef=16, sAa=20, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['哈曼'] = {
    index=406, rarity=3, cost=1, sp=2, type='DD', country='美国', class='西姆斯级四号舰',
    hp=16, atk=8, tpd=19, def=6, aa=22, eva=40, acc=30, as=35, rec=6, speed=35, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=69, defMax=21, aaMax=52, evaMax=84, accMax=87, asMax=68, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=19, sDef=6, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['吕特晏斯'] = {
    index=407, rarity=5, cost=2, sp=2, type='DDGAA', country='德国', class='吕特晏斯级1号舰',
    hp=24, atk=15, tpd=1, def=10, aa=65, eva=33, acc=40, as=42, rec=23, speed=33, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=35, tpdMax=1, defMax=25, aaMax=95, evaMax=71, accMax=99, asMax=86, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=0, msl4=0, eq1='标准-1', eq2='MK13导弹发射系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=35, rFuel=0.6, rSteel=1.1, rTime=0.55, sAtk=15, sTpd=1, sDef=12, sAa=94, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['鲃鱼'] = {
    index=408, rarity=5, cost=4, sp=5, type='SS', country='美国', class='ss-220',
    hp=12, atk=6, tpd=24, def=10, aa=0, eva=20, acc=32, as=0, rec=12, speed=21, luck=24, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.45, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
    modLv=70, coreType='潜艇', coreNum=15, mFuel=1200, mAmmo=1200, mSteel=1200, mBaux=0
}

ships['新泽西'] = {
    index=409, rarity=6, cost=4, sp=4, type='BB', country='美国', class='衣阿华级2号舰', skill='重火力炮击',
    hp=84, atk=91, tpd=0, def=82, aa=71, eva=30, acc=41, as=0, rec=20, speed=33, luck=23, range='长', size='大型舰/主力舰',
    atkMax=116, tpdMax=0, defMax=102, aaMax=106, evaMax=52, accMax=102, asMax=0, recMax=47,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='早期型U国三联16英寸炮（MK7）', eq2='先进型火控雷达', eq3='改良型动力系统', eq4='无',
    sFuel=135, sAmmo=175, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=91, sTpd=0, sDef=82, sAa=83, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['萨勒姆'] = {
    index=410, rarity=6, cost=4, sp=3, type='CA', country='美国', class='德梅因级2号舰', skill='精锐装备',
    hp=52, atk=53, tpd=0, def=38, aa=79, eva=31, acc=38, as=0, rec=18, speed=33, luck=19, range='中', size='中型舰/护卫舰',
    atkMax=83, tpdMax=0, defMax=58, aaMax=109, evaMax=75, accMax=94, asMax=0, recMax=56,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16三联8英寸自动炮', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=53, sTpd=0, sDef=19, sAa=90, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['黛朵'] = {
    index=411, rarity=4, cost=1, sp=2, type='CL', country='英国', class='黛朵级1号舰',
    hp=28, atk=22, tpd=10, def=21, aa=47, eva=31, acc=35, as=40, rec=11, speed=32, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=50, defMax=46, aaMax=87, evaMax=69, accMax=92, asMax=84, recMax=22,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联5.25英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.5, sAtk=15, sTpd=10, sDef=11, sAa=45, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['堪培拉'] = {
    index=412, rarity=3, cost=1, sp=2, type='CA', country='undefined', class='肯特级七号舰',
    hp=50, atk=34, tpd=16, def=28, aa=26, eva=30, acc=34, as=0, rec=14, speed=31.5, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=51, defMax=43, aaMax=56, evaMax=74, accMax=89, asMax=0, recMax=52,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=34, sTpd=8, sDef=14, sAa=13, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['加里波第'] = {
    index=413, rarity=4, cost=2, sp=2, type='CL', country='意大利', class='佣兵队长（5批次）级2号舰',
    hp=36, atk=26, tpd=8, def=34, aa=30, eva=34, acc=33, as=30, rec=13, speed=34, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=51, tpdMax=43, defMax=54, aaMax=60, evaMax=67, accMax=90, asMax=68, recMax=30,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.1, rSteel=2, rTime=0.7, sAtk=13, sTpd=8, sDef=17, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=60, coreType='巡洋', coreNum=20, mFuel=1500, mAmmo=1000, mSteel=1000, mBaux=500
}

ships['凯利'] = {
    index=414, rarity=4, cost=1, sp=2, type='DD', country='英国', class='K级1号舰',
    hp=14, atk=9, tpd=20, def=5, aa=18, eva=38, acc=30, as=28, rec=5, speed=36, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=70, defMax=20, aaMax=48, evaMax=82, accMax=87, asMax=61, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型声纳', eq2='507B迷彩（蒙巴顿粉）', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.45, sAtk=3, sTpd=20, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=60, coreType='驱逐', coreNum=8, mFuel=380, mAmmo=140, mSteel=610, mBaux=0
}

ships['英格兰'] = {
    index=415, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DE-635',
    hp=12, atk=6, tpd=10, def=6, aa=21, eva=32, acc=30, as=60, rec=6, speed=24, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=60, defMax=21, aaMax=51, evaMax=76, accMax=87, asMax=120, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='刺猬弹深弹投射器', eq2='改良型声纳', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.47, rSteel=0.85, rTime=0.375, sAtk=0, sTpd=10, sDef=6, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['47工程'] = {
    index=416, rarity=5, cost=2, sp=2, type='DD', country='苏联', class='47型1号舰',
    hp=28, atk=16, tpd=25, def=20, aa=24, eva=42, acc=30, as=25, rec=5, speed=38, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=75, defMax=40, aaMax=54, evaMax=86, accMax=87, asMax=58, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='533毫米2-н鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=25, sDef=20, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=70, coreType='巡洋', coreNum=15, mFuel=1000, mAmmo=1500, mSteel=1200, mBaux=0,
}

ships['可怖'] = {
    index=417, rarity=5, cost=1, sp=2, type='DD', country='法国', class='空想级3号舰',
    hp=22, atk=12, tpd=25, def=7, aa=18, eva=54, acc=30, as=30, rec=8, speed=45, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=75, defMax=22, aaMax=48, evaMax=98, accMax=87, asMax=63, recMax=19,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='改良型动力系统', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.64, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=25, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['阿金库尔'] = {
    index=418, rarity=5, cost=5, sp=4, type='BB', country='英国', class='阿金库尔级1号舰', skill='战列线',
    hp=64, atk=62, tpd=0, def=56, aa=19, eva=18, acc=38, as=0, rec=12, speed=22.5, luck=15, range='长', size='大型舰/主力舰',
    atkMax=87, tpdMax=0, defMax=76, aaMax=49, evaMax=40, accMax=94, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='一星期主炮群', eq2='无', eq3='无', eq4='无',
    sFuel=65, sAmmo=120, rFuel=2.9, rSteel=5.3, rTime=0.75, sAtk=67, sTpd=0, sDef=56, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['桑提'] = {
    index=419, rarity=4, cost=1, sp=3, type='CVL', country='美国', class='桑加蒙级4号舰',
    hp=40, atk=0, tpd=0, def=10, aa=40, eva=15, acc=34, as=0, rec=36, speed=18, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=30, aaMax=70, evaMax=37, accMax=90, asMax=0, recMax=63,
    cap1=15, cap2=10, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='不可装备',
    sFuel=40, sAmmo=40, rFuel=1.3, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=5, sAa=49, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['亚尔古水手'] = {
    index=420, rarity=4, cost=1, sp=2, type='CL', country='英国', class='黛朵级9号舰', skill='征战四海',
    hp=28, atk=22, tpd=10, def=21, aa=50, eva=31, acc=35, as=38, rec=11, speed=32, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=50, defMax=46, aaMax=90, evaMax=69, accMax=92, asMax=82, recMax=22,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联5.25英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.5, sAtk=15, sTpd=10, sDef=11, sAa=49, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['萨凡纳'] = {
    index=421, rarity=4, cost=2, sp=2, type='CL', country='美国', class='布鲁克林级3号舰',
    hp=32, atk=32, tpd=0, def=29, aa=61, eva=31, acc=34, as=35, rec=12, speed=32.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=54, aaMax=91, evaMax=69, accMax=89, asMax=68, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='U国博福斯40毫米防空炮(四联)', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=15, sAa=62, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['凤凰城'] = {
    index=422, rarity=4, cost=2, sp=2, type='CL', country='美国', class='布鲁克林级5号舰', skill='涅槃',
    hp=33, atk=32, tpd=0, def=27, aa=46, eva=34, acc=34, as=30, rec=12, speed=31.5, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=52, aaMax=86, evaMax=72, accMax=89, asMax=63, recMax=23,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国四联1.1英寸防空炮', eq2='U国三联6英寸炮', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=14, sAa=49, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['燕八哥'] = {
    index=423, rarity=4, cost=1, sp=2, type='DD', country='英国', class='改黑天鹅级13号舰',
    hp=13, atk=8, tpd=5, def=4, aa=17, eva=33, acc=30, as=61, rec=4, speed=20, luck=24, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=55, defMax=19, aaMax=47, evaMax=75, accMax=87, asMax=121, recMax=15,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='刺猬弹深弹投射器', eq2='改良型深弹投射器', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=5, sDef=4, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['蒂默曼'] = {
    index=424, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-828',
    hp=20, atk=10, tpd=20, def=10, aa=48, eva=49, acc=30, as=38, rec=10, speed=43, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=25, aaMax=78, evaMax=93, accMax=87, asMax=82, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.375, sAtk=0, sTpd=20, sDef=10, sAa=18, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['史密斯'] = {
    index=425, rarity=4, cost=1, sp=2, type='DD', country='美国', class='DD-378',
    hp=16, atk=9, tpd=24, def=7, aa=19, eva=37, acc=30, as=25, rec=6, speed=37, luck=23, range='短', size='小型舰/护卫舰',
    atkMax=29, tpdMax=74, defMax=22, aaMax=49, evaMax=81, accMax=87, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=40, coreType='驱逐', coreNum=10, mFuel=300, mAmmo=300, mSteel=300, mBaux=100
}

ships['彼得·施特拉塞尔'] = {
    index=426, rarity=5, cost=3, sp=4, type='CV', country='德国', class='齐柏林伯爵级2号舰', skill='超重型航弹',
    hp=52, atk=0, tpd=0, def=32, aa=32, eva=32, acc=36, as=0, rec=38, speed=35, luck=5, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=57, aaMax=62, evaMax=54, accMax=95, asMax=0, recMax=65,
    cap1=12, cap2=21, cap3=17, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='BF109T', eq2='Ju-87C斯图卡', eq3='无', eq4='无',
    sFuel=50, sAmmo=60, rFuel=2.08, rSteel=4.3, rTime=1, sAtk=0, sTpd=0, sDef=19, sAa=32, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
    modLv=70, coreType='航母', coreNum=18, mFuel=200, mAmmo=0, mSteel=2300, mBaux=1800
}

ships['塞班'] = {
    index=427, rarity=4, cost=2, sp=2, type='CVL', country='美国', class='塞班级1号舰',
    hp=40, atk=0, tpd=0, def=22, aa=53, eva=32, acc=33, as=0, rec=39, speed=32, luck=15, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=42, aaMax=83, evaMax=54, accMax=89, asMax=0, recMax=66,
    cap1=15, cap2=25, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4U海盗', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.65, sAtk=0, sTpd=0, sDef=11, sAa=76, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['尼古拉斯'] = {
    index=428, rarity=5, cost=1, sp=2, type='DD', country='美国', class='DD-449',
    hp=17, atk=11, tpd=23, def=7, aa=24, eva=40, acc=30, as=35, rec=7, speed=37, luck=52, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=73, defMax=22, aaMax=54, evaMax=84, accMax=87, asMax=79, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=23, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['马伊·布雷泽'] = {
    index=429, rarity=4, cost=1, sp=2, type='DD', country='法国', class='T47型7号舰',
    hp=24, atk=12, tpd=25, def=10, aa=50, eva=34, acc=30, as=40, rec=10, speed=34, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=75, defMax=25, aaMax=80, evaMax=72, accMax=87, asMax=84, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国M1948双联127毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.6, rSteel=0.95, rTime=0.5, sAtk=0, sTpd=25, sDef=10, sAa=14, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=50, coreType='驱逐', coreNum=15, mFuel=600, mAmmo=200, mSteel=700, mBaux=0
}

ships['捷尔任斯基'] = {
    index=430, rarity=4, cost=1, sp=2, type='CL', country='苏联', class='68-бис型2号舰',
    hp=36, atk=31, tpd=16, def=28, aa=55, eva=33, acc=36, as=30, rec=20, speed=33, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=56, defMax=48, aaMax=85, evaMax=66, accMax=92, asMax=74, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-5-1双联100毫米高炮', eq2='S国三联Б-38型152毫米炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=16, sTpd=16, sDef=14, sAa=47, dFuel=10, dAmmo=16, dSteel=10, dBaux=0,
    modLv=85, coreType='巡洋', coreNum=28, mFuel=2500, mAmmo=2500, mSteel=2500, mBaux=2500
}

ships['什罗普郡'] = {
    index=431, rarity=4, cost=0, sp=2, type='CA', country='英国', class='伦敦级4号舰',
    hp=50, atk=36, tpd=18, def=28, aa=46, eva=31, acc=35, as=0, rec=15, speed=31.5, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=53, defMax=41, aaMax=76, evaMax=75, accMax=91, asMax=0, recMax=53,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国八联40毫米砰砰炮', eq2='E国双联8英寸炮', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=40, sTpd=9, sDef=14, sAa=33, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=45, coreType='巡洋', coreNum=10, mFuel=20, mAmmo=500, mSteel=500, mBaux=100
}

ships['波士顿'] = {
    index=432, rarity=4, cost=1, sp=2, type='CA', country='美国', class='巴尔的摩级2号舰',
    hp=52, atk=43, tpd=0, def=36, aa=62, eva=31, acc=36, as=0, rec=18, speed=33, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=0, defMax=56, aaMax=92, evaMax=75, accMax=92, asMax=0, recMax=56,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮(MK12/15)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=63, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['提康德罗加'] = {
    index=433, rarity=5, cost=3, sp=4, type='CV', country='美国', class='埃塞克斯级6号舰', skill='制空权',
    hp=60, atk=0, tpd=0, def=35, aa=68, eva=30, acc=37, as=0, rec=50, speed=33, luck=22, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=98, evaMax=52, accMax=96, asMax=0, recMax=77,
    cap1=18, cap2=20, cap3=34, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='TBF复仇者', eq2='F6F地狱猫', eq3='无', eq4='无',
    sFuel=60, sAmmo=65, rFuel=2.4, rSteel=4.6, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=107, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['亨廷顿'] = {
    index=434, rarity=4, cost=1, sp=2, type='CL', country='美国', class='法戈级2号舰',
    hp=36, atk=31, tpd=0, def=32, aa=70, eva=32, acc=34, as=35, rec=12, speed=32.5, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=0, defMax=57, aaMax=110, evaMax=70, accMax=91, asMax=79, recMax=50,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国博福斯40毫米防空炮(四联)', eq2='U国三联6英寸炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=16, sAa=86, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['B65'] = {
    index=435, rarity=4, cost=4, sp=5, type='BC', country='日本', class='超甲巡型1番舰', skill='夜战核心',
    hp=62, atk=67, tpd=0, def=59, aa=50, eva=33, acc=38, as=0, rec=13, speed=33, luck=5, range='长', size='大型舰/主力舰',
    atkMax=93, tpdMax=0, defMax=74, aaMax=80, evaMax=66, accMax=94, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零式水上侦察机', eq2='改良型动力系统', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=67, sTpd=0, sDef=59, sAa=39, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['十三号战舰'] = {
    index=436, rarity=5, cost=5, sp=5, type='BC', country='日本', class='13号型1番舰', skill='大舰巨炮',
    hp=80, atk=92, tpd=0, def=75, aa=26, eva=28, acc=39, as=0, rec=15, speed=30, luck=5, range='长', size='大型舰/主力舰',
    atkMax=117, tpdMax=0, defMax=95, aaMax=56, evaMax=61, accMax=96, asMax=0, recMax=42,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五年式四十六厘主炮', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=140, rFuel=3.3, rSteel=6.1, rTime=1, sAtk=92, sTpd=0, sDef=75, sAa=13, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['鞍马'] = {
    index=437, rarity=4, cost=0, sp=2, type='CA', country='日本', class='伊吹型2番舰',
    hp=42, atk=41, tpd=30, def=35, aa=30, eva=35, acc=36, as=0, rec=13, speed=35, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=65, defMax=50, aaMax=60, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=18, sDef=18, sAa=15, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['梅肯'] = {
    index=438, rarity=4, cost=0, sp=2, type='CA', country='美国', class='巴尔的摩级11号舰', skill='天狮星',
    hp=52, atk=43, tpd=0, def=36, aa=65, eva=31, acc=36, as=0, rec=18, speed=33, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=0, defMax=56, aaMax=95, evaMax=75, accMax=92, asMax=0, recMax=56,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮(MK12/15)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=68, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['冬月'] = {
    index=439, rarity=3, cost=1, sp=2, type='DD', country='日本', class='秋月型8番舰',
    hp=19, atk=13, tpd=18, def=7, aa=31, eva=36, acc=30, as=25, rec=7, speed=33, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=22, aaMax=61, evaMax=80, accMax=87, asMax=58, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['阿尔维塞·达莫斯托'] = {
    index=440, rarity=4, cost=1, sp=2, type='DD', country='意大利', class='航海家级11号舰',
    hp=20, atk=10, tpd=18, def=7, aa=19, eva=45, acc=31, as=22, rec=5, speed=45, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=68, defMax=22, aaMax=49, evaMax=89, accMax=88, asMax=55, recMax=16,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['托戈'] = {
    index=441, rarity=4, cost=1, sp=2, type='AP', country='德国', class='托戈级1号舰',
    hp=36, atk=8, tpd=0, def=10, aa=39, eva=15, acc=35, as=0, rec=37, speed=16, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=0, defMax=25, aaMax=69, evaMax=37, accMax=91, asMax=0, recMax=64,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='柴油机', eq2='夜间战斗机联队', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=25, rFuel=1.2, rSteel=2.4, rTime=0.7, sAtk=4, sTpd=0, sDef=7, sAa=3, dFuel=2, dAmmo=2, dSteel=2, dBaux=0
}

ships['里昂'] = {
    index=442, rarity=5, cost=3, sp=2, type='BB', country='法国', class='里昂级1号舰', skill='侧舷火力',
    hp=72, atk=82, tpd=0, def=65, aa=20, eva=18, acc=40, as=0, rec=12, speed=21, luck=5, range='长', size='大型舰/主力舰',
    atkMax=107, tpdMax=0, defMax=85, aaMax=50, evaMax=40, accMax=100, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联340毫米主炮', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5, rTime=0.8, sAtk=82, sTpd=0, sDef=65, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['阿贺野'] = {
    index=443, rarity=4, cost=1, sp=2, type='CL', country='日本', class='阿贺野型1番舰',
    hp=28, atk=17, tpd=25, def=20, aa=27, eva=33, acc=34, as=20, rec=11, speed=37, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=47, tpdMax=60, defMax=45, aaMax=57, evaMax=72, accMax=89, asMax=47, recMax=22,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='J国15.2厘米连装炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=9, sTpd=28, sDef=10, sAa=14, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['红色高加索'] = {
    index=444, rarity=4, cost=1, sp=2, type='CL', country='苏联', class='红色高加索级1号舰',
    hp=28, atk=16, tpd=15, def=22, aa=30, eva=30, acc=35, as=25, rec=12, speed=29, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=45, defMax=47, aaMax=60, evaMax=69, accMax=90, asMax=52, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='Б-1-К单装180毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.3, rTime=0.5, sAtk=8, sTpd=15, sDef=11, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['哈尔福德'] = {
    index=445, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-480',
    hp=17, atk=8, tpd=16, def=7, aa=27, eva=37, acc=30, as=35, rec=20, speed=37, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=66, defMax=22, aaMax=57, evaMax=81, accMax=87, asMax=79, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='OS2U翠鸟侦察机（DD）', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=16, sDef=7, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['狮(战列巡洋舰)'] = {
    index=446, rarity=4, cost=3, sp=2, type='BC', country='英国', class='狮级1号舰', skill='突击',
    hp=60, atk=60, tpd=0, def=54, aa=15, eva=30, acc=38, as=0, rec=13, speed=27, luck=20, range='长', size='大型舰/主力舰',
    atkMax=85, tpdMax=0, defMax=69, aaMax=45, evaMax=63, accMax=94, asMax=0, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型动力系统', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=110, rFuel=2.8, rSteel=5.1, rTime=0.75, sAtk=65, sTpd=0, sDef=54, sAa=8, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['迪凯纳'] = {
    index=447, rarity=3, cost=2, sp=2, type='CA', country='法国', class='迪凯纳级1号舰',
    hp=40, atk=34, tpd=12, def=24, aa=27, eva=33, acc=36, as=0, rec=13, speed=33, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=42, defMax=39, aaMax=57, evaMax=66, accMax=92, asMax=0, recMax=30,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=34, sTpd=6, sDef=12, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['弗兰德尔'] = {
    index=448, rarity=5, cost=4, sp=3, type='BB', country='法国', class='阿尔萨斯级3号舰', skill='主炮群覆盖',
    hp=84, atk=89, tpd=0, def=84, aa=51, eva=29, acc=40, as=0, rec=13, speed=31, luck=5, range='长', size='大型舰/主力舰',
    atkMax=114, tpdMax=0, defMax=104, aaMax=81, evaMax=51, accMax=96, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国四联380毫米炮', eq2='F国四联380毫米炮', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8.2, rTime=1.05, sAtk=89, sTpd=0, sDef=84, sAa=41, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['莫加多尔'] = {
    index=449, rarity=4, cost=1, sp=2, type='DD', country='法国', class='莫加多尔级1号舰',
    hp=24, atk=17, tpd=25, def=10, aa=20, eva=48, acc=30, as=22, rec=9, speed=42, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=42, tpdMax=75, defMax=25, aaMax=50, evaMax=92, accMax=87, asMax=55, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国M1934双联138毫米炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=25, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['L20'] = {
    index=450, rarity=5, cost=4, sp=4, type='BB', country='德国', class='L20级1号舰', skill='公海舰队',
    hp=84, atk=85, tpd=0, def=76, aa=23, eva=26, acc=40, as=0, rec=16, speed=26, luck=5, range='长', size='大型舰/主力舰',
    atkMax=110, tpdMax=0, defMax=96, aaMax=53, evaMax=48, accMax=100, asMax=0, recMax=38,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(大型)', eq2='无', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=3.2, rSteel=6, rTime=1.05, sAtk=85, sTpd=0, sDef=80, sAa=12, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['伊吹'] = {
    index=451, rarity=4, cost=0, sp=3, type='CA', country='日本', class='伊吹型1番舰', skill='主力甲巡',
    hp=42, atk=41, tpd=30, def=35, aa=29, eva=35, acc=36, as=0, rec=13, speed=35, luck=5, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=65, defMax=50, aaMax=59, evaMax=79, accMax=92, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国20.3厘米连装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=41, sTpd=18, sDef=18, sAa=15, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['萨里'] = {
    index=452, rarity=4, cost=2, sp=2, type='CA', country='英国', class='萨里级1号舰',
    hp=48, atk=34, tpd=10, def=33, aa=36, eva=30, acc=35, as=0, rec=13, speed=31, luck=7, range='中', size='中型舰/护卫舰',
    atkMax=54, tpdMax=45, defMax=48, aaMax=66, evaMax=74, accMax=91, asMax=0, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=38, sTpd=5, sDef=17, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['野分'] = {
    index=453, rarity=4, cost=2, sp=2, type='DD', country='日本', class='阳炎型15番舰',
    hp=16, atk=12, tpd=28, def=7, aa=15, eva=37, acc=30, as=21, rec=7, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=78, defMax=22, aaMax=45, evaMax=81, accMax=87, asMax=54, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=31, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['征服者'] = {
    index=454, rarity=6, cost=5, sp=6, type='BB', country='英国', class='狮级3号舰', skill='新锐战舰',
    hp=81, atk=85, tpd=0, def=80, aa=68, eva=28, acc=41, as=0, rec=15, speed=28.25, luck=6, range='长', size='大型舰/主力舰',
    atkMax=110, tpdMax=0, defMax=105, aaMax=98, evaMax=50, accMax=97, asMax=0, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国MK.III型三联16英寸炮', eq2='E国博福斯40毫米防空机炮(六联)', eq3='无', eq4='无',
    sFuel=125, sAmmo=175, rFuel=4.8, rSteel=9, rTime=1, sAtk=91, sTpd=0, sDef=80, sAa=66, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['皇家方舟(R09)'] = {
    index=455, rarity=6, cost=3, sp=3, type='AV', country='英国', class='大胆级2号舰', skill='新时代',
    hp=84, atk=0, tpd=0, def=65, aa=80, eva=29, acc=32, as=0, rec=40, speed=31.5, luck=15, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=95, aaMax=110, evaMax=51, accMax=89, asMax=0, recMax=67,
    cap1=20, cap2=30, cap3=21, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='飞龙(装备)', eq2='无', eq3='无', eq4='无',
    sFuel=95, sAmmo=130, rFuel=3.5, rSteel=5.8, rTime=1.15, sAtk=3, sTpd=0, sDef=33, sAa=124, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['彼得罗巴甫洛夫斯克'] = {
    index=456, rarity=4, cost=2, sp=3, type='CA', country='苏联', class='83型1号舰',
    hp=52, atk=36, tpd=20, def=36, aa=37, eva=30, acc=35, as=0, rec=15, speed=32.6, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=56, tpdMax=55, defMax=51, aaMax=67, evaMax=74, accMax=91, asMax=0, recMax=51,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.6, rTime=0.8, sAtk=36, sTpd=10, sDef=18, sAa=20, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
    modLv=60, coreType='巡洋', coreNum=15, mFuel=1500, mAmmo=500, mSteel=1000, mBaux=200
}

ships['潮'] = {
    index=457, rarity=3, cost=1, sp=2, type='DD', country='日本', class='绫波型10番舰',
    hp=15, atk=11, tpd=25, def=7, aa=13, eva=45, acc=30, as=16, rec=6, speed=38, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=75, defMax=22, aaMax=43, evaMax=89, accMax=87, asMax=49, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米三连装鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-14'] = {
    index=458, rarity=4, cost=5, sp=5, type='SS', country='undefined', class='U-14', skill='王牌',
    hp=8, atk=1, tpd=15, def=5, aa=0, eva=27, acc=33, as=0, rec=13, speed=12.6, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=21, tpdMax=65, defMax=20, aaMax=0, evaMax=60, accMax=99, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.5, rSteel=0.4, rTime=0.165, sAtk=0, sTpd=15, sDef=5, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['底特律'] = {
    index=459, rarity=3, cost=2, sp=2, type='CL', country='美国', class='奥马哈级5号舰',
    hp=28, atk=20, tpd=18, def=15, aa=25, eva=32, acc=33, as=20, rec=8, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=58, defMax=35, aaMax=55, evaMax=70, accMax=90, asMax=64, recMax=20,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=10, sTpd=18, sDef=8, sAa=18, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['宾夕法尼亚'] = {
    index=460, rarity=4, cost=3, sp=2, type='BB', country='美国', class='宾夕法尼亚级1号舰', skill='主炮支援',
    hp=68, atk=73, tpd=0, def=67, aa=36, eva=15, acc=38, as=0, rec=12, speed=21, luck=20, range='长', size='大型舰/主力舰',
    atkMax=93, tpdMax=0, defMax=87, aaMax=66, evaMax=37, accMax=94, asMax=0, recMax=39,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.2, rTime=0.85, sAtk=73, sTpd=0, sDef=67, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['无敌'] = {
    index=461, rarity=6, cost=6, sp=5, type='BC', country='英国', class='G3级1号舰', skill='冲锋',
    hp=84, atk=85, tpd=0, def=82, aa=43, eva=30, acc=39, as=0, rec=17, speed=32, luck=6, range='长', size='大型舰/主力舰',
    atkMax=110, tpdMax=0, defMax=107, aaMax=73, evaMax=52, accMax=100, asMax=0, recMax=44,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮', eq2='E国双联6英寸炮', eq3='无', eq4='无',
    sFuel=130, sAmmo=175, rFuel=4.8, rSteel=9.1, rTime=0.95, sAtk=91, sTpd=0, sDef=82, sAa=29, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['多摩'] = {
    index=462, rarity=3, cost=1, sp=3, type='CL', country='日本', class='球磨型2番舰',
    hp=25, atk=16, tpd=18, def=9, aa=13, eva=40, acc=34, as=20, rec=10, speed=36, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=58, defMax=29, aaMax=43, evaMax=78, accMax=89, asMax=64, recMax=21,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=21, sDef=5, sAa=7, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['鹰'] = {
    index=463, rarity=4, cost=5, sp=4, type='SS', country='undefined', class='鹰级1号舰',
    hp=12, atk=5, tpd=24, def=10, aa=0, eva=20, acc=31, as=0, rec=11, speed=19.4, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=95, asMax=0, recMax=44,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='柴油机', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['南达科他(BB-49)'] = {
    index=464, rarity=6, cost=2, sp=4, type='BB', country='美国', class='南达科他级1号舰', skill='主炮火力',
    hp=80, atk=98, tpd=0, def=75, aa=35, eva=18, acc=38, as=0, rec=12, speed=23, luck=8, range='长', size='大型舰/主力舰',
    atkMax=123, tpdMax=0, defMax=95, aaMax=65, evaMax=40, accMax=94, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联16英寸主炮（MK2）', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=185, rFuel=3.7, rSteel=8.1, rTime=0.85, sAtk=98, sTpd=0, sDef=75, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['爪哇'] = {
    index=465, rarity=3, cost=2, sp=2, type='CL', country='undefined', class='爪哇级1号舰',
    hp=28, atk=20, tpd=0, def=27, aa=30, eva=31, acc=35, as=25, rec=12, speed=31, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=0, defMax=47, aaMax=60, evaMax=70, accMax=90, asMax=58, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.2, rTime=0.5, sAtk=10, sTpd=0, sDef=14, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['1939战列舰'] = {
    index=466, rarity=5, cost=4, sp=4, type='BB', country='西班牙', class='1939计划(sp)', skill='第五人',
    hp=76, atk=82, tpd=0, def=78, aa=36, eva=28, acc=40, as=0, rec=14, speed=31, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=102, tpdMax=0, defMax=98, aaMax=66, evaMax=50, accMax=96, asMax=0, recMax=43, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联381毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1.1, sAtk=82, sTpd=0, sDef=78, sAa=18, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['鞍山'] = {
    index=467, rarity=4, cost=2, sp=5, type='DDG', country='中国', class='07型1号舰', skill='力争上游',
    hp=20, atk=12, tpd=1, def=9, aa=30, eva=35, acc=35, as=0, rec=15, speed=39, luck=20, range='短', size='小型舰/主力舰',
    atkMax=37, tpdMax=1, defMax=24, aaMax=60, evaMax=79, accMax=95, asMax=0, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='上游-1发射器', eq2='上游-1导弹', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=50, rFuel=0.48, rSteel=1.2, rTime=0.6, sAtk=12, sTpd=1, sDef=9, sAa=30, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
    modLv=67, coreType='驱逐', coreNum=30, mFuel=6000, mAmmo=6000, mSteel=6000, mBaux=6000
}

ships['猎户座'] = {
    index=468, rarity=4, cost=2, sp=2, type='BB', country='英国', class='猎户座级1号舰', skill='纵列火力',
    hp=56, atk=64, tpd=0, def=61, aa=15, eva=16, acc=38, as=0, rec=12, speed=21, luck=19, range='长', size='大型舰/主力舰',
    atkMax=89, tpdMax=0, defMax=81, aaMax=45, evaMax=38, accMax=96, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=55, sAmmo=110, rFuel=2.8, rSteel=5, rTime=0.8, sAtk=69, sTpd=0, sDef=61, sAa=8, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['本宁顿'] = {
    index=469, rarity=5, cost=3, sp=3, type='CV', country='美国', class='埃塞克斯级12号舰', skill='特混空袭',
    hp=60, atk=0, tpd=0, def=35, aa=71, eva=30, acc=37, as=0, rec=50, speed=33, luck=18, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=101, evaMax=52, accMax=96, asMax=0, recMax=77,
    cap1=19, cap2=20, cap3=34, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F6F地狱猫', eq2='F6F地狱猫', eq3='TBF复仇者', eq4='SB2C地狱俯冲者',
    sFuel=60, sAmmo=65, rFuel=2.4, rSteel=4.6, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=113, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['甘比尔湾'] = {
    index=470, rarity=4, cost=2, sp=2, type='CVL', country='美国', class='卡萨布兰卡级19号舰',
    hp=36, atk=0, tpd=0, def=7, aa=40, eva=15, acc=35, as=0, rec=38, speed=18, luck=15, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=27, aaMax=70, evaMax=37, accMax=91, asMax=0, recMax=67,
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='FM-2', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=4, sAa=49, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['欧罗巴'] = {
    index=471, rarity=4, cost=2, sp=2, type='CV', country='德国', class='欧罗巴级1号舰', skill='重新启航',
    hp=84, atk=0, tpd=0, def=20, aa=42, eva=22, acc=37, as=0, rec=40, speed=27.5, luck=9, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=45, aaMax=72, evaMax=44, accMax=96, asMax=0, recMax=67,
    cap1=12, cap2=18, cap3=15, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='BF109T', eq2='Ju-87C斯图卡', eq3='无', eq4='无',
    sFuel=90, sAmmo=65, rFuel=4.7, rSteel=5, rTime=0.95, sAtk=0, sTpd=0, sDef=13, sAa=48, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['霞飞'] = {
    index=472, rarity=4, cost=2, sp=2, type='CV', country='法国', class='霞飞级1号舰',
    hp=52, atk=0, tpd=0, def=28, aa=46, eva=31, acc=37, as=0, rec=45, speed=33, luck=6, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=53, aaMax=76, evaMax=53, accMax=96, asMax=0, recMax=72,
    cap1=9, cap2=16, cap3=15, cap4=8, msl1=0, msl2=0, msl3=0, msl4=0, eq1='BR.810', eq2='D.790', eq3='LN.401', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.3, rSteel=4.3, rTime=0.8, sAtk=0, sTpd=0, sDef=14, sAa=56, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['阿非利加征服者西庇阿'] = {
    index=473, rarity=5, cost=2, sp=2, type='CL', country='意大利', class='罗马统帅级10号舰',
    hp=24, atk=18, tpd=24, def=12, aa=19, eva=48, acc=34, as=25, rec=12, speed=40, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=43, tpdMax=59, defMax=27, aaMax=49, evaMax=96, accMax=91, asMax=58, recMax=23,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联135毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.1, rTime=0.4, sAtk=9, sTpd=24, sDef=6, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['72工程'] = {
    index=474, rarity=4, cost=2, sp=2, type='CV', country='苏联', class='72型1号舰', skill='定点击破',
    hp=64, atk=0, tpd=0, def=37, aa=52, eva=30, acc=37, as=0, rec=40, speed=30, luck=5, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=62, aaMax=82, evaMax=52, accMax=95, asMax=0, recMax=67,
    cap1=15, cap2=15, cap3=24, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=65, sAmmo=65, rFuel=2.4, rSteel=4.6, rTime=0.9, sAtk=0, sTpd=0, sDef=19, sAa=68, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['U-2511'] = {
    index=475, rarity=4, cost=2, sp=2, type='SS', country='德国', class='U-2511',
    hp=16, atk=6, tpd=28, def=11, aa=0, eva=25, acc=33, as=0, rec=12, speed=17.2, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=78, defMax=26, aaMax=0, evaMax=50, accMax=97, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.275, sAtk=0, sTpd=28, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['科顿艾尔'] = {
    index=476, rarity=3, cost=2, sp=2, type='DD', country='undefined', class='海军上将级3号舰',
    hp=16, atk=7, tpd=18, def=6, aa=19, eva=37, acc=30, as=20, rec=20, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=27, tpdMax=68, defMax=21, aaMax=49, evaMax=85, accMax=87, asMax=64, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=18, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['马戈迪尼'] = {
    index=477, rarity=3, cost=1, sp=2, type='DD', country='意大利', class='金牌指挥官级2型6号舰',
    hp=20, atk=11, tpd=18, def=8, aa=27, eva=38, acc=31, as=30, rec=6, speed=35, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=31, tpdMax=68, defMax=23, aaMax=57, evaMax=86, accMax=88, asMax=75, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=18, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['阿方索十三世'] = {
    index=478, rarity=3, cost=2, sp=2, type='BB', country='undefined', class='西班牙级2号舰',
    hp=53, atk=50, tpd=0, def=48, aa=18, eva=17, acc=38, as=0, rec=12, speed=19.5, luck=10, range='长', size='大型舰/主力舰',
    atkMax=75, tpdMax=0, defMax=68, aaMax=48, evaMax=39, accMax=96, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=40, sAmmo=90, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=50, sTpd=0, sDef=48, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['桑普森'] = {
    index=479, rarity=4, cost=2, sp=2, type='DD', country='美国', class='索莫斯级3号舰',
    hp=20, atk=15, tpd=26, def=8, aa=19, eva=37, acc=30, as=25, rec=6, speed=36, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=76, defMax=23, aaMax=49, evaMax=82, accMax=87, asMax=69, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=26, sDef=8, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-459'] = {
    index=480, rarity=4, cost=6, sp=5, type='SS', country='德国', class='U-459',
    hp=20, atk=2, tpd=6, def=10, aa=0, eva=15, acc=32, as=0, rec=12, speed=14.9, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=22, tpdMax=56, defMax=25, aaMax=0, evaMax=39, accMax=96, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=15, rFuel=0.6, rSteel=0.6, rTime=0.275, sAtk=0, sTpd=6, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['仁淀'] = {
    index=481, rarity=4, cost=1, sp=2, type='CL', country='日本', class='大淀型2番舰',
    hp=32, atk=20, tpd=0, def=25, aa=33, eva=35, acc=35, as=28, rec=20, speed=35.3, luck=7, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=0, defMax=50, aaMax=63, evaMax=74, accMax=92, asMax=75, recMax=35,
    cap1=6, cap2=6, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国15.5厘米三联主炮', eq2='紫云', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=0, sDef=13, sAa=17, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['大淀(苍青幻影)'] = {
    index=482, rarity=4, cost=1, sp=3, type='CL', country='日本', class='大淀型1番舰', skill='激励之心',
    hp=28, atk=16, tpd=0, def=25, aa=39, eva=37, acc=35, as=30, rec=20, speed=36, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=41, tpdMax=0, defMax=50, aaMax=69, evaMax=76, accMax=92, asMax=80, recMax=35,
    cap1=6, cap2=6, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='紫云', eq2='J国12.7厘米连装高射炮', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=0, sDef=13, sAa=23, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['胜利'] = {
    index=483, rarity=5, cost=2, sp=2, type='AV', country='英国', class='光辉级2号舰', skill='协同出击',
    hp=66, atk=0, tpd=0, def=63, aa=55, eva=33, acc=32, as=0, rec=42, speed=30.5, luck=25, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=93, aaMax=85, evaMax=60, accMax=87, asMax=0, recMax=69,
    cap1=12, cap2=25, cap3=12, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='海燕', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.5, rTime=0.975, sAtk=3, sTpd=0, sDef=32, sAa=74, dFuel=20, dAmmo=20, dSteel=40, dBaux=10,
    modLv=80, coreType='航母', coreNum=24, mFuel=500, mAmmo=500, mSteel=2000, mBaux=2200
}

ships['安森'] = {
    index=484, rarity=5, cost=2, sp=2, type='BC', country='英国', class='海军上将级4号舰', skill='快速战队',
    hp=76, atk=70, tpd=0, def=69, aa=30, eva=27, acc=40, as=0, rec=13, speed=31, luck=5, range='长', size='大型舰/主力舰',
    atkMax=95, tpdMax=0, defMax=84, aaMax=60, evaMax=57, accMax=96, asMax=0, recMax=38,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=75, sTpd=0, sDef=69, sAa=15, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['英格拉姆'] = {
    index=485, rarity=3, cost=1, sp=2, type='DD', country='美国', class='DD-694',
    hp=22, atk=10, tpd=20, def=10, aa=32, eva=38, acc=31, as=32, rec=7, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=70, defMax=30, aaMax=62, evaMax=82, accMax=88, asMax=67, recMax=22,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=10, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['G15'] = {
    index=486, rarity=5, cost=0, sp=2, type='AV', country='日本', class='G15型1号舰', skill='飞石战法',
    hp=68, atk=0, tpd=0, def=52, aa=50, eva=35, acc=32, as=0, rec=45, speed=33.3, luck=5, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=87, aaMax=80, evaMax=59, accMax=85, asMax=0, recMax=73,
    cap1=18, cap2=30, cap3=17, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='彗星', eq2='零战62型', eq3='流星', eq4='无',
    sFuel=75, sAmmo=70, rFuel=2.88, rSteel=5.5, rTime=1, sAtk=0, sTpd=0, sDef=26, sAa=64, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['五月二十五'] = {
    index=487, rarity=3, cost=0, sp=2, type='CA', country='undefined', class='五月二十五级1号舰',
    hp=32, atk=25, tpd=8, def=26, aa=25, eva=36, acc=35, as=0, rec=11, speed=32, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=45, tpdMax=58, defMax=41, aaMax=55, evaMax=75, accMax=91, asMax=0, recMax=48,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=60, rFuel=1.28, rSteel=2.4, rTime=0.8, sAtk=25, sTpd=4, sDef=13, sAa=13, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['U-556'] = {
    index=488, rarity=4, cost=0, sp=5, type='SS', country='德国', class='U-556',
    hp=10, atk=3, tpd=22, def=9, aa=0, eva=18, acc=31, as=0, rec=13, speed=18, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=72, defMax=24, aaMax=0, evaMax=40, accMax=95, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=11, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['历战'] = {
    index=489, rarity=3, cost=0, sp=2, type='DD', country='苏联', class='45型1号舰',
    hp=18, atk=13, tpd=18, def=8, aa=22, eva=43, acc=31, as=24, rec=5, speed=42.2, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=68, defMax=23, aaMax=52, evaMax=89, accMax=88, asMax=60, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='S国双联130毫米炮', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=18, sDef=8, sAa=0, dFuel=14, dAmmo=10, dSteel=28, dBaux=0
}

ships['克劳塞维茨'] = {
    index=490, rarity=4, cost=2, sp=2, type='BC', country='德国', class='O级1号舰', skill='大洋袭击',
    hp=66, atk=58, tpd=10, def=51, aa=35, eva=30, acc=31, as=0, rec=13, speed=35, luck=6, range='长', size='大型舰/主力舰',
    atkMax=83, tpdMax=45, defMax=71, aaMax=65, evaMax=66, accMax=88, asMax=0, recMax=41,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=58, sTpd=0, sDef=54, sAa=18, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=85, coreType='战列', coreNum=25, mFuel=1200, mAmmo=500, mSteel=2300, mBaux=500
}

ships['夏伯阳'] = {
    index=491, rarity=4, cost=2, sp=2, type='CL', country='苏联', class='68-K型1号舰', 
    hp=36, atk=30, tpd=16, def=28, aa=50, eva=34, acc=36, as=30, rec=20, speed=33.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=60, tpdMax=56, defMax=48, aaMax=85, evaMax=64, accMax=92, asMax=70, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-5-1双联100毫米高炮', eq2='S国三联Б-38型152毫米炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=15, sTpd=16, sDef=14, sAa=44, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['壮丽'] = {
    index=492, rarity=4, cost=2, sp=2, type='CL', country='英国', class='米诺陶级3号舰',
    hp=35, atk=25, tpd=10, def=26, aa=48, eva=32, acc=37, as=35, rec=10, speed=31.5, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=50, defMax=46, aaMax=78, evaMax=65, accMax=94, asMax=75, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=17, sTpd=10, sDef=13, sAa=36, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['K-21'] = {
    index=493, rarity=4, cost=2, sp=4, type='SS', country='苏联', class='K-21',
    hp=12, atk=5, tpd=23, def=10, aa=0, eva=21, acc=32, as=0, rec=12, speed=22.5, luck=0, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=73, defMax=25, aaMax=0, evaMax=43, accMax=96, asMax=0, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.51, rTime=0.275, sAtk=0, sTpd=23, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['G6'] = {
    index=494, rarity=4, cost=2, sp=2, type='CV', country='日本', class='G6型1番舰', skill='联合阻击',
    hp=56, atk=0, tpd=0, def=35, aa=40, eva=37, acc=36, as=0, rec=48, speed=36, luck=6, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=70, evaMax=63, accMax=95, asMax=0, recMax=76,
    cap1=19, cap2=19, cap3=22, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻', eq2='无', eq3='无', eq4='无',
    sFuel=65, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=18, sAa=44, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['光荣(轻巡洋舰)'] = {
    index=495, rarity=3, cost=2, sp=2, type='CL', country='法国', class='拉加利索尼埃级5号舰',
    hp=32, atk=26, tpd=8, def=32, aa=39, eva=35, acc=33, as=32, rec=13, speed=35, luck=22, range='中', size='中型舰/护卫舰',
    atkMax=51, tpdMax=43, defMax=52, aaMax=69, evaMax=72, accMax=90, asMax=65, recMax=34,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=1, rSteel=1.9, rTime=0.7, sAtk=13, sTpd=8, sDef=16, sAa=23, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['诺福克(DL-1)'] = {
    index=496, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DL-1',
    hp=28, atk=15, tpd=23, def=15, aa=60, eva=35, acc=30, as=60, rec=24, speed=32, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=73, defMax=35, aaMax=90, evaMax=82, accMax=87, asMax=120, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型动力系统', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.375, sAtk=0, sTpd=23, sDef=15, sAa=30, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=70, coreType='驱逐', coreNum=15, mFuel=0, mAmmo=0, mSteel=0, mBaux=0
}

ships['U-441'] = {
    index=497, rarity=3, cost=2, sp=4, type='SS', country='德国', class='U-441',
    hp=10, atk=5, tpd=18, def=10, aa=0, eva=20, acc=31, as=0, rec=15, speed=18, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=68, defMax=25, aaMax=0, evaMax=46, accMax=95, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=18, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['复仇'] = {
    index=498, rarity=5, cost=2, sp=2, type='CV', country='美国', class='埃塞克斯级18号舰', skill='集中攻势',
    hp=60, atk=0, tpd=0, def=35, aa=66, eva=30, acc=37, as=0, rec=50, speed=33, luck=6, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=60, aaMax=96, evaMax=55, accMax=96, asMax=0, recMax=80,
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='F6F地狱猫', eq3='TBF复仇者', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.6, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=102, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['克里蒙梭'] = {
    index=499, rarity=5, cost=2, sp=5, type='BB', country='法国', class='黎塞留级3号舰', skill='集火攻击',
    hp=80, atk=78, tpd=0, def=82, aa=45, eva=29, acc=40, as=0, rec=13, speed=32, luck=7, range='长', size='大型舰/主力舰',
    atkMax=98, tpdMax=0, defMax=102, aaMax=75, evaMax=52, accMax=96, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国四联380毫米炮', eq2='F国四联380毫米炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1, sAtk=78, sTpd=0, sDef=82, sAa=32, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['伏尔铿'] = {
    index=500, rarity=3, cost=1, sp=2, type='DD', country='中国', class='伏尔铿级1号舰',
    hp=8, atk=5, tpd=10, def=5, aa=9, eva=40, acc=30, as=20, rec=5, speed=32, luck=5, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=60, defMax=20, aaMax=39, evaMax=85, accMax=87, asMax=53, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=10, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['拉弗雷'] = {
    index=501, rarity=3, cost=1, sp=2, type='DD', country='英国', class='L级1号舰',
    hp=17, atk=10, tpd=22, def=7, aa=26, eva=36, acc=30, as=28, rec=5, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=72, defMax=22, aaMax=57, evaMax=80, accMax=87, asMax=60, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=22, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['济南'] = {
    index=502, rarity=5, cost=5, sp=5, type='DDG', country='中国', class='051型1号舰', skill='海鹰巡弋', 
    hp=28, atk=15, tpd=1, def=10, aa=45, eva=34, acc=42, as=0, rec=20, speed=36, luck=19, range='短', size='小型舰/主力舰', 
    atkMax=40, tpdMax=1, defMax=25, aaMax=75, evaMax=82, accMax=101, asMax=0, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=60, rFuel=0.5, rSteel=1.3, rTime=0.65, sAtk=15, sTpd=1, sDef=10, sAa=54, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['T-23'] = {
    index=503, rarity=3, cost=2, sp=2, type='DD', country='德国', class='1939型2号舰', 
    hp=12, atk=6, tpd=16, def=6, aa=15, eva=36, tpd=16, acc=30, as=25, rec=5, speed=33.5, luck=24, range='短', size='小型舰/护卫舰', 
    atkMax=26, tpdMax=66, defMax=21, aaMax=45, evaMax=80, accMax=87, asMax=58, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.45, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=16, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=40, coreType='驱逐', coreNum=15, mFuel=500, mAmmo=500, mSteel=500, mBaux=0,
}


ships['费城'] = {
    index=504, rarity=4, cost=2, sp=2, type='CL', country='美国', class='布鲁克林级2号舰',
    hp=33, atk=32, tpd=0, def=27, aa=40, eva=31, acc=34, as=25, rec=12, speed=31.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=62, tpdMax=0, defMax=52, aaMax=80, evaMax=70, accMax=89, asMax=69, recMax=27,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=14, sAa=40, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['雉'] = {
    index=505, rarity=3, cost=1, sp=2, type='DD', country='日本', class='鸿型5番舰',
    hp=10, atk=6, tpd=13, def=4, aa=20, eva=39, acc=30, as=20, rec=5, speed=30.5, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=63, defMax=19, aaMax=50, evaMax=84, accMax=87, asMax=53, recMax=20,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.45, rSteel=0.8, rTime=0.35, sAtk=0, sTpd=16, sDef=4, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['1938(I)'] = {
    index=506, rarity=6, cost=5, sp=5, type='BB', country='美国', class='1938(I)级1号舰', skill='A级火力', 
    hp=84, atk=99, tpd=0, def=85, aa=47, eva=23, acc=38, as=0, rec=15, speed=27, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=124, tpdMax=0, defMax=105, aaMax=87, evaMax=45, accMax=94, asMax=0, recMax=48, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=125, sAmmo=185, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=99, sTpd=0, sDef=85, sAa=51, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['艾斯沃尔德'] = {
    index=507, rarity=3, cost=2, sp=2, type='BM', country='其他', class='艾斯沃尔德级1号舰', 
    hp=28, atk=19, tpd=0, def=43, aa=11, eva=13, acc=39, as=0, rec=9, speed=17.2, luck=10, range='中', size='小型舰/护卫舰', 
    atkMax=49, tpdMax=0, defMax=63, aaMax=41, evaMax=46, accMax=95, asMax=0, recMax=20, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.6, rSteel=1.2, rTime=0.45, sAtk=19, sTpd=0, sDef=43, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0, 
}

ships['安萨尔多'] = {
    index=508, rarity=4, cost=2, sp=2, type='CA', country='西班牙', class='安萨尔多级1号舰', 
    hp=52, atk=43, tpd=12, def=47, aa=32, eva=38, tpd=12, acc=35, as=0, rec=13, speed=37, luck=5, range='中', size='中型舰/护卫舰', 
    atkMax=68, tpdMax=47, defMax=62, aaMax=62, evaMax=74, accMax=91, asMax=0, recMax=30,  
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=45, sAmmo=75, rFuel=1.5, rSteel=2.6, rTime=0.9, sAtk=43, sTpd=6, sDef=24, sAa=16, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['谦逊'] = {
    index=509, rarity=4, cost=2, sp=2, type='DD', country='苏联', class='56型6号舰', 
    hp=24, atk=13, tpd=24, def=7, aa=50, eva=38, tpd=24, acc=30, as=38, rec=7, speed=38.5, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=33, tpdMax=74, defMax=22, aaMax=80, evaMax=82, accMax=87, asMax=71, recMax=19,  
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-2-1双联130毫米炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=7, sAa=14, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=60, coreType='驱逐', coreNum=12, mFuel=0, mAmmo=0, mSteel=2000, mBaux=2000,
}

ships['G14'] = {
    index=510, rarity=6, cost=2, sp=3, type='AV', country='日本', class='G14型1番舰', skill='海平面突袭', 
    hp=84, atk=0, tpd=0, def=55, aa=55, eva=32, tpd=0, acc=32, as=0, rec=40, speed=33, luck=5, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=90, aaMax=85, evaMax=54, accMax=85, asMax=0, recMax=67, 
    cap1=25, cap2=23, cap3=18, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='天河', eq2='景云改', eq3='流星', eq4='无',
    sFuel=100, sAmmo=110, rFuel=3.4, rSteel=5.9, rTime=1.15, sAtk=0, sTpd=0, sDef=28, sAa=74, dFuel=20, dAmmo=20, dSteel=40, dBaux=10, 
}

ships['德文郡'] = {
    index=511, rarity=4, cost=2, sp=2, type='CA', country='英国', class='伦敦级2号舰', 
    hp=50, atk=36, tpd=18, def=28, aa=40, eva=31, acc=35, as=0, rec=15, speed=31.5, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=55, tpdMax=53, defMax=41, aaMax=70, evaMax=75, accMax=91, asMax=0, recMax=53, 
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=40, sTpd=9, sDef=14, sAa=24, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['科伦坡'] = {
    index=512, rarity=3, cost=2, sp=2, type='CL', country='英国', class='卡莱尔级5号舰', 
    hp=24, atk=10, tpd=0, def=18, aa=45, eva=30, acc=34, as=35, rec=10, speed=29, luck=18, range='中', size='中型舰/护卫舰', 
    atkMax=35, tpdMax=0, defMax=38, aaMax=75, evaMax=68, accMax=92, asMax=68, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.4, rTime=0.425, sAtk=8, sTpd=0, sDef=9, sAa=32, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['勇猛'] = {
    index=513, rarity=5, cost=4, sp=4, type='CV', country='美国', class='埃塞克斯级3号舰', skill='战斗的“I”', 
    hp=60, atk=0, tpd=0, def=35, aa=67, eva=29, acc=37, as=0, rec=50, speed=33, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=60, aaMax=97, evaMax=51, accMax=96, asMax=0, recMax=77, 
    cap1=21, cap2=21, cap3=29, cap4=19, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F6F地狱猫', eq2='TBF复仇者', eq3='无', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=104, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['近江'] = {
    index=514, rarity=5, cost=5, sp=5, type='BB', country='日本', class='骏河型2番舰', skill='战列线决战', 
    hp=80, atk=102, tpd=0, def=76, aa=21, eva=28, acc=39, as=0, rec=15, speed=30, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=127, tpdMax=0, defMax=96, aaMax=51, evaMax=59, accMax=96, asMax=0, recMax=42, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='试制41厘米四联主炮（S）', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=185, rFuel=3.3, rSteel=6, rTime=1.0, sAtk=102, sTpd=0, sDef=76, sAa=11, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['伏罗希洛夫'] = {
    index=515, rarity=4, cost=2, sp=2, type='CL', country='苏联', class='26型2号舰', 
    hp=29, atk=30, tpd=10, def=26, aa=25, eva=33, acc=43, as=20, rec=10, speed=36, luck=20, range='长', size='中型舰/护卫舰', 
    atkMax=55, tpdMax=50, defMax=46, aaMax=55, evaMax=77, accMax=91, asMax=64, recMax=21, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联180毫米炮', eq2='Бе-4舰载侦察机', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=15, sTpd=10, sDef=13, sAa=13, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['日丹诺夫'] = {
    index=516, rarity=4, cost=2, sp=2, type='CL', country='苏联', class='68у型1号舰', 
    hp=36, atk=29, tpd=0, def=28, aa=70, eva=33, acc=36, as=35, rec=25, speed=32, luck=12, range='中', size='中型舰/护卫舰', 
    atkMax=59, tpdMax=0, defMax=48, aaMax=100, evaMax=66, accMax=92, asMax=79, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联Б-38型152毫米炮', eq2='Оса-М防空系统（68У）', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=45, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=15, sTpd=0, sDef=14, sAa=69, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
    modLv=50, coreType='巡洋', coreNum=12, mFuel=1000, mAmmo=2000, mSteel=2000, mBaux=0
}

ships['吕贝克'] = {
    index=517, rarity=4, cost=2, sp=2, type='DD', country='德国', class='科隆级5号舰', 
    hp=20, atk=12, tpd=16, def=8, aa=48, eva=40, acc=30, as=52, rec=20, speed=32, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=66, defMax=23, aaMax=78, evaMax=84, accMax=87, asMax=118, recMax=31, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.45, sAtk=0, sTpd=16, sDef=10, sAa=12, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
    modLv=70, coreType='驱逐', coreNum=12, mFuel=600, mAmmo=720, mSteel=680, mBaux=0 
}

ships['IIIA'] = {
    index=518, rarity=4, cost=4, sp=4, type='SS', country='德国', class='IIIA级1号舰', 
    hp=12, atk=4, tpd=20, def=11, aa=0, eva=18, acc=31, as=0, rec=16, speed=18, luck=5, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=70, defMax=26, aaMax=0, evaMax=40, accMax=95, asMax=0, recMax=50, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='袖珍舰载艇', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=0, sTpd=20, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['T.995'] = {
    index=519, rarity=3, cost=2, sp=2, type='DD', country='中国', class='T.995型1号舰', 
    hp=10, atk=5, tpd=16, def=6, aa=11, eva=38, acc=30, as=22, rec=5, speed=30, luck=5, range='短', size='小型舰/护卫舰', 
    atkMax=25, tpdMax=66, defMax=21, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.45, rSteel=0.8, rTime=0.3, sAtk=0, sTpd=16, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=45, coreType='驱逐', coreNum=10, mFuel=0, mAmmo=500, mSteel=1800, mBaux=0,
}

ships['蒙大拿'] = {
    index=520, rarity=6, cost=6, sp=6, type='BB', country='美国', class='BB-67', skill='舰队核心', 
    hp=104, atk=106, tpd=0, def=101, aa=74, eva=21, acc=42, as=0, rec=15, speed=28, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=131, tpdMax=0, defMax=121, aaMax=109, evaMax=43, accMax=103, asMax=0, recMax=48, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK7三联16英寸主炮（M）', eq2='无', eq3='无', eq4='无',
    sFuel=165, sAmmo=200, rFuel=4.9, rSteel=9.1, rTime=0.85, sAtk=106, sTpd=0, sDef=101, sAa=87, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['1913战巡'] = {
    index=521, rarity=5, cost=2, sp=2, type='BC', country='中国', class='1913型1号舰', skill='巨舰梦想', 
    hp=60, atk=64, tpd=0, def=54, aa=16, eva=32, acc=38, as=0, rec=13, speed=29, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=89, tpdMax=0, defMax=69, aaMax=46, evaMax=65, accMax=94, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=115, rFuel=2.8, rSteel=5.1, rTime=0.75, sAtk=64, sTpd=0, sDef=54, sAa=8, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['法戈'] = {
    index=522, rarity=4, cost=2, sp=4, type='CL', country='美国', class='CL-106', skill='新锐轻巡', 
    hp=36, atk=31, tpd=0, def=31, aa=69, eva=31, acc=34, as=35, rec=20, speed=32.5, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=61, tpdMax=0, defMax=56, aaMax=109, evaMax=64, accMax=91, asMax=79, recMax=58, 
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=16, sAa=85, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['亚拉巴马'] = {
    index=523, rarity=5, cost=5, sp=3, type='BB', country='美国', class='BB-60', skill='重炮火力',
    hp=75, atk=88, tpd=0, def=80, aa=67, eva=24, acc=38, as=0, rec=17, speed=27.5, luck=16, range='长', size='大型舰/主力舰', 
    atkMax=108, tpdMax=0, defMax=100, aaMax=97, evaMax=46, accMax=94, asMax=0, recMax=44, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=80, sAa=71, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['夏威夷'] = {
    index=524, rarity=5, cost=2, sp=3, type='BC', country='美国', class='阿拉斯加级3号舰', skill='巡洋压制', 
    hp=58, atk=60, tpd=0, def=54, aa=79, eva=31, acc=40, as=0, rec=20, speed=33, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=85, tpdMax=0, defMax=69, aaMax=109, evaMax=64, accMax=96, asMax=0, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联12英寸炮', eq2='U国双联5英寸平高两用炮', eq3='U国双联3英寸防空炮', eq4='无',
    sFuel=80, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.625, sAtk=60, sTpd=0, sDef=54, sAa=90, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['长波'] = {
    index=525, rarity=4, cost=2, sp=2, type='DD', country='日本', class='夕云型4番舰', 
    hp=16, atk=12, tpd=30, def=7, aa=11, eva=37, acc=30, as=21, rec=7, speed=35, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=80, defMax=22, aaMax=41, evaMax=81, accMax=87, asMax=54, recMax=18, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=33, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['朱诺(CL-119)'] = {
    index=526, rarity=4, cost=1, sp=2, type='CL', country='美国', class='朱诺级1号舰', 
    hp=28, atk=24, tpd=0, def=19, aa=75, eva=31, acc=33, as=50, rec=20, speed=32.7, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=54, tpdMax=0, defMax=44, aaMax=105, evaMax=72, accMax=90, asMax=94, recMax=31, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=12, sTpd=0, sDef=10, sAa=84, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['CNT巡洋舰'] = {
    index=527, rarity=4, cost=0, sp=2, type='CL', country='中国', class='CNT.68', 
    hp=28, atk=20, tpd=8, def=25, aa=10, eva=17, acc=34, as=20, rec=8, speed=28, luck=6, range='中', size='中型舰/护卫舰', 
    atkMax=45, tpdMax=43, defMax=45, aaMax=40, evaMax=61, accMax=91, asMax=64, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(中型)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.7, rSteel=1.3, rTime=0.55, sAtk=10, sTpd=8, sDef=13, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
    modLv=45, coreType='巡洋', coreNum=15, mFuel=2000, mAmmo=0, mSteel=2000, mBaux=0,
}

ships['芝加哥(CA-136)'] = {
    index=528, rarity=4, cost=2, sp=2, type='CA', country='美国', class='巴尔的摩级14号舰', 
    hp=52, atk=43, tpd=0, def=36, aa=76, eva=31, acc=37, as=0, rec=20, speed=33, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=68, tpdMax=0, defMax=56, aaMax=106, evaMax=75, accMax=93, asMax=0, recMax=58, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联3英寸防空炮', eq2='U国三联8英寸炮(MK12/15)', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=85, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
    modLv=83, coreType='巡洋', coreNum=24, mFuel=2000, mAmmo=2000, mSteel=2000, mBaux=2000,
}

ships['花信风'] = {
    index=529, rarity=5, cost=2, sp=2, type='DD', country='日本', class='岛风型2番舰', 
    hp=20, atk=10, tpd=45, def=7, aa=13, eva=50, acc=32, as=21, rec=8, speed=40, luck=5, range='短', size='小型舰/护卫舰', 
    atkMax=30, tpdMax=95, defMax=22, aaMax=43, evaMax=94, accMax=89, asMax=54, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米五连装鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=48, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['M-296'] = {
    index=530, rarity=4, cost=2, sp=4, type='SS', country='苏联', class='M-296', 
    hp=8, atk=3, tpd=17, def=10, aa=0, eva=30, acc=32, as=0, rec=12, speed=16, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=23, tpdMax=67, defMax=25, aaMax=0, evaMax=68, accMax=96, asMax=0, recMax=46, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.65, rTime=0.3, sAtk=0, sTpd=17, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
    modLv=65, coreType='潜艇', coreNum=12, mFuel=1200, mAmmo=800, mSteel=1200, mBaux=0
}

ships['墨尔波墨涅'] = {
    index=531, rarity=3, cost=2, sp=2, type='DD', country='法国', class='墨尔波墨涅级1号舰', 
    hp=8, atk=5, tpd=12, def=4, aa=19, eva=41, acc=38, as=25, rec=7, speed=34.5, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=25, tpdMax=62, defMax=19, aaMax=49, evaMax=85, accMax=82, asMax=58, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.45, rSteel=0.74, rTime=0.3, sAtk=0, sTpd=12, sDef=4, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['但丁'] = {
    index=532, rarity=4, cost=2, sp=2, type='BB', country='意大利', class='但丁级1号舰', skill='最初三联', 
    hp=52, atk=58, tpd=0, def=59, aa=18, eva=22, acc=39, as=0, rec=10, speed=22, luck=16, range='长', size='大型舰/主力舰', 
    atkMax=78, tpdMax=0, defMax=79, aaMax=48, evaMax=44, accMax=94, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联305毫米炮', eq2='标准型动力系统', eq3='无', eq4='无',
    sFuel=70, sAmmo=105, rFuel=2.25, rSteel=4.55, rTime=1.0, sAtk=58, sTpd=0, sDef=59, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=70, coreType='战列', coreNum=18, mFuel=1200, mAmmo=800, mSteel=1400, mBaux=0,
}

ships['格罗兹尼'] = {
    index=533, rarity=5, cost=5, sp=5, type='CG', country='苏联', class='58型巡洋舰1号舰', skill='光荣舰队', 
    hp=40, atk=37, tpd=0, def=20, aa=70, eva=32, acc=35, as=0, rec=35, speed=34.5, luck=19, range='中', size='中型舰/主力舰', 
    atkMax=62, tpdMax=0, defMax=40, aaMax=100, evaMax=74, accMax=95, asMax=0, recMax=62, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=10, msl2=10, msl3=10, msl4=10, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=120, rFuel=1.28, rSteel=2.1, rTime=0.625, sAtk=37, sTpd=0, sDef=10, sAa=69, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['24工程'] = {
    index=534, rarity=6, cost=6, sp=6, type='BB', country='苏联', class='24型1号舰', skill='旋转木马', 
    hp=112, atk=89, tpd=0, def=102, aa=76, eva=29, acc=40, as=0, rec=15, speed=30, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=114, tpdMax=0, defMax=122, aaMax=111, evaMax=51, accMax=96, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联406毫米炮', eq2='S国三联406毫米炮', eq3='无', eq4='无',
    sFuel=170, sAmmo=190, rFuel=5, rSteel=9.2, rTime=1.05, sAtk=89, sTpd=0, sDef=102, sAa=83, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['Z32'] = {
    index=535, rarity=3, cost=1, sp=2, type='DD', country='德国', class='1936AM型2号舰', 
    hp=22, atk=13, tpd=24, def=11, aa=13, eva=36, acc=30, as=22, rec=6, speed=36, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=33, tpdMax=74, defMax=26, aaMax=43, evaMax=80, accMax=87, asMax=55, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['卡伯特'] = {
    index=536, rarity=3, cost=2, sp=2, type='CVL', country='美国', class='独立级7号舰', 
    hp=36, atk=0, tpd=0, def=20, aa=45, eva=28, acc=33, as=0, rec=39, speed=31, luck=20, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=40, aaMax=65, evaMax=50, accMax=89, asMax=0, recMax=66, 
    cap1=10, cap2=15, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F4F野猫', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=50, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['波拉'] = {
    index=537, rarity=4, cost=2, sp=2, type='CA', country='意大利', class='扎拉级4号舰', 
    hp=46, atk=35, tpd=0, def=41, aa=24, eva=32, acc=35, as=0, rec=14, speed=32, luck=9, range='中', size='中型舰/护卫舰', 
    atkMax=60, tpdMax=0, defMax=61, aaMax=54, evaMax=70, accMax=91, asMax=0, recMax=52, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.8, sAtk=35, sTpd=0, sDef=21, sAa=12, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['伊-25'] = {
    index=538, rarity=3, cost=5, sp=5, type='SS', country='日本', class='巡潜乙型6番舰', 
    hp=16, atk=4, tpd=29, def=12, aa=0, eva=17, acc=31, as=0, rec=15, speed=23.6, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=74, defMax=27, aaMax=0, evaMax=39, accMax=91, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='53厘米氧气鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=0, sTpd=32, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
    modLv=60, coreType='潜艇', coreNum=10, mFuel=1000, mAmmo=0, mSteel=0, mBaux=1000,
}

ships['SKR-6'] = {
    index=539, rarity=3, cost=2, sp=2, type='DD', country='苏联', class='35型6号舰', 
    hp=12, atk=9, tpd=20, def=6, aa=52, eva=42, acc=30, as=53, rec=20, speed=34, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=29, tpdMax=70, defMax=21, aaMax=82, evaMax=86, accMax=87, asMax=97, recMax=34, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.55, rSteel=0.8, rTime=0.3, sAtk=0, sTpd=20, sDef=6, sAa=16, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['伊兹梅尔'] = {
    index=540, rarity=4, cost=4, sp=4, type='BC', country='苏联', class='伊兹梅尔级1号舰', skill='先锋突进', 
    hp=72, atk=87, tpd=0, def=58, aa=20, eva=31, acc=38, as=0, rec=13, speed=28.5, luck=8, range='长', size='大型舰/主力舰', 
    atkMax=107, tpdMax=0, defMax=83, aaMax=50, evaMax=64, accMax=94, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=115, rFuel=2.6, rSteel=4.8, rTime=1.0, sAtk=87, sTpd=0, sDef=58, sAa=10, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['火力'] = {
    index=541, rarity=4, cost=2, sp=2, type='DD', country='苏联', class='30型1号舰', 
    hp=20, atk=12, tpd=12, def=8, aa=29, eva=38, acc=42, as=24, rec=5, speed=37, luck=18, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=62, defMax=23, aaMax=59, evaMax=82, accMax=87, asMax=57, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国双联130毫米炮', eq2='三联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=12, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['卡律布狄斯'] = {
    index=542, rarity=3, cost=1, sp=2, type='CL', country='英国', class='黛朵级10号舰', 
    hp=28, atk=15, tpd=10, def=21, aa=43, eva=31, acc=35, as=40, rec=11, speed=32, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=40, tpdMax=50, defMax=46, aaMax=73, evaMax=72, accMax=92, asMax=84, recMax=22, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国八联40毫米砰砰炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.96, rSteel=1.7, rTime=0.5, sAtk=11, sTpd=10, sDef=11, sAa=29, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['Z2'] = {
    index=543, rarity=3, cost=1, sp=2, type='DD', country='德国', class='1934型2号舰', 
    hp=18, atk=8, tpd=24, def=8, aa=11, eva=38, acc=30, as=22, rec=6, speed=38.2, luck=11, range='短', size='小型舰/护卫舰', 
    atkMax=28, tpdMax=74, defMax=23, aaMax=41, evaMax=82, accMax=87, asMax=55, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['丛云'] = {
    index=544, rarity=3, cost=1, sp=2, type='DD', country='日本', class='吹雪型5番舰', 
    hp=15, atk=11, tpd=25, def=7, aa=7, eva=43, acc=30, as=16, rec=6, speed=37, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=31, tpdMax=75, defMax=22, aaMax=37, evaMax=87, accMax=87, asMax=49, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['威悉河'] = {
    index=545, rarity=4, cost=2, sp=2, type='CVL', country='德国', class='威悉河型1号舰', 
    hp=52, atk=0, tpd=0, def=32, aa=34, eva=30, acc=33, as=0, rec=40, speed=32, luck=7, range='短', size='中型舰/护卫舰', 
    atkMax=30, tpdMax=0, defMax=47, aaMax=64, evaMax=74, accMax=89, asMax=0, recMax=67, 
    cap1=8, cap2=7, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='BF109T', eq2='Ju-87C斯图卡', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=0, sTpd=0, sDef=19, sAa=34, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
    modLv=50, coreType='航母', coreNum=15, mFuel=1200, mAmmo=0, mSteel=1500, mBaux=1500,
}

ships['德意志(训练巡洋舰)'] = {
    index=546, rarity=4, cost=2, sp=2, type='CL', country='德国', class='德意志级一号舰', 
    hp=32, atk=18, tpd=16, def=12, aa=55, eva=25, acc=35, as=52, rec=20, speed=22, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=38, tpdMax=66, defMax=27, aaMax=85, evaMax=69, accMax=92, asMax=118, recMax=36, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.5, rSteel=1, rTime=0.55, sAtk=9, sTpd=16, sDef=8, sAa=47, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['勃艮第'] = {
    index=547, rarity=5, cost=5, sp=5, type='BB', country='法国', class='阿尔萨斯级4号舰', skill='主炮突刺', 
    hp=84, atk=90, tpd=0, def=84, aa=50, eva=29, acc=40, as=0, rec=13, speed=31, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=115, tpdMax=0, defMax=104, aaMax=80, evaMax=51, accMax=96, asMax=0, recMax=40, 
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(大型)', eq2='改良型动力系统', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8.2, rTime=1.05, sAtk=90, sTpd=0, sDef=84, sAa=39, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['龙凤'] = {
    index=548, rarity=4, cost=2, sp=3, type='CVL', country='日本', class='龙凤型1番舰', 
    hp=32, atk=0, tpd=0, def=17, aa=18, eva=30, acc=34, as=0, rec=36, speed=26.5, luck=16, range='短', size='中型舰/主力舰', 
    atkMax=20, tpdMax=0, defMax=37, aaMax=48, evaMax=52, accMax=90, asMax=0, recMax=63, 
    cap1=15, cap2=10, cap3=7, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九九式舰爆', eq2='九七式舰攻', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=9, sAa=18, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['岛风(峰风型驱逐舰)'] = {
    index=549, rarity=3, cost=1, sp=2, type='DD', country='日本', class='峰风型4番舰', 
    hp=12, atk=6, tpd=16, def=5, aa=8, eva=52, acc=30, as=16, rec=4, speed=40, luck=13, range='短', size='小型舰/护卫舰', 
    atkMax=26, tpdMax=66, defMax=20, aaMax=38, evaMax=96, accMax=87, asMax=49, recMax=15, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12厘米单装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.45, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=19, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['赫尔'] = {
    index=550, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DD-945', 
    hp=24, atk=17, tpd=7, def=10, aa=46, eva=38, acc=30, as=55, rec=20, speed=32.5, luck=15, range='中', size='小型舰/护卫舰', 
    atkMax=42, tpdMax=57, defMax=25, aaMax=76, evaMax=82, accMax=87, asMax=110, recMax=34, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.45, rSteel=1, rTime=0.35, sAtk=0, sTpd=7, sDef=10, sAa=16, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['本明'] = {
    index=551, rarity=4, cost=1, sp=2, type='CL', country='日本', class='改阿贺野型1番舰', 
    hp=28, atk=17, tpd=25, def=20, aa=27, eva=33, acc=34, as=20, rec=11, speed=37, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=47, tpdMax=60, defMax=45, aaMax=57, evaMax=72, accMax=89, asMax=47, recMax=22, 
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='J国15.2厘米连装炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=9, sTpd=28, sDef=10, sAa=14, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['絮弗伦'] = {
    index=552, rarity=5, cost=2, sp=2, type='DDGAA', country='法国', class='絮弗伦级1号舰', skill='三坐标定位', 
    hp=32, atk=10, tpd=0, def=10, aa=62, eva=36, acc=40, as=40, rec=25, speed=34, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=35, tpdMax=0, defMax=35, aaMax=92, evaMax=80, accMax=99, asMax=84, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=16, msl2=16, msl3=16, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=45, rFuel=0.7, rSteel=1.1, rTime=0.45, sAtk=10, sTpd=0, sDef=10, sAa=88, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['长田'] = {
    index=553, rarity=3, cost=1, sp=2, type='CL', country='日本', class='长田型1番舰', 
    hp=28, atk=24, tpd=0, def=18, aa=60, eva=31, acc=35, as=40, rec=12, speed=34, luck=5, range='中', size='中型舰/护卫舰', 
    atkMax=54, tpdMax=0, defMax=43, aaMax=100, evaMax=69, accMax=92, asMax=78, recMax=23, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='J国10厘米连装炮', eq3='J国10厘米连装炮', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.6, rTime=0.55, sAtk=12, sTpd=0, sDef=9, sAa=64, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['戈里齐亚'] = {
    index=554, rarity=4, cost=2, sp=2, type='CA', country='意大利', class='扎拉级3号舰', 
    hp=46, atk=35, tpd=0, def=41, aa=23, eva=32, acc=35, as=0, rec=14, speed=32, luck=13, range='中', size='中型舰/护卫舰', 
    atkMax=60, tpdMax=0, defMax=61, aaMax=53, evaMax=70, accMax=91, asMax=0, recMax=52, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(中型)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.8, sAtk=35, sTpd=0, sDef=21, sAa=12, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['玛丽女王'] = {
    index=555, rarity=3, cost=3, sp=2, type='BC', country='英国', class='玛丽女王级1号舰', 
    hp=60, atk=60, tpd=0, def=54, aa=15, eva=30, acc=38, as=0, rec=13, speed=28, luck=8, range='长', size='大型舰/主力舰', 
    atkMax=85, tpdMax=0, defMax=69, aaMax=45, evaMax=63, accMax=94, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=110, rFuel=2.8, rSteel=5.1, rTime=0.75, sAtk=65, sTpd=0, sDef=54, sAa=8, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['若月'] = {
    index=556, rarity=3, cost=1, sp=2, type='DD', country='日本', class='秋月型6番舰', 
    hp=19, atk=13, tpd=18, def=7, aa=28, eva=36, acc=30, as=23, rec=7, speed=33, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=33, tpdMax=68, defMax=22, aaMax=58, evaMax=80, accMax=87, asMax=56, recMax=18, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=21, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['初春'] = {
    index=557, rarity=3, cost=1, sp=2, type='DD', country='日本', class='初春型1番舰', 
    hp=15, atk=10, tpd=25, def=6, aa=10, eva=42, acc=30, as=23, rec=6, speed=38, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=30, tpdMax=75, defMax=21, aaMax=40, evaMax=86, accMax=87, asMax=56, recMax=18, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=6, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['芝加哥(CA-29)'] = {
    index=558, rarity=4, cost=2, sp=2, type='CA', country='美国', class='北安普敦级4号舰', 
    hp=45, atk=38, tpd=0, def=33, aa=37, eva=31, acc=35, as=0, rec=16, speed=32.5, luck=15, range='中', size='中型舰/护卫舰', 
    atkMax=63, tpdMax=0, defMax=53, aaMax=67, evaMax=75, accMax=91, asMax=0, recMax=54, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=17, sAa=25, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['不惧(防空导弹驱逐舰)'] = {
    index=559, rarity=5, cost=2, sp=2, type='DDGAA', country='意大利', class='不惧级1号舰', skill='先驱者', 
    hp=24, atk=17, tpd=0, def=10, aa=55, eva=32, acc=40, as=43, rec=23, speed=34, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=42, tpdMax=0, defMax=35, aaMax=85, evaMax=73, accMax=99, asMax=91, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=20, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=35, rFuel=0.9, rSteel=1.8, rTime=0.55, sAtk=17, sTpd=0, sDef=10, sAa=74, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['石勒苏益格-荷尔施泰因'] = {
    index=560, rarity=3, cost=2, sp=2, type='BM', country='德国', class='德意志级5号舰', 
    hp=48, atk=39, tpd=0, def=50, aa=25, eva=15, acc=39, as=0, rec=10, speed=18, luck=20, range='长', size='小型舰/护卫舰', 
    atkMax=69, tpdMax=0, defMax=70, aaMax=55, evaMax=48, accMax=95, asMax=0, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=40, sAmmo=60, rFuel=1.3, rSteel=1.1, rTime=0.55, sAtk=39, sTpd=0, sDef=53, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0, 
    modLv=70, coreType='战列', coreNum=15, mFuel=1000, mAmmo=600, mSteel=1000, mBaux=0,
}

ships['朱利奥·格马尼库斯'] = {
    index=561, rarity=5, cost=1, sp=2, type='CL', country='意大利', class='罗马统帅级1号舰', 
    hp=24, atk=18, tpd=24, def=12, aa=20, eva=47, acc=34, as=24, rec=10, speed=40, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=43, tpdMax=59, defMax=27, aaMax=50, evaMax=91, accMax=91, asMax=57, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联135毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.1, rTime=0.4, sAtk=9, sTpd=24, sDef=6, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['不屈'] = {
    index=562, rarity=4, cost=1, sp=2, type='BC', country='英国', class='无敌级2号舰', 
    hp=58, atk=49, tpd=0, def=40, aa=10, eva=27, acc=38, as=0, rec=10, speed=25.5, luck=9, range='长', size='大型舰/主力舰', 
    atkMax=74, tpdMax=0, defMax=55, aaMax=40, evaMax=49, accMax=94, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型动力系统', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=90, rFuel=2.8, rSteel=5.3, rTime=0.75, sAtk=53, sTpd=0, sDef=40, sAa=5, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['康沃尔'] = {
    index=563, rarity=3, cost=2, sp=2, type='CA', country='英国', class='肯特级3号舰', 
    hp=49, atk=34, tpd=10, def=25, aa=35, eva=30, acc=40, as=0, rec=14, speed=32.5, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=54, tpdMax=45, defMax=40, aaMax=65, evaMax=74, accMax=97, asMax=0, recMax=52, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=38, sTpd=5, sDef=13, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['Z60'] = {
    index=564, rarity=4, cost=1, sp=2, type='DD', country='德国', class='1945型2号舰', 
    hp=20, atk=14, tpd=24, def=12, aa=40, eva=38, acc=32, as=30, rec=6, speed=36, luck=6, range='短', size='小型舰/护卫舰', 
    atkMax=34, tpdMax=74, defMax=27, aaMax=70, evaMax=82, accMax=89, asMax=63, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联128毫米高平两用炮', eq2='四联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=14, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['塞瓦斯托波尔(战列巡洋舰)'] = {
    index=565, rarity=4, cost=2, sp=2, type='BC', country='苏联', class='69И型2号舰', skill='巡洋舰杀手',
    hp=68, atk=59, tpd=0, def=56, aa=34, eva=30, acc=40, as=0, rec=13, speed=33, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=84, tpdMax=0, defMax=76, aaMax=64, evaMax=65, accMax=96, asMax=0, recMax=40, 
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=110, rFuel=2.8, rSteel=5.8, rTime=0.75, sAtk=59, sTpd=0, sDef=56, sAa=17, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['风暴'] = {
    index=566, rarity=3, cost=2, sp=2, type='DD', country='波兰', class='风暴级1号舰', 
    hp=17, atk=8, tpd=20, def=7, aa=13, eva=37, acc=30, as=30, rec=5, speed=33.8, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=28, tpdMax=70, defMax=22, aaMax=43, evaMax=84, accMax=87, asMax=66, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.85, rTime=0.5, sAtk=0, sTpd=20, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['科芒斯曼特湾'] = {
    index=567, rarity=4, cost=2, sp=2, type='CVL', country='美国', class='科芒斯曼特湾级1号舰', 
    hp=40, atk=0, tpd=0, def=10, aa=42, eva=15, acc=33, as=0, rec=36, speed=19, luck=15, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=30, aaMax=72, evaMax=38, accMax=89, asMax=0, recMax=65, 
    cap1=12, cap2=12, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='TBF复仇者', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=40, rFuel=1.3, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=5, sAa=54, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['苏尔特元帅'] = {
    index=568, rarity=3, cost=2, sp=2, type='BM', country='英国', class='内伊元帅级2号舰', 
    hp=28, atk=24, tpd=0, def=34, aa=7, eva=11, acc=33, as=0, rec=7, speed=6, luck=19, range='长', size='小型舰/护卫舰', 
    atkMax=54, tpdMax=0, defMax=54, aaMax=37, evaMax=46, accMax=88, asMax=0, recMax=20, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=30, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=28, sTpd=0, sDef=34, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0, 
}

ships['布勃诺夫方案'] = {
    index=569, rarity=5, cost=2, sp=2, type='BB', country='苏联', class='布勃诺夫方案1号舰', skill='海啸',
    hp=72, atk=97, tpd=0, def=70, aa=10, eva=25, acc=40, as=0, rec=10, speed=25, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=122, tpdMax=0, defMax=90, aaMax=40, evaMax=47, accMax=96, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=180, rFuel=3.2, rSteel=6, rTime=1.05, sAtk=97, sTpd=0, sDef=70, sAa=5, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['千岁'] = {
    index=570, rarity=3, cost=2, sp=2, type='CVL', country='日本', class='千岁型1番舰', 
    hp=32, atk=0, tpd=0, def=15, aa=25, eva=30, acc=33, as=0, rec=37, speed=29, luck=10, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=35, aaMax=55, evaMax=54, accMax=89, asMax=0, recMax=67, 
    cap1=15, cap2=10, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=8, sAa=25, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['文森斯'] = {
    index=571, rarity=3, cost=2, sp=2, type='CA', country='美国', class='新奥尔良级7号舰', 
    hp=43, atk=38, tpd=0, def=32, aa=34, eva=31, acc=35, as=0, rec=15, speed=32.7, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=63, tpdMax=0, defMax=52, aaMax=64, evaMax=79, accMax=91, asMax=0, recMax=53, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=38, sTpd=0, sDef=16, sAa=22, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['骏河'] = {
    index=572, rarity=5, cost=5, sp=5, type='BB', country='日本', class='骏河型1番舰', skill='战列线中坚',
    hp=80, atk=103, tpd=0, def=76, aa=20, eva=28, acc=39, as=0, rec=15, speed=30, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=128, tpdMax=0, defMax=96, aaMax=50, evaMax=59, accMax=96, asMax=0, recMax=42, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国试制41厘米三连主炮', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=185, rFuel=3.3, rSteel=6, rTime=1.0, sAtk=103, sTpd=0, sDef=76, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['71工程'] = {
    index=573, rarity=4, cost=2, sp=2, type='CVL', country='苏联', class='71型1号舰', 
    hp=32, atk=0, tpd=0, def=17, aa=38, eva=33, acc=33, as=0, rec=36, speed=35, luck=5, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=37, aaMax=78, evaMax=55, accMax=89, asMax=0, recMax=63, 
    cap1=12, cap2=12, cap3=9, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=9, sAa=50, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['德克萨斯'] = {
    index=574, rarity=4, cost=2, sp=2, type='BB', country='美国', class='纽约级2号舰', 
    hp=64, atk=65, tpd=0, def=68, aa=55, eva=15, acc=38, as=0, rec=10, speed=21, luck=30, range='长', size='大型舰/主力舰', 
    atkMax=85, tpdMax=0, defMax=88, aaMax=85, evaMax=37, accMax=94, asMax=0, recMax=37, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国博福斯40毫米防空炮(四联)', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=65, sTpd=0, sDef=68, sAa=53, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['威武'] = {
    index=575, rarity=4, cost=2, sp=2, type='DD', country='苏联', class='56型14号舰', 
    hp=24, atk=13, tpd=20, def=7, aa=54, eva=38, acc=32, as=45, rec=7, speed=38.5, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=33, tpdMax=70, defMax=22, aaMax=84, evaMax=82, accMax=89, asMax=68, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-2-1双联130毫米炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=7, sAa=18, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=55, coreType='驱逐', coreNum=18, mFuel=2000, mAmmo=0, mSteel=0, mBaux=2000
}
ships['中途岛'] = {
    index=576, rarity=6, cost=6, sp=6, type='AV', country='美国', class='中途岛级1号舰', skill='舰队精锐',
    hp=92, atk=0, tpd=0, def=63, aa=76, eva=28, acc=35, as=0, rec=55, speed=30, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=83, aaMax=106, evaMax=50, accMax=88, asMax=0, recMax=85, 
    cap1=25, cap2=25, cap3=25, cap4=25, msl1=0, msl2=0, msl3=0, msl4=0, eq1='A-1H攻击机', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=150, rFuel=2.7, rSteel=4.9, rTime=0.9, sAtk=0, sTpd=0, sDef=32, sAa=123, dFuel=20, dAmmo=20, dSteel=40, dBaux=10, 
}

ships['水中仙女'] = {
    index=577, rarity=3, cost=1, sp=2, type='CL', country='英国', class='黛朵级3号舰', 
    hp=28, atk=22, tpd=10, def=21, aa=52, eva=31, acc=35, as=40, rec=11, speed=32, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=52, tpdMax=50, defMax=46, aaMax=92, evaMax=69, accMax=92, asMax=84, recMax=22, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联5.25英寸炮', eq2='标准型对空雷达', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.5, sAtk=15, sTpd=10, sDef=11, sAa=52, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['里维斯'] = {
    index=578, rarity=5, cost=4, sp=4, type='DDGAA', country='美国', class='莱希级9号舰', 
    hp=28, atk=16, tpd=0, def=12, aa=82, eva=32, acc=42, as=60, rec=28, speed=33, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=36, tpdMax=0, defMax=27, aaMax=112, evaMax=76, accMax=99, asMax=115, recMax=46, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=20, msl4=0, eq1='小猎犬导弹', eq2='MK-10导弹发射器', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=40, rFuel=1, rSteel=1.9, rTime=0.55, sAtk=16, sTpd=0, sDef=12, sAa=135, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['伊-201'] = {
    index=579, rarity=4, cost=4, sp=4, type='SS', country='日本', class='伊201型1番舰', 
    hp=12, atk=4, tpd=25, def=10, aa=0, eva=26, acc=31, as=0, rec=12, speed=19, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=75, defMax=25, aaMax=0, evaMax=53, accMax=91, asMax=0, recMax=51, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='53厘米氧气鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.3, sAtk=0, sTpd=28, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['特伦托'] = {
    index=580, rarity=3, cost=2, sp=2, type='CA', country='意大利', class='特伦托级1号舰', 
    hp=42, atk=35, tpd=10, def=30, aa=22, eva=34, acc=35, as=0, rec=13, speed=35, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=60, tpdMax=45, defMax=45, aaMax=52, evaMax=78, accMax=91, asMax=0, recMax=51, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联203毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.5, rTime=0.65, sAtk=35, sTpd=5, sDef=15, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['塞瓦斯托波尔(导弹巡洋舰)'] = {
    index=581, rarity=5, cost=5, sp=5, type='CG', country='苏联', class='1134型4号舰', skill='金雕展翅', 
    hp=48, atk=32, tpd=0, def=23, aa=78, eva=32, acc=35, as=0, rec=39, speed=34.5, luck=19, range='中', size='中型舰/主力舰', 
    atkMax=57, tpdMax=0, defMax=43, aaMax=108, evaMax=74, accMax=95, asMax=0, recMax=67, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=8, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=45, sAmmo=120, rFuel=1.3, rSteel=2.2, rTime=0.625, sAtk=32, sTpd=0, sDef=12, sAa=81, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['H43'] = {
    index=582, rarity=6, cost=6, sp=6, type='BB', country='德国', class='H43型1号舰', skill='末日狂想曲', 
    hp=136, atk=100, tpd=0, def=90, aa=45, eva=21, acc=41, as=0, rec=17, speed=30.9, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=125, tpdMax=0, defMax=110, aaMax=75, evaMax=43, accMax=97, asMax=0, recMax=44, 
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联480毫米主炮', eq2='无', eq3='无', eq4='无',
    sFuel=195, sAmmo=230, rFuel=6, rSteel=11, rTime=1.2, sAtk=100, sTpd=0, sDef=94, sAa=32, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['卡拉乔洛'] = {
    index=583, rarity=4, cost=2, sp=2, type='BB', country='意大利', class='卡拉乔洛级1号舰', 
    hp=68, atk=69, tpd=0, def=65, aa=20, eva=20, acc=40, as=0, rec=12, speed=28, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=89, tpdMax=0, defMax=85, aaMax=55, evaMax=44, accMax=100, asMax=0, recMax=39, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=1.0, sAtk=69, sTpd=0, sDef=65, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
    modLv=75, coreType='战列', coreNum=16, mFuel=1500, mAmmo=1500, mSteel=1600, mBaux=1600
}

ships['IVS轻巡洋舰'] = {
    index=584, rarity=3, cost=2, sp=2, type='CL', country='中国', class='IVS.177', 
    hp=32, atk=21, tpd=10, def=17, aa=17, eva=31, acc=34, as=26, rec=9, speed=32, luck=5, range='中', size='中型舰/护卫舰', 
    atkMax=46, tpdMax=50, defMax=37, aaMax=47, evaMax=69, accMax=91, asMax=70, recMax=20, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=11, sTpd=10, sDef=9, sAa=9, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['鳞鲀'] = {
    index=585, rarity=5, cost=6, sp=5, type='SS', country='美国', class='SS-237', 
    hp=12, atk=4, tpd=24, def=10, aa=0, eva=20, acc=32, as=0, rec=12, speed=21, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=74, defMax=25, aaMax=0, evaMax=42, accMax=96, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='21英寸鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.45, rTime=0.25, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['AIII'] = {
    index=586, rarity=6, cost=6, sp=6, type='BBV', country='德国', class='AIII航空战列舰', skill='破交',
    hp=120, atk=53, tpd=10, def=62, aa=36, eva=28, acc=41, as=0, rec=38, speed=34, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=78, tpdMax=45, defMax=82, aaMax=66, evaMax=50, accMax=97, asMax=0, recMax=65, 
    cap1=8, cap2=8, cap3=8, cap4=8, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='改良型动力系统', eq3='BF109T', eq4='Ju-87C斯图卡',
    sFuel=180, sAmmo=190, rFuel=5.5, rSteel=10, rTime=1.1, sAtk=27, sTpd=0, sDef=66, sAa=36, dFuel=50, dAmmo=60, dSteel=60, dBaux=10, 
}

ships['考彭斯'] = {
    index=587, rarity=3, cost=1, sp=2, type='CVL', country='美国', class='CVL-25', 
    hp=36, atk=0, tpd=0, def=20, aa=46, eva=32, acc=33, as=0, rec=39, speed=31.5, luck=20, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=40, aaMax=66, evaMax=54, accMax=89, asMax=0, recMax=66, 
    cap1=10, cap2=17, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F6F地狱猫', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=10, sAa=51, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['422'] = {
    index=588, rarity=5, cost=5, sp=5, type='SS', country='中国', class='C-53', 
    hp=12, atk=3, tpd=21, def=9, aa=0, eva=22, acc=32, as=0, rec=12, speed=19.5, luck=26, range='短', size='小型舰/护卫舰', 
    atkMax=23, tpdMax=71, defMax=24, aaMax=0, evaMax=44, accMax=96, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.51, rTime=0.275, sAtk=0, sTpd=21, sDef=9, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['休·W·哈德利'] = {
    index=589, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DD-774', 
    hp=22, atk=10, tpd=20, def=10, aa=32, eva=38, acc=31, as=32, rec=7, speed=38.5, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=30, tpdMax=70, defMax=30, aaMax=62, evaMax=83, accMax=88, asMax=65, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=10, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=45, coreType='驱逐', coreNum=9, mFuel=300, mAmmo=200, mSteel=1000, mBaux=100
}

ships['金伯恩'] = {
    index=590, rarity=4, cost=4, sp=4, type='BC', country='苏联', class='伊兹梅尔级3号舰', skill='先锋突破',
    hp=72, atk=85, tpd=0, def=62, aa=22, eva=31, acc=38, as=0, rec=13, speed=28.5, luck=8, range='长', size='大型舰/主力舰', 
    atkMax=105, tpdMax=0, defMax=87, aaMax=52, evaMax=64, accMax=94, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=115, rFuel=2.6, rSteel=4.8, rTime=1.0, sAtk=85, sTpd=0, sDef=62, sAa=11, dFuel=40, dAmmo=50, dSteel=40, dBaux=0,
    modLv=80, coreType='战列', coreNum=15, mFuel=1200, mAmmo=0, mSteel=1200, mBaux=0
}

ships['加尔各答'] = {
    index=591, rarity=3, cost=2, sp=2, type='CL', country='英国', class='卡莱尔级2号舰', 
    hp=24, atk=10, tpd=0, def=18, aa=42, eva=30, acc=34, as=35, rec=10, speed=29, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=35, tpdMax=0, defMax=38, aaMax=72, evaMax=68, accMax=92, asMax=68, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.4, rTime=0.425, sAtk=8, sTpd=0, sDef=9, sAa=27, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['豹'] = {
    index=592, rarity=3, cost=2, sp=2, type='DD', country='德国', class='猛兽级5号舰', 
    hp=12, atk=7, tpd=16, def=5, aa=15, eva=36, acc=30, as=25, rec=5, speed=33.5, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=27, tpdMax=66, defMax=20, aaMax=45, evaMax=80, accMax=87, asMax=58, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.45, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=16, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['夕雾'] = {
    index=593, rarity=3, cost=2, sp=2, type='DD', country='日本', class='绫波型4番舰', 
    hp=15, atk=11, tpd=25, def=7, aa=10, eva=43, acc=30, as=16, rec=6, speed=38, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=31, tpdMax=75, defMax=22, aaMax=40, evaMax=87, accMax=87, asMax=49, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['黄蜂(CV-18)'] = {
    index=594, rarity=5, cost=3, sp=4, type='CV', country='美国', class='埃塞克斯级10号舰', skill='蜇击',
    hp=60, atk=0, tpd=0, def=35, aa=60, eva=30, acc=37, as=0, rec=50, speed=33, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=60, aaMax=90, evaMax=52, accMax=96, asMax=0, recMax=77, 
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=90, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['东风'] = {
    index=595, rarity=3, cost=1, sp=2, type='CL', country='美国', class='风级2号舰', 
    hp=28, atk=10, tpd=0, def=21, aa=50, eva=16, acc=33, as=38, rec=10, speed=16.8, luck=19, range='中', size='中型舰/护卫舰', 
    atkMax=30, tpdMax=0, defMax=41, aaMax=80, evaMax=41, accMax=90, asMax=82, recMax=26, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.6, rSteel=0.9, rTime=0.375, sAtk=5, sTpd=0, sDef=11, sAa=45, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['九江'] = {
    index=596, rarity=4, cost=4, sp=4, type='DDG', country='中国', class='053H型1号舰', 
    hp=16, atk=12, tpd=0, def=7, aa=35, eva=32, acc=35, as=0, rec=15, speed=26, luck=25, range='短', size='小型舰/主力舰', 
    atkMax=37, tpdMax=0, defMax=22, aaMax=65, evaMax=85, accMax=95, asMax=0, recMax=31, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='上游-1发射器', eq2='上游-1导弹', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.35, sAtk=12, sTpd=0, sDef=7, sAa=35, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['海洋'] = {
    index=597, rarity=3, cost=2, sp=3, type='CVL', country='英国', class='巨像级3号舰', 
    hp=40, atk=0, tpd=0, def=18, aa=40, eva=22, acc=33, as=0, rec=38, speed=25, luck=15, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=38, aaMax=70, evaMax=44, accMax=89, asMax=0, recMax=65, 
    cap1=17, cap2=15, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海喷火MKXV', eq2='萤火虫', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=2, sTpd=0, sDef=9, sAa=44, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['梅雷迪斯'] = {
    index=598, rarity=3, cost=2, sp=2, type='DD', country='美国', class='DD-726', 
    hp=22, atk=10, tpd=20, def=10, aa=32, eva=38, acc=31, as=32, rec=7, speed=38.5, luck=8, range='短', size='小型舰/护卫舰', 
    atkMax=30, tpdMax=70, defMax=30, aaMax=62, evaMax=83, accMax=88, asMax=65, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=10, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['303'] = {
    index=599, rarity=5, cost=4, sp=4, type='SS', country='中国', class='长城107', 
    hp=16, atk=8, tpd=35, def=15, aa=0, eva=30, acc=32, as=0, rec=15, speed=15.2, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=28, tpdMax=85, defMax=30, aaMax=0, evaMax=57, accMax=96, asMax=0, recMax=51, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=0, sTpd=35, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['U-4501'] = {
    index=600, rarity=4, cost=5, sp=5, type='SS', country='德国', class='U-4501', 
    hp=12, atk=6, tpd=30, def=10, aa=0, eva=27, acc=33, as=0, rec=12, speed=24, luck=5, range='短', size='小型舰/护卫舰', 
    atkMax=26, tpdMax=80, defMax=25, aaMax=0, evaMax=52, accMax=97, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.55, rTime=0.3, sAtk=0, sTpd=30, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['351'] = {
    index=601, rarity=5, cost=6, sp=6, type='SSG', country='中国', class='远征2号', skill='大洋鹰击', 
    hp=16, atk=8, tpd=32, def=15, aa=0, eva=28, acc=32, as=0, rec=15, speed=15, luck=16, range='短', size='小型舰/主力舰', 
    atkMax=28, tpdMax=82, defMax=30, aaMax=0, evaMax=55, accMax=96, asMax=0, recMax=51, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=6, msl2=6, msl3=6, msl4=6, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=50, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=0, sTpd=32, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['密西西比'] = {
    index=602, rarity=4, cost=4, sp=4, type='BB', country='美国', class='新墨西哥级2号舰', skill='观测炮击',
    hp=72, atk=79, tpd=0, def=75, aa=59, eva=15, acc=38, as=0, rec=15, speed=21, luck=20, range='长', size='大型舰/主力舰', 
    atkMax=99, tpdMax=0, defMax=95, aaMax=89, evaMax=37, accMax=94, asMax=0, recMax=45, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国四联1.1英寸防空炮', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=79, sTpd=0, sDef=75, sAa=59, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['凯尔森'] = {
    index=603, rarity=3, cost=2, sp=2, type='DD', country='法国', class='沃克兰级2号舰', 
    hp=20, atk=12, tpd=22, def=5, aa=10, eva=40, acc=30, as=30, rec=6, speed=40, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=72, defMax=20, aaMax=40, evaMax=84, accMax=87, asMax=63, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='三联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=22, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['大胆'] = {
    index=604, rarity=3, cost=2, sp=2, type='CVL', country='英国', class='大胆级1号舰', 
    hp=32, atk=0, tpd=0, def=6, aa=29, eva=15, acc=33, as=5, rec=33, speed=15, luck=10, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=26, aaMax=59, evaMax=37, accMax=89, asMax=17, recMax=60, 
    cap1=8, cap2=8, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.28, rSteel=2.3, rTime=0.625, sAtk=2, sTpd=0, sDef=3, sAa=29, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['卡萨诺方案'] = {
    index=605, rarity=6, cost=6, sp=6, type='BC', country='意大利', class='卡萨诺第一方案', skill='时代幻想',
    hp=80, atk=91, tpd=10, def=86, aa=17, eva=31, acc=40, as=0, rec=13, speed=35, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=116, tpdMax=40, defMax=111, aaMax=47, evaMax=55, accMax=96, asMax=0, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=115, sAmmo=140, rFuel=3.3, rSteel=6.1, rTime=1.0, sAtk=91, sTpd=0, sDef=86, sAa=9, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['汉堡'] = {
    index=606, rarity=4, cost=2, sp=2, type='DD', country='德国', class='汉堡级1号舰', 
    hp=28, atk=18, tpd=18, def=11, aa=57, eva=39, acc=32, as=52, rec=20, speed=35, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=38, tpdMax=68, defMax=26, aaMax=87, evaMax=87, accMax=87, asMax=118, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=18, sDef=13, sAa=21, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=70, coreType='驱逐', coreNum=18, mFuel=1200, mAmmo=0, mSteel=1200, mBaux=1200
}

ships['航空兵'] = {
    index=607, rarity=4, cost=2, sp=2, type='DD', country='意大利', class='D554', 
    hp=16, atk=10, tpd=8, def=7, aa=45, eva=40, acc=31, as=45, rec=19, speed=35, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=30, tpdMax=38, defMax=22, aaMax=75, evaMax=88, accMax=88, asMax=111, recMax=35, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=8, sDef=7, sAa=9, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['支持者'] = {
    index=608, rarity=4, cost=4, sp=4, type='SS', country='英国', class='P37', 
    hp=8, atk=2, tpd=22, def=8, aa=0, eva=15, acc=31, as=0, rec=12, speed=11.25, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=22, tpdMax=72, defMax=23, aaMax=0, evaMax=39, accMax=91, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.55, rSteel=0.5, rTime=0.25, sAtk=2, sTpd=22, sDef=8, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['香格里拉'] = {
    index=609, rarity=5, cost=4, sp=4, type='CV', country='美国', class='埃塞克斯级21号舰', skill='香格里拉',
    hp=60, atk=0, tpd=0, def=35, aa=60, eva=30, acc=37, as=0, rec=50, speed=33, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=60, aaMax=90, evaMax=52, accMax=96, asMax=0, recMax=77, 
    cap1=18, cap2=18, cap3=36, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=90, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['激流'] = {
    index=610, rarity=3, cost=4, sp=4, type='SS', country='英国', class='N98', 
    hp=16, atk=5, tpd=28, def=13, aa=0, eva=17, acc=31, as=0, rec=12, speed=15.25, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=25, tpdMax=78, defMax=38, aaMax=0, evaMax=41, accMax=91, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=2, sTpd=28, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['迪盖·特鲁安'] = {
    index=611, rarity=3, cost=2, sp=2, type='CL', country='法国', class='迪盖·特鲁安级1号舰', 
    hp=30, atk=19, tpd=15, def=17, aa=23, eva=35, acc=30, as=22, rec=10, speed=33, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=44, tpdMax=55, defMax=37, aaMax=58, evaMax=72, accMax=87, asMax=56, recMax=21, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.6, rTime=0.5, sAtk=10, sTpd=15, sDef=9, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['巴格利'] = {
    index=612, rarity=3, cost=2, sp=2, type='DD', country='美国', class='DD-386', 
    hp=16, atk=9, tpd=28, def=6, aa=10, eva=48, acc=31, as=25, rec=6, speed=38.5, luck=24, range='短', size='小型舰/护卫舰', 
    atkMax=29, tpdMax=78, defMax=21, aaMax=40, evaMax=92, accMax=88, asMax=58, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米鱼雷', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=6, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['武藏'] = {
    index=613, rarity=6, cost=2, sp=6, type='BB', country='日本', class='大和型2番舰', skill='神前讨魔',
    hp=104, atk=101, tpd=0, def=100, aa=38, eva=24, acc=39, as=0, rec=16, speed=27.5, luck=10, range='长', size='大型舰/主力舰', 
    atkMax=126, tpdMax=0, defMax=120, aaMax=68, evaMax=44, accMax=96, asMax=0, recMax=45, 
    cap1=6, cap2=6, cap3=6, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九四式三联四十六厘米主炮（MU方位盘）', eq2='三式弹', eq3='J国15.5厘米三联主炮', eq4='无',
    sFuel=170, sAmmo=195, rFuel=6, rSteel=11, rTime=1.0, sAtk=101, sTpd=0, sDef=100, sAa=21, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['布列塔尼'] = {
    index=614, rarity=3, cost=2, sp=2, type='BB', country='法国', class='布列塔尼级1号舰', 
    hp=62, atk=63, tpd=0, def=63, aa=19, eva=15, acc=40, as=0, rec=10, speed=20, luck=7, range='长', size='大型舰/主力舰', 
    atkMax=83, tpdMax=0, defMax=83, aaMax=49, evaMax=33, accMax=100, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.2, rTime=0.8, sAtk=63, sTpd=0, sDef=63, sAa=10, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['冲锋'] = {
    index=615, rarity=4, cost=2, sp=2, type='DD', country='意大利', class='D558', 
    hp=24, atk=9, tpd=18, def=10, aa=46, eva=37, acc=31, as=32, rec=10, speed=34, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=29, tpdMax=68, defMax=30, aaMax=76, evaMax=82, accMax=88, asMax=65, recMax=22, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.45, sAtk=0, sTpd=18, sDef=10, sAa=10, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['狭雾'] = {
    index=616, rarity=3, cost=2, sp=2, type='DD', country='日本', class='绫波型6番舰', 
    hp=15, atk=11, tpd=25, def=7, aa=10, eva=43, acc=30, as=16, rec=6, speed=38, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=31, tpdMax=75, defMax=22, aaMax=40, evaMax=87, accMax=87, asMax=49, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['南京'] = {
    index=617, rarity=5, cost=2, sp=2, type='DDG', country='中国', class='051型4号舰', skill='荣耀巡礼',
    hp=28, atk=15, tpd=0, def=10, aa=46, eva=36, acc=42, as=0, rec=20, speed=37.95, luck=19, range='短', size='小型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=25, aaMax=76, evaMax=86, accMax=101, asMax=0, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=60, rFuel=0.5, rSteel=1.3, rTime=0.65, sAtk=15, sTpd=0, sDef=10, sAa=56, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['米切尔'] = {
    index=618, rarity=4, cost=2, sp=2, type='DD', country='美国', class='米切尔级1号舰', 
    hp=28, atk=15, tpd=21, def=15, aa=59, eva=37, acc=30, as=50, rec=24, speed=34, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=71, defMax=35, aaMax=89, evaMax=85, accMax=87, asMax=110, recMax=38, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.6, rSteel=1, rTime=0.4, sAtk=0, sTpd=21, sDef=15, sAa=29, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
    modLv=70, coreType='驱逐', coreNum=20, mFuel=300, mAmmo=600, mSteel=800, mBaux=1200
}

ships['罗斯福'] = {
    index=619, rarity=6, cost=2, sp=2, type='AV', country='美国', class='中途岛级2号舰', skill='地中海女王',
    hp=92, atk=0, tpd=0, def=63, aa=76, eva=28, acc=35, as=0, rec=55, speed=30, luck=20, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=83, aaMax=106, evaMax=50, accMax=88, asMax=0, recMax=85, 
    cap1=25, cap2=25, cap3=25, cap4=25, msl1=0, msl2=0, msl3=0, msl4=0, eq1='A-1H攻击机', eq2='无', eq3='无', eq4='无',
    sFuel=100, sAmmo=150, rFuel=2.7, rSteel=4.9, rTime=0.9, sAtk=0, sTpd=0, sDef=32, sAa=123, dFuel=20, dAmmo=20, dSteel=40, dBaux=10, 
}

ships['铁公爵'] = {
    index=620, rarity=4, cost=2, sp=2, type='BB', country='英国', class='铁公爵级1号舰', 
    hp=60, atk=65, tpd=0, def=69, aa=15, eva=16, acc=38, as=0, rec=11, speed=21, luck=15, range='长', size='大型舰/主力舰', 
    atkMax=90, tpdMax=0, defMax=89, aaMax=45, evaMax=40, accMax=94, asMax=0, recMax=38, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='标准型动力系统', eq3='无', eq4='无',
    sFuel=50, sAmmo=60, rFuel=2.5, rSteel=5.1, rTime=1.0, sAtk=70, sTpd=0, sDef=69, sAa=8, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['长矛'] = {
    index=621, rarity=4, cost=2, sp=2, type='DD', country='英国', class='L级2号舰', 
    hp=15, atk=12, tpd=20, def=8, aa=25, eva=36, acc=30, as=28, rec=5, speed=36, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=70, defMax=23, aaMax=55, evaMax=80, accMax=87, asMax=61, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['杜布雷'] = {
    index=622, rarity=4, cost=2, sp=2, type='CA', country='法国', class='絮弗伦级4号舰', 
    hp=42, atk=34, tpd=12, def=30, aa=33, eva=32, acc=36, as=0, rec=14, speed=32, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=59, tpdMax=42, defMax=50, aaMax=63, evaMax=70, accMax=92, asMax=0, recMax=52, 
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国双联M1931式203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=34, sTpd=6, sDef=15, sAa=17, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['鲁莽'] = {
    index=623, rarity=6, cost=5, sp=5, type='BB', country='英国', class='狮级2号舰', skill='无畏骑枪',
    hp=81, atk=85, tpd=0, def=80, aa=70, eva=28, acc=41, as=0, rec=15, speed=28.3, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=110, tpdMax=0, defMax=105, aaMax=100, evaMax=50, accMax=97, asMax=0, recMax=42, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国MK.III型三联16英寸炮', eq2='E国博福斯40毫米防空机炮(六联)', eq3='无', eq4='无',
    sFuel=125, sAmmo=175, rFuel=4.8, rSteel=9, rTime=1.0, sAtk=91, sTpd=0, sDef=80, sAa=69, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['堡垒'] = {
    index=624, rarity=3, cost=2, sp=2, type='CVL', country='英国', class='半人马级3号舰', 
    hp=48, atk=0, tpd=0, def=38, aa=56, eva=22, acc=33, as=0, rec=38, speed=28, luck=15, range='短', size='中型舰/护卫舰', 
    atkMax=30, tpdMax=0, defMax=63, aaMax=86, evaMax=44, accMax=89, asMax=0, recMax=69, 
    cap1=15, cap2=15, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='飞龙(装备)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=2, sTpd=0, sDef=19, sAa=76, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['卡萨尔'] = {
    index=625, rarity=3, cost=2, sp=2, type='DD', country='法国', class='沃克兰级3号舰', 
    hp=20, atk=12, tpd=22, def=5, aa=10, eva=40, acc=30, as=30, rec=6, speed=40, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=72, defMax=20, aaMax=40, evaMax=84, accMax=87, asMax=63, recMax=17, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='三联533毫米鱼雷', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=22, sDef=5, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['伊-17'] = {
    index=626, rarity=4, cost=5, sp=5, type='SS', country='日本', class='伊-15型2番舰', 
    hp=16, atk=7, tpd=29, def=12, aa=0, eva=26, acc=31, as=0, rec=12, speed=23.6, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=27, tpdMax=74, defMax=27, aaMax=0, evaMax=53, accMax=91, asMax=0, recMax=51, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='53厘米氧气鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.3, sAtk=0, sTpd=32, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['奥里斯坎尼'] = {
    index=627, rarity=5, cost=4, sp=4, type='CV', country='美国', class='埃塞克斯级17号舰', skill='先行试验',
    hp=64, atk=0, tpd=0, def=38, aa=65, eva=30, acc=37, as=0, rec=55, speed=33, luck=22, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=63, aaMax=95, evaMax=52, accMax=96, asMax=0, recMax=82,
    cap1=24, cap2=20, cap3=18, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=65, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=19, sAa=100, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
}

ships['长岛'] = {
    index=628, rarity=3, cost=2, sp=2, type='CVL', country='美国', class='长岛级1号舰',
    hp=32, atk=0, tpd=0, def=6, aa=30, eva=11, acc=33, as=0, rec=32, speed=16.5, luck=15, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=26, aaMax=60, evaMax=33, accMax=89, asMax=0, recMax=59,
    cap1=8, cap2=8, cap3=5, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F2A水牛', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.625, sAtk=0, sTpd=0, sDef=3, sAa=35, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
}

ships['桑加蒙'] = {
    index=629, rarity=4, cost=2, sp=2, type='CVL', country='美国', class='桑加蒙级1号舰',
    hp=40, atk=0, tpd=0, def=10, aa=40, eva=15, acc=34, as=0, rec=39, speed=18, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=20, tpdMax=0, defMax=30, aaMax=70, evaMax=37, accMax=90, asMax=0, recMax=67,
    cap1=10, cap2=12, cap3=9, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBF复仇者', eq3='F6F地狱猫', eq4='不可装备',
    sFuel=40, sAmmo=40, rFuel=1.3, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=5, sAa=49, dFuel=20, dAmmo=30, dSteel=50, dBaux=20,
}

ships['U-3008'] = {
    index=630, rarity=4, cost=6, sp=6, type='SS', country='德国', class='U-3008',
    hp=16, atk=6, tpd=28, def=11, aa=0, eva=25, acc=33, as=0, rec=12, speed=17.2, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=78, defMax=26, aaMax=0, evaMax=50, accMax=97, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.6, rTime=0.275, sAtk=0, sTpd=28, sDef=13, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
}

ships['Kw45'] = {
    index=631, rarity=5, cost=3, sp=3, type='BC', country='德国', class='Kw45型1号舰', skill='急速',
    hp=100, atk=74, tpd=12, def=62, aa=27, eva=36, acc=40, as=0, rec=16, speed=37.1, luck=3, range='长', size='大型舰/主力舰',
    atkMax=94, tpdMax=47, defMax=82, aaMax=57, evaMax=73, accMax=96, asMax=0, recMax=43,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='G国双联150毫米炮', eq3='AR-196水上侦察机', eq4='无',
    sFuel=125, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1.1, sAtk=74, sTpd=0, sDef=66, sAa=14, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
}

ships['海梅一世'] = {
    index=632, rarity=3, cost=2, sp=2, type='BB', country='西班牙', class='西班牙级3号舰',
    hp=53, atk=50, tpd=0, def=48, aa=18, eva=17, acc=38, as=0, rec=12, speed=19.5, luck=9, range='长', size='大型舰/主力舰',
    atkMax=75, tpdMax=0, defMax=68, aaMax=48, evaMax=39, accMax=96, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=40, sAmmo=90, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=50, sTpd=0, sDef=48, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
}

ships['S-49'] = {
    index=633, rarity=4, cost=4, sp=4, type='SS', country='苏联', class='633РВ型1号舰',
    hp=16, atk=8, tpd=40, def=15, aa=0, eva=28, acc=32, as=0, rec=15, speed=15.3, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=28, tpdMax=90, defMax=30, aaMax=0, evaMax=55, accMax=96, asMax=0, recMax=51,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.6, rSteel=0.6, rTime=0.3, sAtk=0, sTpd=40, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
}

ships['自豪'] = {
    index=634, rarity=4, cost=4, sp=4, type='DDG', country='苏联', class='57бис型8号舰',
    hp=26, atk=8, tpd=0, def=12, aa=46, eva=34, acc=38, as=0, rec=10, speed=34.5, luck=12, range='短', size='小型舰/主力舰',
    atkMax=36, tpdMax=0, defMax=27, aaMax=76, evaMax=72, accMax=97, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='“狗鱼”反舰导弹', eq2='СМ-59-1发射架', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=50, rFuel=0.48, rSteel=1.2, rTime=0.65, sAtk=8, sTpd=0, sDef=12, sAa=56, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
}

ships['10581工程'] = {
    index=635, rarity=6, cost=6, sp=6, type='BBV', country='苏联', class='10581型1号舰', skill='Атака！',
    hp=104, atk=98, tpd=0, def=75, aa=45, eva=29, acc=41, as=0, rec=33, speed=34, luck=5, range='长', size='大型舰/主力舰',
    atkMax=123, tpdMax=0, defMax=95, aaMax=75, evaMax=51, accMax=97, asMax=0, recMax=62,
    cap1=9, cap2=9, cap3=9, cap4=9, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=170, sAmmo=185, rFuel=4.8, rSteel=9.2, rTime=0.85, sAtk=49, sTpd=0, sDef=75, sAa=54, dFuel=50, dAmmo=60, dSteel=60, dBaux=10,
}

ships['活泼(导弹驱逐舰)'] = {
    index=636, rarity=4, cost=2, sp=4, type='DDG', country='苏联', class='57бис型6号舰',
    hp=26, atk=8, tpd=0, def=12, aa=46, eva=34, acc=38, as=0, rec=10, speed=34.5, luck=12, range='短', size='小型舰/主力舰',
    atkMax=36, tpdMax=0, defMax=27, aaMax=76, evaMax=72, accMax=97, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='“狗鱼”反舰导弹', eq2='СМ-59-1发射架', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=50, rFuel=0.48, rSteel=1.2, rTime=0.65, sAtk=8, sTpd=0, sDef=12, sAa=56, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
}

ships['伊-400'] = {
    index=637, rarity=5, cost=2, sp=5, type='SS', country='日本', class='潜特型1番舰',
    hp=36, atk=10, tpd=32, def=15, aa=0, eva=15, acc=31, as=0, rec=25, speed=18.7, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=30, tpdMax=82, defMax=30, aaMax=0, evaMax=37, accMax=91, asMax=0, recMax=58,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='“晴岚”攻击机（潜特）', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.85, rSteel=0.7, rTime=0.4, sAtk=0, sTpd=35, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
}

ships['虎(驱逐舰)'] = {
    index=638, rarity=3, cost=2, sp=2, type='DD', country='意大利', class='狮级3号舰',
    hp=18, atk=13, tpd=12, def=8, aa=15, eva=35, acc=31, as=25, rec=6, speed=35, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=33, tpdMax=62, defMax=23, aaMax=45, evaMax=79, accMax=88, asMax=58, recMax=17,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=12, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
}

ships['阿尔戈'] = {
    index=639, rarity=4, cost=4, sp=4, type='SS', country='法国', class='可畏级14号舰', 
    hp=12, atk=4, tpd=25, def=10, aa=0, eva=20, acc=30, as=0, rec=11, speed=20, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=75, defMax=25, aaMax=0, evaMax=42, accMax=90, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.3, sAtk=0, sTpd=25, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['考文垂'] = {
    index=640, rarity=5, cost=2, sp=2, type='DDGAA', country='英国', class='D118', skill='防空区域', 
    hp=28, atk=11, tpd=0, def=10, aa=59, eva=31, acc=40, as=50, rec=24, speed=30, luck=6, range='短', size='小型舰/护卫舰', 
    atkMax=31, tpdMax=0, defMax=25, aaMax=89, evaMax=69, accMax=99, asMax=94, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=20, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=40, rFuel=0.5, rSteel=1.1, rTime=0.5, sAtk=14, sTpd=0, sDef=10, sAa=82, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['21工程'] = {
    index=641, rarity=5, cost=5, sp=5, type='BB', country='苏联', class='21型1号舰', 
    hp=80, atk=86, tpd=0, def=72, aa=39, eva=30, acc=40, as=0, rec=11, speed=30, luck=8, range='长', size='大型舰/主力舰', 
    atkMax=111, tpdMax=0, defMax=92, aaMax=69, evaMax=52, accMax=96, asMax=0, recMax=40, 
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联406毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=115, sAmmo=165, rFuel=4.8, rSteel=9, rTime=1.0, sAtk=86, sTpd=0, sDef=72, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['圣洛'] = {
    index=642, rarity=4, cost=2, sp=2, type='CVL', country='美国', class='CVE-63', 
    hp=36, atk=0, tpd=0, def=7, aa=40, eva=15, acc=33, as=0, rec=38, speed=18, luck=15, range='短', size='中型舰/护卫舰', 
    atkMax=20, tpdMax=0, defMax=27, aaMax=70, evaMax=37, accMax=89, asMax=0, recMax=67, 
    cap1=15, cap2=10, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='FM-2', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=40, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=0, sTpd=0, sDef=4, sAa=49, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['活泼(驱逐舰)'] = {
    index=643, rarity=4, cost=2, sp=2, type='DD', country='英国', class='G40', 
    hp=15, atk=12, tpd=20, def=8, aa=25, eva=36, acc=38, as=28, rec=5, speed=36, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=70, defMax=23, aaMax=55, evaMax=80, accMax=87, asMax=61, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['伊丽莎白女王(CVA-01)'] = {
    index=644, rarity=6, cost=5, sp=5, type='CV', country='英国', class='CVA-01', 
    hp=88, atk=0, tpd=0, def=42, aa=80, eva=29, acc=32, as=0, rec=50, speed=30, luck=6, range='短', size='大型舰/主力舰', 
    atkMax=50, tpdMax=0, defMax=67, aaMax=110, evaMax=51, accMax=89, asMax=0, recMax=77, 
    cap1=20, cap2=20, cap3=18, cap4=17, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=75, rFuel=2.7, rSteel=4.8, rTime=0.85, sAtk=4, sTpd=0, sDef=21, sAa=124, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['U-103'] = {
    index=645, rarity=5, cost=4, sp=4, type='SS', country='德国', class='U-103', 
    hp=12, atk=4, tpd=22, def=10, aa=0, eva=18, acc=32, as=0, rec=12, speed=18, luck=9, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=72, defMax=25, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=45, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['阿蒂利奥·雷戈洛'] = {
    index=646, rarity=5, cost=2, sp=2, type='CL', country='意大利', class='罗马统帅级6号舰', 
    hp=24, atk=18, tpd=24, def=12, aa=20, eva=47, acc=34, as=24, rec=10, speed=40, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=43, tpdMax=59, defMax=27, aaMax=50, evaMax=91, accMax=91, asMax=57, recMax=21, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国双联135毫米主炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.1, rTime=0.4, sAtk=9, sTpd=24, sDef=6, sAa=10, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['矢矧'] = {
    index=647, rarity=4, cost=2, sp=2, type='CL', country='日本', class='阿贺野型3番舰', 
    hp=28, atk=17, tpd=25, def=20, aa=30, eva=33, acc=34, as=20, rec=11, speed=37, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=47, tpdMax=60, defMax=45, aaMax=60, evaMax=72, accMax=89, asMax=47, recMax=22, 
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装鱼雷', eq2='J国15.2厘米连装炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.9, rSteel=1.5, rTime=0.5, sAtk=9, sTpd=28, sDef=10, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}


ships['阿尔汉格尔斯克'] = {
    index=648, rarity=5, cost=4, sp=4, type='BB', country='苏联', class='R级4号舰', 
    hp=68, atk=72, tpd=0, def=68, aa=59, eva=15, acc=38, as=0, rec=12, speed=21, luck=15, range='长', size='大型舰/主力舰', 
    atkMax=92, tpdMax=0, defMax=88, aaMax=89, evaMax=37, accMax=94, asMax=0, recMax=39, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=1.0, sAtk=72, sTpd=0, sDef=68, sAa=53, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['U-177'] = {
    index=649, rarity=4, cost=5, sp=5, type='SS', country='德国', class='U-177', 
    hp=12, atk=4, tpd=22, def=10, aa=0, eva=18, acc=32, as=0, rec=15, speed=18, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=72, defMax=25, aaMax=0, evaMax=40, accMax=96, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米磁性鱼雷(潜艇)', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=22, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['马丁'] = {
    index=650, rarity=3, cost=2, sp=2, type='DD', country='英国', class='M级4号舰', 
    hp=15, atk=12, tpd=20, def=8, aa=27, eva=36, acc=30, as=28, rec=5, speed=36, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=70, defMax=23, aaMax=57, evaMax=80, accMax=87, asMax=61, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=20, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['卡萨比安卡'] = {
    index=651, rarity=4, cost=4, sp=4, type='SS', country='法国', class='可畏级31号舰', 
    hp=12, atk=4, tpd=25, def=10, aa=0, eva=20, acc=30, as=0, rec=11, speed=20, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=75, defMax=25, aaMax=0, evaMax=42, accMax=90, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.3, sAtk=0, sTpd=25, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['俄亥俄'] = {
    index=652, rarity=6, cost=6, sp=6, type='BB', country='美国', class='蒙大拿级2号舰', 
    hp=104, atk=106, tpd=0, def=101, aa=74, eva=21, acc=42, as=0, rec=15, speed=28, luck=5, range='长', size='大型舰/主力舰', 
    atkMax=131, tpdMax=0, defMax=121, aaMax=109, evaMax=43, accMax=103, asMax=0, recMax=48, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK7三联16英寸主炮（M）', eq2='无', eq3='无', eq4='无',
    sFuel=165, sAmmo=200, rFuel=4.9, rSteel=9.1, rTime=0.85, sAtk=106, sTpd=0, sDef=101, sAa=87, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['科西嘉人'] = {
    index=653, rarity=3, cost=2, sp=2, type='DD', country='法国', class='E50型1号舰', 
    hp=12, atk=8, tpd=22, def=6, aa=54, eva=40, acc=30, as=50, rec=15, speed=28, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=28, tpdMax=72, defMax=21, aaMax=84, evaMax=84, accMax=87, asMax=94, recMax=30, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='博福斯M1951双联57毫米高炮', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.55, rSteel=0.8, rTime=0.3, sAtk=0, sTpd=22, sDef=6, sAa=18, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['S-189'] = {
    index=654, rarity=5, cost=4, sp=4, type='SS', country='苏联', class='S-189', 
    hp=16, atk=9, tpd=33, def=15, aa=0, eva=30, acc=32, as=0, rec=15, speed=18, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=29, tpdMax=83, defMax=30, aaMax=0, evaMax=59, accMax=96, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.6, rSteel=0.65, rTime=0.3, sAtk=0, sTpd=33, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['水貂'] = {
    index=655, rarity=3, cost=5, sp=5, type='SS', country='芬兰', class='CV-707', 
    hp=8, atk=1, tpd=13, def=5, aa=0, eva=20, acc=31, as=0, rec=12, speed=13, luck=22, range='短', size='小型舰/护卫舰', 
    atkMax=21, tpdMax=63, defMax=20, aaMax=0, evaMax=44, accMax=95, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='不可装备', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.45, rSteel=0.4, rTime=0.25, sAtk=0, sTpd=13, sDef=5, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}
-------------------------------------------------------------

ships['胡德·改'] = {
    index=1001, rarity=6, cost=6, sp=6, type='BC', country='英国', class='海军上将级1号舰', skill='皇家海军的荣耀', skill2='皇家巡游',
    hp=80, atk=78, tpd=0, def=72, aa=55, eva=33, acc=45, as=0, rec=18, speed=32, luck=8, range='长', size='大型舰/主力舰',
    atkMax=103, tpdMax=0, defMax=87, aaMax=85, evaMax=68, accMax=102, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='附加装甲(大型)', eq3='E国三联15英寸炮(试作型)', eq4='“生姜&鱼饼”',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=83, sTpd=0, sDef=72, sAa=47, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['扶桑·改'] = {
    index=1002, rarity=4, cost=4, sp=3, type='BBV', country='日本', class='扶桑型1番舰', skill='柱岛舰队',
    hp=72, atk=68, tpd=0, def=64, aa=37, eva=27, acc=43, as=0, rec=20, speed=24, luck=9, range='长', size='大型舰/主力舰',
    atkMax=88, tpdMax=0, defMax=84, aaMax=67, evaMax=52, accMax=100, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=12, cap4=18, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国试制35.6厘米三联主炮', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=34, sTpd=0, sDef=64, sAa=38, dFuel=50, dAmmo=60, dSteel=60, dBaux=10
}

ships['山城·改'] = {
    index=1003, rarity=4, cost=4, sp=3, type='BB', country='日本', class='扶桑型2番舰', skill='柱岛舰队',
    hp=72, atk=87, tpd=0, def=64, aa=25, eva=24, acc=42, as=0, rec=10, speed=23, luck=9, range='长', size='大型舰/主力舰',
    atkMax=107, tpdMax=0, defMax=84, aaMax=50, evaMax=49, accMax=97, asMax=0, recMax=37,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国试制41厘米三连主炮', eq2='无', eq3='无', eq4='无',
    sFuel=85, sAmmo=135, rFuel=2.5, rSteel=5.2, rTime=1, sAtk=87, sTpd=0, sDef=64, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['伊势·改'] = {
    index=1004, rarity=4, cost=3, sp=3, type='BBV', country='日本', class='伊势型1番舰', skill='机群驱散B',
    hp=79, atk=67, tpd=0, def=67, aa=48, eva=28, acc=45, as=0, rec=20, speed=24.5, luck=15, range='长', size='大型舰/主力舰',
    atkMax=87, tpdMax=0, defMax=87, aaMax=78, evaMax=53, accMax=100, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=12, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='对空喷进炮', eq3='瑞云', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=34, sTpd=0, sDef=67, sAa=60, dFuel=50, dAmmo=60, dSteel=60, dBaux=10
}

ships['日向·改'] = {
    index=1005, rarity=4, cost=3, sp=3, type='BBV', country='日本', class='伊势型2番舰', skill='机群驱散T',
    hp=79, atk=67, tpd=0, def=67, aa=48, eva=28, acc=45, as=0, rec=20, speed=24.5, luck=15, range='长', size='大型舰/主力舰',
    atkMax=87, tpdMax=0, defMax=87, aaMax=78, evaMax=53, accMax=100, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=12, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国35.6厘米连装炮', eq2='对空喷进炮', eq3='瑞云', eq4='无',
    sFuel=85, sAmmo=120, rFuel=2.5, rSteel=5.1, rTime=1, sAtk=34, sTpd=0, sDef=67, sAa=60, dFuel=50, dAmmo=60, dSteel=60, dBaux=10
}

ships['俾斯麦·改'] = {
    index=1006, rarity=6, cost=4, sp=4, type='BB', country='德国', class='俾斯麦级1号舰', skill='旗舰杀手（俾斯麦）', skill2='永不沉没的战舰',
    hp=100, atk=82, tpd=0, def=80, aa=37, eva=30, acc=46, as=0, rec=22, speed=30.8, luck=18, range='长', size='大型舰/主力舰',
    atkMax=102, tpdMax=0, defMax=100, aaMax=67, evaMax=55, accMax=102, asMax=0, recMax=49,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联406毫米炮', eq2='G国双联37毫米防空炮', eq3='雷达告警装置', eq4='“奥斯卡”',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1, sAtk=82, sTpd=0, sDef=84, sAa=20, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['提尔比茨·改'] = {
    index=1007, rarity=6, cost=4, sp=4, type='BB', country='德国', class='俾斯麦级2号舰', skill='北方的孤独女王',
    hp=101, atk=82, tpd=10, def=80, aa=39, eva=30, acc=46, as=0, rec=22, speed=30, luck=16, range='长', size='大型舰/主力舰',
    atkMax=102, tpdMax=30, defMax=100, aaMax=69, evaMax=55, accMax=102, asMax=0, recMax=49,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联406毫米炮', eq2='四联533毫米磁性鱼雷', eq3='G国双联37毫米防空炮', eq4='联络电台',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1, sAtk=82, sTpd=0, sDef=84, sAa=23, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['纳尔逊·改'] = {
    index=1008, rarity=5, cost=4, sp=4, type='BB', country='英国', class='纳尔逊级1号舰', skill='BIG SEVEN',
    hp=77, atk=89, tpd=0, def=82, aa=47, eva=23, acc=45, as=0, rec=16, speed=23.5, luck=20, range='长', size='大型舰/主力舰',
    atkMax=109, tpdMax=0, defMax=102, aaMax=77, evaMax=48, accMax=101, asMax=0, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮(改)', eq2='标准型火控雷达', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=3.2, rSteel=6, rTime=1, sAtk=95, sTpd=0, sDef=82, sAa=35, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['罗德尼·改'] = {
    index=1009, rarity=5, cost=4, sp=4, type='BB', country='英国', class='纳尔逊级2号舰', skill='BIG SEVEN', skill2='复仇',
    hp=76, atk=89, tpd=0, def=82, aa=47, eva=23, acc=45, as=0, rec=16, speed=23.5, luck=20, range='长', size='大型舰/主力舰',
    atkMax=109, tpdMax=0, defMax=102, aaMax=77, evaMax=48, accMax=101, asMax=0, recMax=43,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮(改)', eq2='海象式', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=3.2, rSteel=6, rTime=1, sAtk=95, sTpd=0, sDef=82, sAa=35, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['威尔士亲王·改'] = {
    index=1010, rarity=6, cost=3, sp=3, type='BB', country='英国', class='英王乔治五世级2号舰', skill='大西洋宪章', skill2='关键一击',
    hp=79, atk=80, tpd=0, def=80, aa=62, eva=30, acc=46, as=0, rec=18, speed=29, luck=10, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=100, aaMax=92, evaMax=55, accMax=102, asMax=0, recMax=45,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国四联14英寸炮', eq2='E国八联40毫米砰砰炮', eq3='标准型火控雷达', eq4='无',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=85, sTpd=0, sDef=80, sAa=57, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['内华达·改'] = {
    index=1011, rarity=4, cost=2, sp=2, type='BB', country='美国', class='内华达级1号舰', skill='重点防御',
    hp=72, atk=70, tpd=0, def=73, aa=67, eva=19, acc=44, as=0, rec=15, speed=21, luck=30, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=93, aaMax=97, evaMax=44, accMax=100, asMax=0, recMax=42,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国双联5英寸平高两用炮', eq3='U国博福斯40毫米防空炮(四联)', eq4='U国厄利孔20毫米炮(双联)',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=70, sTpd=0, sDef=73, sAa=71, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['俄克拉荷马·改'] = {
    index=1012, rarity=4, cost=2, sp=2, type='BB', country='美国', class='内华达级2号舰', skill='重点防御',
    hp=72, atk=70, tpd=0, def=73, aa=67, eva=19, acc=44, as=0, rec=15, speed=21, luck=10, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=93, aaMax=97, evaMax=44, accMax=100, asMax=0, recMax=42,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮', eq2='U国双联5英寸平高两用炮', eq3='U国博福斯40毫米防空炮(四联)', eq4='U国厄利孔20毫米炮(双联)',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=70, sTpd=0, sDef=73, sAa=71, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['安德烈亚·多利亚·改'] = {
    index=1013, rarity=6, cost=3, sp=3, type='BB', country='意大利', class='安德烈亚·多利亚级1号舰', skill='幸运之星',
    hp=64, atk=64, tpd=0, def=64, aa=35, eva=30, acc=46, as=0, rec=13, speed=27, luck=20, range='长', size='大型舰/主力舰',
    atkMax=89, tpdMax=0, defMax=89, aaMax=70, evaMax=63, accMax=102, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联320毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.25, rSteel=4.55, rTime=1, sAtk=64, sTpd=0, sDef=64, sAa=22, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['金刚·改'] = {
    index=1014, rarity=4, cost=4, sp=3, type='BB', country='日本', class='金刚型1番舰', skill='高速战舰',
    hp=68, atk=71, tpd=0, def=58, aa=37, eva=37, acc=44, as=0, rec=18, speed=30.3, luck=15, range='长', size='大型舰/主力舰',
    atkMax=96, tpdMax=0, defMax=73, aaMax=67, evaMax=72, accMax=100, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='91式穿甲弹', eq2='三式弹', eq3='无', eq4='无',
    sFuel=80, sAmmo=110, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=71, sTpd=0, sDef=58, sAa=20, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['声望·改'] = {
    index=1018, rarity=5, cost=3, sp=3, type='BC', country='英国', class='声望级1号舰', skill='最后的荣耀', skill2='29节的纳尔逊',
    hp=70, atk=63, tpd=0, def=60, aa=62, eva=36, acc=44, as=0, rec=17, speed=31.5, luck=35, range='长', size='大型舰/主力舰',
    atkMax=93, tpdMax=0, defMax=80, aaMax=97, evaMax=71, accMax=101, asMax=0, recMax=44,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='E国4.5英寸连装高炮', eq3='无', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=68, sTpd=0, sDef=60, sAa=62, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['反击·改'] = {
    index=1019, rarity=4, cost=2, sp=3, type='BC', country='英国', class='声望级2号舰', skill='马来日暮',
    hp=70, atk=63, tpd=0, def=63, aa=45, eva=39, acc=43, as=0, rec=14, speed=31.5, luck=12, range='长', size='大型舰/主力舰',
    atkMax=88, tpdMax=0, defMax=78, aaMax=75, evaMax=74, accMax=100, asMax=0, recMax=41,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='E国八联40毫米砰砰炮', eq3='无', eq4='无',
    sFuel=70, sAmmo=120, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=68, sTpd=0, sDef=63, sAa=32, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['阿拉斯加·改'] = {
    index=1020, rarity=6, cost=5, sp=5, type='CBG', country='美国', class='阿拉斯加级1号舰', skill='先锋',
    hp=63, atk=60, tpd=0, def=58, aa=80, eva=37, acc=45, as=0, rec=28, speed=33, luck=15, range='长', size='大型舰/主力舰',
    atkMax=90, tpdMax=0, defMax=73, aaMax=110, evaMax=72, accMax=102, asMax=0, recMax=55,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=12, msl2=12, msl3=12, msl4=12, eq1='黄铜骑士防空导弹', eq2='MK12导弹发射系统', eq3='无', eq4='无',
    sFuel=85, sAmmo=135, rFuel=2.9, rSteel=5.6, rTime=0.625, sAtk=60, sTpd=0, sDef=58, sAa=91, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['关岛·改'] = {
    index=1021, rarity=6, cost=5, sp=5, type='CBG', country='美国', class='阿拉斯加级2号舰', skill='舰队防御伞',
    hp=63, atk=65, tpd=0, def=57, aa=75, eva=37, acc=45, as=0, rec=28, speed=33, luck=15, range='长', size='大型舰/主力舰',
    atkMax=95, tpdMax=0, defMax=72, aaMax=105, evaMax=72, accMax=102, asMax=0, recMax=55,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=12, msl2=12, msl3=12, msl4=12, eq1='小猎犬导弹', eq2='MK-10导弹发射器', eq3='U国双联3英寸防空炮', eq4='无',
    sFuel=85, sAmmo=140, rFuel=2.88, rSteel=5.6, rTime=0.625, sAtk=65, sTpd=0, sDef=57, sAa=84, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['赤城·改'] = {
    index=1022, rarity=6, cost=6, sp=6, type='CV', country='日本', class='赤城型1番舰', skill='奇袭', skill2='命运的五分钟',
    hp=79, atk=0, tpd=0, def=36, aa=32, eva=35, acc=41, as=0, rec=50, speed=31.2, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=61, aaMax=62, evaMax=57, accMax=102, asMax=0, recMax=77,
    cap1=20, cap2=20, cap3=36, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻（80番）', eq2='烈风', eq3='无', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=18, sAa=32, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['加贺·改'] = {
    index=1023, rarity=6, cost=4, sp=5, type='CV', country='日本', class='加贺型1番舰', skill='舰攻队出击', skill2='机动部队',
    hp=81, atk=0, tpd=0, def=38, aa=37, eva=32, acc=41, as=0, rec=48, speed=28, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=68, aaMax=67, evaMax=56, accMax=102, asMax=0, recMax=75,
    cap1=22, cap2=18, cap3=40, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='烈风', eq2='九七式舰攻（80番）', eq3='无', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.56, rSteel=4.8, rTime=1, sAtk=0, sTpd=0, sDef=19, sAa=38, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['祥凤·改'] = {
    index=1024, rarity=5, cost=3, sp=4, type='CVL', country='日本', class='祥凤型1番舰', skill='战队直卫',
    hp=47, atk=0, tpd=0, def=30, aa=23, eva=38, acc=38, as=0, rec=36, speed=29, luck=10, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=50, aaMax=53, evaMax=61, accMax=96, asMax=0, recMax=63,
    cap1=17, cap2=13, cap3=9, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战二一型', eq2='彗星', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=15, sAa=23, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['瑞凤·改'] = {
    index=1025, rarity=5, cost=3, sp=4, type='CVL', country='日本', class='祥凤型2番舰', skill='直卫空母',
    hp=47, atk=0, tpd=0, def=33, aa=28, eva=38, acc=38, as=0, rec=36, speed=29, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=53, aaMax=58, evaMax=61, accMax=96, asMax=0, recMax=63,
    cap1=18, cap2=13, cap3=6, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='彗星', eq2='零战62型', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=17, sAa=28, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['百眼巨人·改'] = {
    index=1026, rarity=4, cost=1, sp=2, type='CVL', country='英国', class='百眼巨人级1号舰', skill='航空战曙光',
    hp=38, atk=0, tpd=0, def=15, aa=33, eva=24, acc=37, as=0, rec=40, speed=20.7, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=25, tpdMax=0, defMax=35, aaMax=63, evaMax=47, accMax=95, asMax=0, recMax=78,
    cap1=8, cap2=12, cap3=8, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海喷火', eq2='梭鱼', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.75, sAtk=2, sTpd=0, sDef=8, sAa=33, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['兰利·改'] = {
    index=1027, rarity=4, cost=1, sp=2, type='CVL', country='美国', class='兰利级1号舰', skill='航母先驱',
    hp=39, atk=0, tpd=0, def=16, aa=42, eva=19, acc=37, as=0, rec=42, speed=15, luck=20, range='短', size='中型舰/护卫舰',
    atkMax=25, tpdMax=0, defMax=36, aaMax=72, evaMax=42, accMax=95, asMax=0, recMax=80,
    cap1=15, cap2=10, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='FM-2', eq2='TBF复仇者', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.96, rSteel=1.8, rTime=0.625, sAtk=0, sTpd=0, sDef=8, sAa=54, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['突击者·改'] = {
    index=1028, rarity=4, cost=3, sp=5, type='CV', country='美国', class='突击者级1号舰', skill='弹药整备',
    hp=48, atk=0, tpd=0, def=28, aa=35, eva=43, acc=39, as=0, rec=50, speed=29.2, luck=25, range='短', size='大型舰/主力舰',
    atkMax=30, tpdMax=0, defMax=48, aaMax=65, evaMax=76, accMax=100, asMax=0, recMax=88,
    cap1=15, cap2=20, cap3=25, cap4=5, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国厄利孔20毫米炮(双联)', eq2='改良型对空雷达', eq3='无', eq4='无',
    sFuel=45, sAmmo=50, rFuel=1.68, rSteel=3.2, rTime=0.7, sAtk=0, sTpd=0, sDef=14, sAa=40, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['列克星敦(CV-2)·改'] = {
    index=1029, rarity=5, cost=4, sp=5, type='CV', country='美国', class='列克星敦级1号舰', skill='航空战术先驱',
    hp=73, atk=0, tpd=0, def=49, aa=47, eva=36, acc=40, as=0, rec=52, speed=33.2, luck=20, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=74, aaMax=77, evaMax=58, accMax=101, asMax=0, recMax=90,
    cap1=20, cap2=20, cap3=35, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国四联1.1英寸防空炮', eq2='改良型对空雷达', eq3='无', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=25, sAa=64, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['萨拉托加·改'] = {
    index=1030, rarity=5, cost=5, sp=5, type='CV', country='美国', class='列克星敦级2号舰', skill='航空战术先驱', skill2='罗宾',
    hp=73, atk=0, tpd=0, def=49, aa=60, eva=36, acc=40, as=0, rec=52, speed=33.2, luck=32, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=74, aaMax=90, evaMax=58, accMax=101, asMax=0, recMax=90,
    cap1=20, cap2=20, cap3=35, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SB2C地狱俯冲者', eq2='改良型对空雷达', eq3='无', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=25, sAa=90, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['大黄蜂·改'] = {
    index=1031, rarity=5, cost=6, sp=5, type='CV', country='美国', class='约克城级3号舰', skill='远洋破袭',
    hp=60, atk=0, tpd=0, def=36, aa=50, eva=36, acc=40, as=0, rec=38, speed=32.5, luck=12, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=66, aaMax=80, evaMax=60, accMax=101, asMax=0, recMax=68,
    cap1=15, cap2=25, cap3=36, cap4=11, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBF复仇者', eq3='F4F野猫', eq4='无',
    sFuel=55, sAmmo=70, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=18, sAa=70, dFuel=30, dAmmo=40, dSteel=60, dBaux=40,
}

ships['高雄·改'] = {
    index=1032, rarity=4, cost=3, sp=3, type='CA', country='日本', class='高雄型1番舰', skill='鱼雷再次装填',
    hp=55, atk=45, tpd=32, def=38, aa=28, eva=43, acc=40, as=0, rec=20, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=70, tpdMax=72, defMax=53, aaMax=58, evaMax=89, accMax=97, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='零式水上侦察机', eq3='61厘米四连装氧气鱼雷', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=45, sTpd=19, sDef=19, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['爱宕·改'] = {
    index=1033, rarity=4, cost=3, sp=3, type='CA', country='日本', class='高雄型2番舰', skill='夜战旗舰',
    hp=55, atk=45, tpd=32, def=38, aa=28, eva=43, acc=40, as=0, rec=20, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=70, tpdMax=72, defMax=53, aaMax=58, evaMax=89, accMax=97, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='零式水上侦察机', eq3='61厘米四连装氧气鱼雷', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=45, sTpd=19, sDef=19, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['摩耶·改'] = {
    index=1034, rarity=4, cost=3, sp=3, type='CA', country='日本', class='高雄型3番舰', skill='洋上的对空要塞',
    hp=55, atk=43, tpd=32, def=37, aa=37, eva=43, acc=40, as=0, rec=20, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=68, tpdMax=72, defMax=52, aaMax=67, evaMax=89, accMax=97, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='61厘米四连装氧气鱼雷', eq3='J国12.7厘米连装高射炮', eq4='改良型对空雷达',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=43, sTpd=19, sDef=19, sAa=20, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['鸟海·改'] = {
    index=1035, rarity=4, cost=3, sp=3, type='CA', country='日本', class='高雄型4番舰', skill='第八舰队',
    hp=55, atk=45, tpd=32, def=38, aa=25, eva=43, acc=40, as=0, rec=20, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=70, tpdMax=72, defMax=53, aaMax=55, evaMax=89, accMax=97, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='零式水上侦察机', eq3='61厘米四连装氧气鱼雷', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=45, sTpd=19, sDef=19, sAa=13, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['希佩尔海军上将·改'] = {
    index=1036, rarity=4, cost=3, sp=3, type='CA', country='德国', class='希佩尔海军上将级1号舰', skill='伪装奇袭',
    hp=61, atk=44, tpd=25, def=35, aa=27, eva=36, acc=40, as=0, rec=27, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=69, tpdMax=65, defMax=50, aaMax=57, evaMax=82, accMax=97, asMax=0, recMax=65,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='G国双联37毫米防空炮', eq3='无', eq4='无',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=44, sTpd=13, sDef=21, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['布吕歇尔(重巡洋舰)·改'] = {
    index=1037, rarity=4, cost=3, sp=3, type='CA', country='德国', class='希佩尔海军上将级2号舰', skill='迷之自信',
    hp=62, atk=41, tpd=25, def=37, aa=27, eva=41, acc=40, as=0, rec=24, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=66, tpdMax=65, defMax=52, aaMax=57, evaMax=87, accMax=97, asMax=0, recMax=62,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='铁锚', eq3='无', eq4='无',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=41, sTpd=13, sDef=22, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['欧根亲王·改'] = {
    index=1038, rarity=6, cost=3, sp=4, type='CA', country='德国', class='希佩尔海军上将级3号舰', skill='战线防御', skill2='不死鸟',
    hp=69, atk=36, tpd=20, def=45, aa=35, eva=36, acc=42, as=0, rec=24, speed=32, luck=35, range='中', size='中型舰/护卫舰',
    atkMax=61, tpdMax=55, defMax=70, aaMax=65, evaMax=82, accMax=99, asMax=0, recMax=68,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='附加装甲(中型)', eq3='无', eq4='无',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=36, sTpd=10, sDef=26, sAa=18, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['威奇塔·改'] = {
    index=1039, rarity=5, cost=3, sp=4, type='CA', country='美国', class='威奇塔级1号舰', skill='火力全开',
    hp=46, atk=43, tpd=0, def=32, aa=53, eva=37, acc=42, as=0, rec=24, speed=33, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=78, tpdMax=0, defMax=52, aaMax=93, evaMax=83, accMax=98, asMax=0, recMax=62,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮(MK12/15)', eq2='超重弹', eq3='无', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=16, sAa=60, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['昆西·改'] = {
    index=1040, rarity=4, cost=2, sp=3, type='CA', country='美国', class='新奥尔良级6号舰', skill='高速射击', skill2='旗舰杀手（昆西）',
    hp=58, atk=43, tpd=0, def=36, aa=50, eva=37, acc=41, as=0, rec=25, speed=32.7, luck=12, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=56, aaMax=80, evaMax=83, accMax=97, asMax=0, recMax=63,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国博福斯40毫米防空炮(双联)', eq3='U国博福斯40毫米防空炮(四联)', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=45, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['天龙·改'] = {
    index=1041, rarity=3, cost=1, sp=2, type='CL', country='日本', class='天龙型1番舰', skill='远征护航',
    hp=38, atk=16, tpd=28, def=12, aa=23, eva=46, acc=36, as=28, rec=10, speed=33, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=73, defMax=32, aaMax=53, evaMax=85, accMax=95, asMax=72, recMax=32,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='J国12.7厘米连装高射炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=20, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=31, sDef=6, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['龙田·改'] = {
    index=1042, rarity=3, cost=1, sp=2, type='CL', country='日本', class='天龙型2番舰', skill='远征护卫',
    hp=38, atk=16, tpd=28, def=12, aa=23, eva=46, acc=36, as=28, rec=10, speed=33, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=46, tpdMax=73, defMax=32, aaMax=53, evaMax=85, accMax=95, asMax=72, recMax=32,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=20, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=8, sTpd=31, sDef=6, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['北上·改'] = {
    index=1043, rarity=5, cost=3, sp=3, type='CLT', country='日本', class='球磨型3番舰', skill='重雷装舰突袭', skill2='渐减雷击',
    hp=35, atk=16, tpd=60, def=13, aa=25, eva=40, acc=38, as=2, rec=10, speed=36, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=36, tpdMax=120, defMax=33, aaMax=55, evaMax=78, accMax=97, asMax=2, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装高射炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=100, rFuel=0.8, rSteel=1.5, rTime=0.75, sAtk=16, sTpd=94, sDef=7, sAa=0, dFuel=40, dAmmo=36, dSteel=50, dBaux=0
}

ships['大井·改'] = {
    index=1044, rarity=5, cost=3, sp=3, type='CLT', country='日本', class='球磨型4番舰', skill='重雷装舰突袭', skill2='渐减雷击',
    hp=35, atk=16, tpd=60, def=13, aa=25, eva=40, acc=38, as=2, rec=10, speed=36, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=36, tpdMax=120, defMax=33, aaMax=55, evaMax=78, accMax=97, asMax=2, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装高射炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=100, rFuel=0.8, rSteel=1.5, rTime=0.75, sAtk=16, sTpd=94, sDef=7, sAa=0, dFuel=40, dAmmo=36, dSteel=50, dBaux=0
}

ships['五十铃·改'] = {
    index=1045, rarity=4, cost=2, sp=3, type='CL', country='日本', class='长良型2番舰', skill='空潜一体',
    hp=40, atk=18, tpd=35, def=13, aa=38, eva=48, acc=37, as=50, rec=12, speed=36, luck=12, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=80, defMax=33, aaMax=68, evaMax=87, accMax=96, asMax=94, recMax=34,
    cap1=1, cap2=1, cap3=1, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装高射炮', eq2='61厘米四连装氧气鱼雷', eq3='标准型对空雷达', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=9, sTpd=38, sDef=7, sAa=21, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['夕张·改'] = {
    index=1046, rarity=5, cost=2, sp=3, type='CL', country='日本', class='夕张型1番舰', skill='实验平台',
    hp=34, atk=22, tpd=30, def=15, aa=25, eva=60, acc=38, as=33, rec=16, speed=35.5, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=75, defMax=35, aaMax=55, evaMax=98, accMax=97, asMax=66, recMax=38,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国14厘米单装炮', eq2='改良型动力系统', eq3='无', eq4='无',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=11, sTpd=33, sDef=8, sAa=13, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['柯尼斯堡·改'] = {
    index=1047, rarity=4, cost=2, sp=2, type='CL', country='德国', class='柯尼斯堡级1号舰', skill='破交袭击',
    hp=48, atk=28, tpd=25, def=22, aa=30, eva=39, acc=37, as=30, rec=11, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=70, defMax=42, aaMax=60, evaMax=78, accMax=96, asMax=74, recMax=33,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='雷达告警装置', eq3='柴油机', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=14, sTpd=25, sDef=13, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['卡尔斯鲁厄·改'] = {
    index=1048, rarity=4, cost=2, sp=2, type='CL', country='德国', class='柯尼斯堡级2号舰', skill='破交袭击',
    hp=48, atk=28, tpd=25, def=22, aa=30, eva=39, acc=37, as=30, rec=11, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=70, defMax=42, aaMax=60, evaMax=78, accMax=96, asMax=74, recMax=33,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='雷达告警装置', eq3='柴油机', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=14, sTpd=25, sDef=13, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['科隆·改'] = {
    index=1049, rarity=4, cost=2, sp=2, type='CL', country='德国', class='柯尼斯堡级3号舰', skill='破交袭击',
    hp=48, atk=28, tpd=25, def=22, aa=33, eva=39, acc=37, as=33, rec=12, speed=32.5, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=70, defMax=42, aaMax=63, evaMax=78, accMax=96, asMax=77, recMax=34,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='FI-265', eq3='柴油机', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=14, sTpd=25, sDef=13, sAa=17, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['天狼星·改'] = {
    index=1050, rarity=6, cost=3, sp=3, type='CL', country='英国', class='黛朵级8号舰', skill='多面手巡洋舰',
    hp=40, atk=32, tpd=20, def=26, aa=70, eva=41, acc=39, as=55, rec=18, speed=32, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=67, tpdMax=65, defMax=51, aaMax=110, evaMax=81, accMax=98, asMax=110, recMax=29,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='275火控雷达', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=1, rSteel=1.9, rTime=0.55, sAtk=20, sTpd=20, sDef=13, sAa=79, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['重庆'] = {
    index=1054, rarity=4, cost=2, sp=3, type='CL', country='中国', class='林仙级4号舰', skill='防空伪装',
    hp=39, atk=19, tpd=15, def=22, aa=36, eva=38, acc=37, as=28, rec=14, speed=32, luck=21, range='中', size='中型舰/护卫舰',
    atkMax=49, tpdMax=60, defMax=42, aaMax=66, evaMax=77, accMax=96, asMax=83, recMax=36,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=10, sTpd=15, sDef=11, sAa=18, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['奥马哈·改'] = {
    index=1055, rarity=3, cost=1, sp=2, type='CL', country='美国', class='奥马哈级1号舰', skill='大洋巡逻',
    hp=43, atk=28, tpd=18, def=18, aa=40, eva=40, acc=36, as=28, rec=12, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=63, defMax=38, aaMax=70, evaMax=79, accMax=95, asMax=72, recMax=29,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='标准型火控雷达', eq2='U国博福斯40毫米防空炮(双联)', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=14, sTpd=18, sDef=9, sAa=29, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['亚特兰大·改'] = {
    index=1056, rarity=4, cost=2, sp=2, type='CL', country='美国', class='亚特兰大级1号舰', skill='对空防御',
    hp=42, atk=32, tpd=0, def=24, aa=75, eva=39, acc=38, as=50, rec=18, speed=33.6, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=67, tpdMax=0, defMax=49, aaMax=105, evaMax=78, accMax=96, asMax=105, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='改良型火控雷达', eq3='先进型对空雷达', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=12, sAa=84, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['朱诺(CL-52)·改'] = {
    index=1057, rarity=4, cost=3, sp=3, type='CL', country='美国', class='亚特兰大级2号舰', skill='高速弹幕',
    hp=42, atk=34, tpd=18, def=24, aa=70, eva=39, acc=38, as=50, rec=18, speed=33.6, luck=9, range='中', size='中型舰/护卫舰',
    atkMax=69, tpdMax=53, defMax=49, aaMax=100, evaMax=78, accMax=96, asMax=105, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=17, sTpd=18, sDef=12, sAa=76, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['奥希金斯'] = {
    index=1058, rarity=4, cost=2, sp=2, type='CL', country='undefined', class='布鲁克林级1号舰', skill='高速射击',
    hp=48, atk=36, tpd=0, def=30, aa=47, eva=39, acc=38, as=25, rec=17, speed=31.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=71, tpdMax=0, defMax=55, aaMax=77, evaMax=78, accMax=96, asMax=80, recMax=39,
    cap1=4, cap2=4, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='标准型对海雷达', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=18, sTpd=0, sDef=15, sAa=35, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['海伦娜·改'] = {
    index=1059, rarity=5, cost=3, sp=4, type='CL', country='美国', class='布鲁克林级9号舰', skill='情报分析', skill2='六英寸机关炮',
    hp=48, atk=36, tpd=0, def=32, aa=55, eva=39, acc=39, as=25, rec=22, speed=31.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=71, tpdMax=0, defMax=57, aaMax=85, evaMax=78, accMax=97, asMax=80, recMax=55,
    cap1=4, cap2=4, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联6英寸炮', eq2='改良型对海雷达', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=18, sTpd=0, sDef=16, sAa=53, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['宁海·改'] = {
    index=1060, rarity=5, cost=1, sp=2, type='CL', country='中国', class='宁海级1号舰', skill='舰队训练',
    hp=35, atk=18, tpd=21, def=19, aa=24, eva=32, acc=38, as=20, rec=13, speed=23.2, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=66, defMax=39, aaMax=54, evaMax=71, accMax=97, asMax=75, recMax=35,
    cap1=1, cap2=1, cap3=1, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国双联140毫米炮', eq2='“宁海号”舰载机', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=9, sTpd=21, sDef=10, sAa=12, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['平海·改'] = {
    index=1061, rarity=5, cost=1, sp=2, type='CL', country='中国', class='宁海级2号舰', skill='目标指示',
    hp=35, atk=18, tpd=21, def=19, aa=10, eva=30, acc=38, as=20, rec=13, speed=21.3, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=48, tpdMax=66, defMax=39, aaMax=40, evaMax=69, accMax=97, asMax=75, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='C国双联140毫米炮', eq2='射击钟', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=9, sTpd=21, sDef=10, sAa=5, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['罗伯茨·改'] = {
    index=1062, rarity=4, cost=1, sp=2, type='BM', country='英国', class='罗伯茨级1号舰', skill='火力支援',
    hp=48, atk=46, tpd=0, def=42, aa=29, eva=16, acc=37, as=0, rec=12, speed=12.2, luck=20, range='长', size='小型舰/护卫舰',
    atkMax=76, tpdMax=0, defMax=62, aaMax=59, evaMax=51, accMax=93, asMax=0, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='E国八联40毫米砰砰炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=51, sTpd=0, sDef=42, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['阿贝克隆比·改'] = {
    index=1063, rarity=4, cost=1, sp=2, type='BM', country='英国', class='罗伯茨级2号舰', skill='火力支援',
    hp=48, atk=46, tpd=0, def=42, aa=29, eva=16, acc=37, as=0, rec=12, speed=12.2, luck=18, range='长', size='小型舰/护卫舰',
    atkMax=76, tpdMax=0, defMax=62, aaMax=59, evaMax=51, accMax=93, asMax=0, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='E国八联40毫米砰砰炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=51, sTpd=0, sDef=42, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0
}

ships['吹雪·改'] = {
    index=1064, rarity=4, cost=3, sp=5, type='DD', country='日本', class='吹雪型1番舰', skill='水雷战队', skill2='孤注一掷',
    hp=30, atk=12, tpd=36, def=12, aa=16, eva=53, acc=33, as=20, rec=7, speed=37, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=37, aaMax=46, evaMax=97, accMax=93, asMax=64, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['白雪·改'] = {
    index=1065, rarity=3, cost=2, sp=2, type='DD', country='日本', class='吹雪型2番舰', skill='羁绊',
    hp=30, atk=12, tpd=36, def=12, aa=16, eva=53, acc=32, as=20, rec=7, speed=37, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=37, aaMax=46, evaMax=97, accMax=92, asMax=64, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['初雪·改'] = {
    index=1066, rarity=3, cost=3, sp=3, type='DD', country='日本', class='吹雪型3番舰', skill='零距炮击',
    hp=30, atk=12, tpd=36, def=12, aa=16, eva=53, acc=32, as=20, rec=7, speed=37, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=37, aaMax=46, evaMax=97, accMax=92, asMax=64, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['深雪·改'] = {
    index=1067, rarity=3, cost=3, sp=4, type='DD', country='日本', class='吹雪型4番舰', skill='水雷强袭',
    hp=30, atk=12, tpd=36, def=12, aa=16, eva=48, acc=32, as=20, rec=7, speed=37, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=37, aaMax=46, evaMax=92, accMax=92, asMax=64, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['晓·改'] = {
    index=1068, rarity=4, cost=2, sp=2, type='DD', country='日本', class='晓型1番舰', skill='强行侦查',
    hp=30, atk=12, tpd=36, def=13, aa=13, eva=53, acc=33, as=25, rec=7, speed=38, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=38, aaMax=43, evaMax=97, accMax=93, asMax=69, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['信赖'] = {
    index=1069, rarity=4, cost=3, sp=3, type='DD', country='苏联', class='晓型2番舰', skill='不死鸟的守护',
    hp=35, atk=13, tpd=25, def=15, aa=18, eva=53, acc=33, as=30, rec=6, speed=38, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=80, defMax=40, aaMax=48, evaMax=97, accMax=93, asMax=74, recMax=33,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国双联130毫米炮', eq2='S国BMB型深弹炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=25, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['雷·改'] = {
    index=1070, rarity=4, cost=2, sp=2, type='DD', country='日本', class='晓型3番舰', skill='水雷魂',
    hp=30, atk=12, tpd=36, def=13, aa=13, eva=53, acc=33, as=25, rec=7, speed=38, luck=12, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=38, aaMax=43, evaMax=97, accMax=93, asMax=69, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['电·改'] = {
    index=1071, rarity=4, cost=3, sp=3, type='DD', country='日本', class='晓型4番舰', skill='无意撞击',
    hp=30, atk=12, tpd=36, def=13, aa=13, eva=53, acc=33, as=25, rec=7, speed=38, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=38, aaMax=43, evaMax=97, accMax=93, asMax=69, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['绫波·改'] = {
    index=1072, rarity=4, cost=5, sp=5, type='DD', country='日本', class='绫波型1番舰', skill='所罗门的鬼神',
    hp=30, atk=15, tpd=40, def=13, aa=18, eva=53, acc=33, as=20, rec=8, speed=38, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=95, defMax=38, aaMax=48, evaMax=97, accMax=93, asMax=64, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=43, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['敷波·改'] = {
    index=1073, rarity=3, cost=2, sp=3, type='DD', country='日本', class='绫波型2番舰', skill='水雷魂',
    hp=30, atk=12, tpd=36, def=13, aa=18, eva=53, acc=32, as=20, rec=7, speed=38, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=91, defMax=38, aaMax=48, evaMax=97, accMax=92, asMax=64, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国12.7厘米连装炮', eq2='61厘米三连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=39, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z1·改'] = {
    index=1074, rarity=4, cost=2, sp=2, type='DD', country='德国', class='1934型1号舰', skill='Z驱领舰',
    hp=38, atk=13, tpd=24, def=15, aa=16, eva=48, acc=33, as=22, rec=8, speed=38.2, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=79, defMax=40, aaMax=46, evaMax=92, accMax=93, asMax=66, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米磁性鱼雷', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=17, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z16·改'] = {
    index=1075, rarity=4, cost=2, sp=3, type='DD', country='德国', class='1934A型11号舰', skill='水雷布置', skill2='连环爆破',
    hp=38, atk=13, tpd=24, def=15, aa=16, eva=48, acc=33, as=22, rec=6, speed=38.2, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=79, defMax=40, aaMax=46, evaMax=92, accMax=93, asMax=66, recMax=33,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米磁性鱼雷', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=17, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z21·改'] = {
    index=1076, rarity=3, cost=3, sp=3, type='DD', country='德国', class='1936型5号舰', skill='突袭',
    hp=40, atk=15, tpd=26, def=16, aa=15, eva=48, acc=33, as=22, rec=8, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=81, defMax=41, aaMax=45, evaMax=92, accMax=93, asMax=66, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=26, sDef=18, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z22·改'] = {
    index=1077, rarity=3, cost=2, sp=3, type='DD', country='德国', class='1936型6号舰', skill='突袭峡湾',
    hp=40, atk=15, tpd=26, def=16, aa=17, eva=48, acc=33, as=22, rec=8, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=81, defMax=41, aaMax=47, evaMax=92, accMax=93, asMax=66, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装127毫米炮', eq2='四联533毫米磁性鱼雷', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=26, sDef=18, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z28·改'] = {
    index=1079, rarity=4, cost=4, sp=4, type='DD', country='德国', class='1936A型6号舰', skill='Z驱旗舰',
    hp=40, atk=14, tpd=24, def=12, aa=23, eva=46, acc=33, as=25, rec=10, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=39, tpdMax=79, defMax=37, aaMax=53, evaMax=90, accMax=93, asMax=69, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国单装150毫米炮', eq2='四联533毫米磁性鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.5, rSteel=1, rTime=0.5, sAtk=0, sTpd=24, sDef=14, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
}

ships['Z31·改'] = {
    index=1080, rarity=4, cost=2, sp=2, type='DD', country='德国', class='1936AM型1号舰', skill='Z驱菁英',
    hp=42, atk=15, tpd=24, def=18, aa=16, eva=46, acc=33, as=22, rec=6, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=79, defMax=43, aaMax=46, evaMax=90, accMax=93, asMax=66, recMax=33,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联150毫米炮', eq2='四联533毫米鱼雷', eq3='雷达告警装置', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=24, sDef=20, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['紫石英·改'] = {
    index=1081, rarity=4, cost=3, sp=5, type='DD', country='英国', class='F116', skill='迷之嘲讽',
    hp=28, atk=12, tpd=10, def=8, aa=30, eva=43, acc=33, as=50, rec=7, speed=20, luck=13, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=65, defMax=33, aaMax=60, evaMax=87, accMax=93, asMax=94, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='刺猬弹深弹投射器', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=10, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['萤火虫·改'] = {
    index=1082, rarity=4, cost=3, sp=3, type='DD', country='英国', class='G级4号舰', skill='无畏撞击', skill2='重装刺客',
    hp=29, atk=13, tpd=24, def=17, aa=20, eva=46, acc=33, as=33, rec=7, speed=36, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=79, defMax=47, aaMax=50, evaMax=90, accMax=93, asMax=77, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='附加装甲(小型)', eq2='发烟筒', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=17, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['标枪·改'] = {
    index=1083, rarity=3, cost=2, sp=2, type='DD', country='英国', class='J级8号舰', skill='绝境逢生',
    hp=29, atk=15, tpd=24, def=12, aa=25, eva=46, acc=32, as=33, rec=7, speed=36, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=79, defMax=37, aaMax=55, evaMax=90, accMax=92, asMax=77, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='先进型深弹投射器', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['天后·改'] = {
    index=1084, rarity=3, cost=2, sp=2, type='DD', country='英国', class='J级4号舰', skill='对潜专精',
    hp=29, atk=15, tpd=24, def=12, aa=25, eva=47, acc=32, as=33, rec=7, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=79, defMax=37, aaMax=55, evaMax=91, accMax=92, asMax=77, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='先进型深弹投射器', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=12, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['黑背豺·改'] = {
    index=1085, rarity=4, cost=2, sp=2, type='DD', country='英国', class='J级2号舰', skill='拦截护航',
    hp=29, atk=15, tpd=24, def=13, aa=25, eva=46, acc=33, as=33, rec=7, speed=36, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=79, defMax=38, aaMax=55, evaMax=90, accMax=93, asMax=77, recMax=34,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='先进型深弹投射器', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['哥萨克人·改'] = {
    index=1086, rarity=3, cost=2, sp=2, type='DD', country='英国', class='部族级4号舰', skill='跳帮作战',
    hp=32, atk=21, tpd=22, def=15, aa=30, eva=45, acc=32, as=45, rec=10, speed=35.5, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=77, defMax=40, aaMax=60, evaMax=89, accMax=92, asMax=89, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型深弹投射器', eq2='改良型声纳', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=22, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['爱斯基摩人·改'] = {
    index=1087, rarity=3, cost=2, sp=2, type='DD', country='英国', class='部族级5号舰', skill='征战四方',
    hp=32, atk=21, tpd=24, def=16, aa=35, eva=45, acc=32, as=45, rec=10, speed=35.5, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=79, defMax=41, aaMax=65, evaMax=89, accMax=92, asMax=89, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型深弹投射器', eq2='改良型声纳', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=16, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['旁遮普人·改'] = {
    index=1088, rarity=3, cost=2, sp=3, type='DD', country='英国', class='部族级12号舰', skill='船队护航',
    hp=32, atk=21, tpd=22, def=15, aa=32, eva=45, acc=32, as=45, rec=10, speed=35.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=77, defMax=40, aaMax=62, evaMax=89, accMax=92, asMax=89, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4.7英寸炮', eq2='改良型深弹投射器', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=22, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['弗莱彻·改'] = {
    index=1089, rarity=4, cost=3, sp=4, type='DD', country='美国', class='DD-445', skill='最优驱逐舰',
    hp=32, atk=16, tpd=28, def=14, aa=50, eva=43, acc=33, as=40, rec=10, speed=37, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=83, defMax=39, aaMax=80, evaMax=91, accMax=93, asMax=84, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='改良型火控雷达', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=14, sAa=20, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['布雷恩·改'] = {
    index=1092, rarity=3, cost=2, sp=2, type='DD', country='美国', class='DD-630', skill='冷战先锋',
    hp=32, atk=16, tpd=28, def=14, aa=55, eva=43, acc=32, as=55, rec=10, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=83, defMax=39, aaMax=85, evaMax=91, accMax=92, asMax=115, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联3英寸防空炮', eq2='改良型火控雷达', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=14, sAa=25, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['基林·改'] = {
    index=1093, rarity=4, cost=2, sp=3, type='DD', country='美国', class='DD-710', skill='冷战先锋', skill2='FRAM改造',
    hp=35, atk=18, tpd=28, def=15, aa=45, eva=42, acc=33, as=40, rec=10, speed=35, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=43, tpdMax=83, defMax=40, aaMax=75, evaMax=86, accMax=93, asMax=84, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='五联533毫米鱼雷（MK17）', eq3='改良型火控雷达', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=15, sAa=15, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['基阿特·改'] = {
    index=1094, rarity=5, cost=4, sp=4, type='DDGAA', country='美国', class='DDG-1', skill='驾束制导',
    hp=35, atk=23, tpd=1, def=15, aa=50, eva=43, acc=43, as=30, rec=20, speed=35, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=48, tpdMax=1, defMax=40, aaMax=80, evaMax=88, accMax=105, asMax=68, recMax=47,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=12, msl2=12, msl3=12, msl4=12, eq1='U国双联5英寸平高两用炮', eq2='MK-10导弹发射器', eq3='小猎犬导弹', eq4='不可装备',
    sFuel=15, sAmmo=40, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=23, sTpd=1, sDef=15, sAa=70, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
}

ships['长春'] = {
    index=1097, rarity=5, cost=5, sp=5, type='DDG', country='中国', class='6607型3号舰', skill='四大金刚',
    hp=33, atk=17, tpd=1, def=15, aa=30, eva=45, acc=42, as=0, rec=15, speed=39, luck=25, range='短', size='小型舰/主力舰',
    atkMax=42, tpdMax=1, defMax=40, aaMax=60, evaMax=89, accMax=101, asMax=0, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='上游-1发射器', eq2='上游-1导弹', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=65, rFuel=0.48, rSteel=1.5, rTime=0.8, sAtk=17, sTpd=1, sDef=15, sAa=30, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['沃克兰·改'] = {
    index=1098, rarity=3, cost=2, sp=3, type='DD', country='法国', class='沃克兰级1号舰', skill='超级驱逐舰',
    hp=35, atk=15, tpd=22, def=7, aa=15, eva=50, acc=32, as=32, rec=10, speed=40, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=77, defMax=32, aaMax=45, evaMax=94, accMax=92, asMax=76, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联550毫米氧气鱼雷', eq2='改良型动力系统', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=22, sDef=7, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['空想·改'] = {
    index=1099, rarity=6, cost=3, sp=4, type='DD', country='法国', class='空想级1号舰', skill='高速机动',
    hp=37, atk=15, tpd=25, def=9, aa=30, eva=70, acc=35, as=40, rec=12, speed=45, luck=10, range='中', size='小型舰/护卫舰',
    atkMax=40, tpdMax=80, defMax=34, aaMax=60, evaMax=125, accMax=95, asMax=84, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国单装138毫米炮', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=25, rFuel=0.64, rSteel=1.2, rTime=0.5, sAtk=0, sTpd=25, sDef=9, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['狮(战列舰)·改'] = {
    index=1100, rarity=6, cost=7, sp=6, type='BB', country='英国', class='狮级1号舰', skill='初升的朝阳', skill2='王者',
    hp=88, atk=90, tpd=0, def=86, aa=78, eva=32, acc=47, as=0, rec=25, speed=28, luck=10, range='长', size='大型舰/主力舰',
    atkMax=115, tpdMax=0, defMax=106, aaMax=108, evaMax=60, accMax=103, asMax=0, recMax=55,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮', eq2='附加装甲(大型)', eq3='无', eq4='无',
    sFuel=140, sAmmo=180, rFuel=4.8, rSteel=9, rTime=1, sAtk=96, sTpd=0, sDef=86, sAa=81, dFuel=50, dAmmo=60, dSteel=60, dBaux=0,
}

ships['长门·改'] = {
    index=1101, rarity=5, cost=4, sp=4, type='BB', country='日本', class='长门型1番舰', skill='BIG SEVEN', skill2='柱岛舰队',
    hp=80, atk=87, tpd=0, def=79, aa=33, eva=29, acc=45, as=0, rec=22, speed=25, luck=22, range='长', size='大型舰/主力舰',
    atkMax=112, tpdMax=0, defMax=99, aaMax=63, evaMax=54, accMax=101, asMax=0, recMax=49,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='91式穿甲弹', eq2='J国41厘米连装炮', eq3='J国试制41厘米三连主炮', eq4='无',
    sFuel=95, sAmmo=130, rFuel=3.2, rSteel=6, rTime=1, sAtk=87, sTpd=0, sDef=79, sAa=17, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['陆奥·改'] = {
    index=1102, rarity=5, cost=4, sp=4, type='BB', country='日本', class='长门型2番舰', skill='BIG SEVEN', skill2='特别穿甲弹',
    hp=80, atk=92, tpd=0, def=82, aa=30, eva=26, acc=45, as=0, rec=20, speed=25, luck=7, range='长', size='大型舰/主力舰',
    atkMax=117, tpdMax=0, defMax=102, aaMax=60, evaMax=53, accMax=101, asMax=0, recMax=48,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='91式穿甲弹', eq2='三式弹', eq3='J国41厘米连装炮', eq4='无',
    sFuel=95, sAmmo=135, rFuel=3.2, rSteel=6, rTime=1, sAtk=92, sTpd=0, sDef=82, sAa=15, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['前卫·改'] = {
    index=1105, rarity=6, cost=4, sp=4, type='BB', country='英国', class='前卫级1号舰', skill='皇家游轮', skill2='火力平台',
    hp=90, atk=76, tpd=0, def=81, aa=85, eva=31, acc=46, as=0, rec=23, speed=30, luck=15, range='长', size='大型舰/主力舰',
    atkMax=96, tpdMax=0, defMax=101, aaMax=115, evaMax=56, accMax=102, asMax=0, recMax=50,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联15英寸炮(改)', eq2='275火控雷达', eq3='食蚜蝇直升机', eq4='梳妆台',
    sFuel=90, sAmmo=140, rFuel=4.2, rSteel=8, rTime=1, sAtk=81, sTpd=0, sDef=81, sAa=92, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['田纳西·改'] = {
    index=1106, rarity=4, cost=3, sp=2, type='BB', country='美国', class='田纳西级1号舰', skill='最后的T字',
    hp=75, atk=80, tpd=0, def=76, aa=66, eva=20, acc=44, as=0, rec=20, speed=21, luck=20, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=96, aaMax=96, evaMax=44, accMax=100, asMax=0, recMax=47,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联14英寸炮（改）', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=80, sTpd=0, sDef=76, sAa=69, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['加利福尼亚·改'] = {
    index=1107, rarity=4, cost=3, sp=2, type='BB', country='美国', class='田纳西级2号舰', skill='战列线复仇',
    hp=75, atk=80, tpd=0, def=76, aa=68, eva=20, acc=44, as=0, rec=20, speed=21, luck=21, range='长', size='大型舰/主力舰',
    atkMax=100, tpdMax=0, defMax=96, aaMax=98, evaMax=44, accMax=100, asMax=0, recMax=47,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型火控雷达', eq2='U国博福斯40毫米防空炮(四联)', eq3='无', eq4='无',
    sFuel=85, sAmmo=125, rFuel=2.5, rSteel=5.1, rTime=0.8, sAtk=80, sTpd=0, sDef=76, sAa=73, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['科罗拉多·改'] = {
    index=1108, rarity=5, cost=4, sp=4, type='BB', country='美国', class='科罗拉多级1号舰', skill='BIG SEVEN',
    hp=82, atk=85, tpd=0, def=76, aa=62, eva=20, acc=45, as=0, rec=18, speed=21, luck=22, range='长', size='大型舰/主力舰',
    atkMax=105, tpdMax=0, defMax=96, aaMax=92, evaMax=45, accMax=101, asMax=0, recMax=45,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮（改）', eq2='U国博福斯40毫米防空炮(四联)', eq3='先进型对空雷达', eq4='无',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=85, sTpd=0, sDef=76, sAa=63, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['马里兰·改'] = {
    index=1109, rarity=5, cost=5, sp=5, type='BB', country='美国', class='科罗拉多级2号舰', skill='好斗的玛丽', skill2='BIG SEVEN',
    hp=82, atk=85, tpd=0, def=76, aa=68, eva=20, acc=45, as=0, rec=18, speed=21, luck=20, range='长', size='大型舰/主力舰',
    atkMax=105, tpdMax=0, defMax=96, aaMax=98, evaMax=45, accMax=101, asMax=0, recMax=45,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联16英寸炮（改）', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=85, sTpd=0, sDef=76, sAa=73, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['西弗吉尼亚·改'] = {
    index=1110, rarity=5, cost=5, sp=5, type='BB', country='美国', class='科罗拉多级3号舰', skill='苏里高复仇者', skill2='浴火重生',
    hp=82, atk=87, tpd=0, def=80, aa=72, eva=20, acc=45, as=0, rec=20, speed=21, luck=22, range='长', size='大型舰/主力舰',
    atkMax=107, tpdMax=0, defMax=100, aaMax=102, evaMax=45, accMax=101, asMax=0, recMax=47,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型火控雷达', eq2='U国双联16英寸炮（改）', eq3='U国博福斯40毫米防空炮(四联)', eq4='先进型对空雷达',
    sFuel=95, sAmmo=140, rFuel=3.2, rSteel=6, rTime=0.8, sAtk=87, sTpd=0, sDef=80, sAa=79, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['华盛顿·改'] = {
    index=1111, rarity=6, cost=4, sp=4, type='BB', country='美国', class='北卡罗来纳级2号舰', skill='火控雷达', skill2='夜战突击',
    hp=79, atk=95, tpd=0, def=77, aa=75, eva=32, acc=46, as=0, rec=24, speed=28, luck=20, range='长', size='大型舰/主力舰',
    atkMax=115, tpdMax=0, defMax=97, aaMax=105, evaMax=60, accMax=102, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='超重弹', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=95, sTpd=0, sDef=77, sAa=84, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['维托里奥·维内托·改'] = {
    index=1112, rarity=6, cost=6, sp=6, type='BB', country='意大利', class='维内托级1号舰', skill='意式设计',
    hp=80, atk=93, tpd=0, def=84, aa=40, eva=38, acc=46, as=0, rec=19, speed=31, luck=20, range='长', size='大型舰/主力舰',
    atkMax=113, tpdMax=0, defMax=104, aaMax=70, evaMax=63, accMax=102, asMax=0, recMax=41,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联381毫米炮改', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1.1, sAtk=93, sTpd=0, sDef=84, sAa=24, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['黎塞留·改'] = {
    index=1113, rarity=6, cost=6, sp=6, type='BB', country='法国', class='黎塞留级1号舰', skill='凯旋之歌', skill2='胸甲骑兵',
    hp=83, atk=85, tpd=0, def=88, aa=72, eva=34, acc=46, as=0, rec=19, speed=32, luck=30, range='长', size='大型舰/主力舰',
    atkMax=110, tpdMax=0, defMax=108, aaMax=102, evaMax=58, accMax=102, asMax=0, recMax=46,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国四联380毫米炮', eq2='U国博福斯40毫米防空炮(四联)', eq3='F国DRBC火控雷达', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8, rTime=1, sAtk=85, sTpd=0, sDef=88, sAa=72, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['大凤·改'] = {
    index=1117, rarity=6, cost=4, sp=5, type='AV', country='日本', class='大凤型1号舰', skill='穿梭轰炸', skill2='航空压制',
    hp=82, atk=0, tpd=0, def=60, aa=47, eva=36, acc=36, as=0, rec=55, speed=33, luck=6, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=85, aaMax=77, evaMax=66, accMax=97, asMax=0, recMax=82,
    cap1=20, cap2=25, cap3=15, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='景云改', eq2='流星', eq3='零战五二型', eq4='对空喷进炮',
    sFuel=70, sAmmo=65, rFuel=2.88, rSteel=5.4, rTime=1, sAtk=0, sTpd=0, sDef=30, sAa=58, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['齐柏林伯爵·改'] = {
    index=1118, rarity=5, cost=4, sp=4, type='AV', country='德国', class='齐柏林伯爵级1号舰', skill='斯图卡',
    hp=67, atk=0, tpd=0, def=40, aa=41, eva=40, acc=35, as=0, rec=45, speed=34, luck=7, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=65, aaMax=71, evaMax=63, accMax=91, asMax=0, recMax=72,
    cap1=16, cap2=27, cap3=15, cap4=10, msl1=0, msl2=0, msl3=0, msl4=0, eq1='P.1099', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.1, rSteel=5.2, rTime=1.05, sAtk=0, sTpd=0, sDef=23, sAa=46, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['约克城·改'] = {
    index=1120, rarity=5, cost=6, sp=6, type='CV', country='美国', class='约克城级1号舰', skill='萨奇剪',
    hp=60, atk=0, tpd=0, def=34, aa=53, eva=36, acc=40, as=0, rec=38, speed=32, luck=12, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=64, aaMax=83, evaMax=60, accMax=101, asMax=0, recMax=65,
    cap1=21, cap2=27, cap3=23, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD-3无畏', eq2='TBF复仇者', eq3='无', eq4='无',
    sFuel=55, sAmmo=65, rFuel=2.08, rSteel=4, rTime=0.55, sAtk=0, sTpd=0, sDef=17, sAa=76, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['企业·改'] = {
    index=1121, rarity=6, cost=6, sp=6, type='CV', country='美国', class='约克城级2号舰', skill='独木成林', skill2='大E',
    hp=60, atk=0, tpd=0, def=38, aa=65, eva=38, acc=41, as=0, rec=40, speed=32, luck=65, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=68, aaMax=95, evaMax=62, accMax=102, asMax=0, recMax=73,
    cap1=21, cap2=26, cap3=28, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SBD(VS10)', eq2='F4U海盗', eq3='F6F地狱猫', eq4='无',
    sFuel=60, sAmmo=70, rFuel=2.1, rSteel=4, rTime=0.5, sAtk=0, sTpd=0, sDef=19, sAa=100, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['博格·改'] = {
    index=1123, rarity=4, cost=2, sp=3, type='CVL', country='美国', class='博格级1号舰', skill='反潜护航',
    hp=50, atk=0, tpd=0, def=17, aa=43, eva=20, acc=37, as=0, rec=40, speed=16.5, luck=26, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=37, aaMax=73, evaMax=46, accMax=95, asMax=0, recMax=67,
    cap1=16, cap2=12, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='FM-2', eq2='TBM-3', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.12, rSteel=2.1, rTime=0.8, sAtk=0, sTpd=0, sDef=9, sAa=56, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['追赶者·改'] = {
    index=1124, rarity=5, cost=3, sp=4, type='CVL', country='英国', class='攻击者级3号舰', skill='反潜护航',
    hp=50, atk=0, tpd=0, def=17, aa=40, eva=20, acc=38, as=5, rec=40, speed=16.5, luck=25, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=37, aaMax=70, evaMax=46, accMax=96, asMax=16, recMax=67,
    cap1=16, cap2=12, cap3=4, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='复仇者', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=3, sTpd=0, sDef=9, sAa=44, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['埃罗芒什'] = {
    index=1125, rarity=5, cost=4, sp=5, type='CVL', country='法国', class='巨像级1号舰', skill='支援航母',
    hp=55, atk=0, tpd=0, def=21, aa=55, eva=38, acc=37, as=0, rec=45, speed=25, luck=27, range='短', size='中型舰/护卫舰',
    atkMax=35, tpdMax=0, defMax=41, aaMax=85, evaMax=61, accMax=95, asMax=0, recMax=72,
    cap1=15, cap2=23, cap3=8, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='SO.8000', eq2='无', eq3='无', eq4='不可装备',
    sFuel=50, sAmmo=50, rFuel=1.15, rSteel=2.2, rTime=0.65, sAtk=0, sTpd=0, sDef=11, sAa=74, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['普林斯顿·改'] = {
    index=1126, rarity=4, cost=3, sp=4, type='CVL', country='美国', class='独立级2号舰', skill='帽子戏法',
    hp=51, atk=0, tpd=0, def=23, aa=52, eva=40, acc=37, as=0, rec=45, speed=31, luck=10, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=43, aaMax=82, evaMax=63, accMax=95, asMax=0, recMax=72,
    cap1=10, cap2=19, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='TBM-3', eq2='F6F地狱猫', eq3='先进型对空雷达', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.12, rSteel=2.1, rTime=0.625, sAtk=0, sTpd=0, sDef=12, sAa=74, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['斯佩伯爵海军上将·改'] = {
    index=1130, rarity=5, cost=3, sp=3, type='BC', country='德国', class='德意志级3号舰', skill='破交袭击', skill2='河口之战',
    hp=62, atk=52, tpd=18, def=38, aa=29, eva=31, acc=44, as=0, rec=20, speed=27.5, luck=10, range='长', size='大型舰/主力舰',
    atkMax=77, tpdMax=48, defMax=58, aaMax=59, evaMax=66, accMax=95, asMax=0, recMax=47,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联283毫米炮', eq2='柴油机', eq3='雷达告警装置', eq4='无',
    sFuel=35, sAmmo=80, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=52, sTpd=0, sDef=41, sAa=15, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['古鹰·改'] = {
    index=1131, rarity=4, cost=3, sp=2, type='CA', country='日本', class='古鹰型1番舰', skill='战线援护',
    hp=46, atk=32, tpd=28, def=34, aa=27, eva=43, acc=40, as=0, rec=15, speed=35, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=57, tpdMax=68, defMax=49, aaMax=57, evaMax=87, accMax=97, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=32, sTpd=17, sDef=17, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['加古·改'] = {
    index=1132, rarity=4, cost=3, sp=2, type='CA', country='日本', class='古鹰型2番舰', skill='协同作战',
    hp=46, atk=32, tpd=28, def=34, aa=27, eva=43, acc=40, as=0, rec=15, speed=35, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=57, tpdMax=68, defMax=49, aaMax=57, evaMax=87, accMax=97, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=32, sTpd=17, sDef=17, sAa=14, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['青叶·改'] = {
    index=1133, rarity=4, cost=3, sp=2, type='CA', country='日本', class='青叶型1番舰', skill='萨沃海战',
    hp=47, atk=32, tpd=28, def=34, aa=29, eva=40, acc=40, as=0, rec=11, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=57, tpdMax=68, defMax=49, aaMax=59, evaMax=86, accMax=97, asMax=0, recMax=49,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='无',
    sFuel=40, sAmmo=65, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=32, sTpd=17, sDef=17, sAa=15, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['伦敦·改'] = {
    index=1135, rarity=4, cost=3, sp=3, type='CA', country='英国', class='伦敦级1号舰', skill='过度击穿',
    hp=60, atk=40, tpd=20, def=35, aa=49, eva=37, acc=40, as=0, rec=25, speed=32.5, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=65, tpdMax=60, defMax=50, aaMax=79, evaMax=83, accMax=97, asMax=0, recMax=63,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='改良型对海雷达', eq3='无', eq4='无',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=44, sTpd=10, sDef=18, sAa=38, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['肯特·改'] = {
    index=1136, rarity=4, cost=3, sp=3, type='CA', country='英国', class='肯特级1号舰', skill='过度击穿',
    hp=59, atk=39, tpd=20, def=30, aa=45, eva=36, acc=40, as=0, rec=24, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=64, tpdMax=60, defMax=45, aaMax=75, evaMax=82, accMax=97, asMax=0, recMax=62,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联8英寸炮', eq2='标准型火控雷达', eq3='凶猛的大老虎', eq4='无',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=43, sTpd=10, sDef=15, sAa=32, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['波特兰·改'] = {
    index=1137, rarity=4, cost=4, sp=4, type='CA', country='美国', class='波特兰级1号舰', skill='善战者',
    hp=52, atk=43, tpd=0, def=35, aa=56, eva=37, acc=41, as=0, rec=25, speed=32.7, luck=23, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=55, aaMax=86, evaMax=83, accMax=97, asMax=0, recMax=53,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='先进型对空雷达', eq3='无', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=54, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['彭萨科拉·改'] = {
    index=1139, rarity=4, cost=4, sp=4, type='CA', country='美国', class='彭萨科拉级1号舰', skill='灰色幽灵',
    hp=52, atk=45, tpd=0, def=35, aa=58, eva=38, acc=41, as=0, rec=25, speed=32.5, luck=27, range='中', size='中型舰/护卫舰',
    atkMax=75, tpdMax=0, defMax=55, aaMax=88, evaMax=82, accMax=97, asMax=0, recMax=53,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型火控雷达', eq2='U国三联8英寸炮', eq3='先进型对空雷达', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=45, sTpd=0, sDef=18, sAa=57, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['北安普顿·改'] = {
    index=1141, rarity=4, cost=3, sp=3, type='CA', country='美国', class='北安普顿级1号舰', skill='支援护航',
    hp=55, atk=43, tpd=0, def=37, aa=50, eva=37, acc=41, as=0, rec=26, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=57, aaMax=80, evaMax=83, accMax=97, asMax=0, recMax=64,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='改良型对空雷达', eq3='U国厄利孔20毫米炮(双联)', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=19, sAa=45, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['休斯顿·改'] = {
    index=1142, rarity=4, cost=3, sp=3, type='CA', country='美国', class='北安普顿级5号舰', skill='高速射击',
    hp=55, atk=43, tpd=0, def=37, aa=45, eva=37, acc=41, as=0, rec=26, speed=32.5, luck=15, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=57, aaMax=75, evaMax=83, accMax=97, asMax=0, recMax=64,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='改良型对空雷达', eq3='无', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=19, sAa=38, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['新奥尔良·改'] = {
    index=1143, rarity=4, cost=3, sp=3, type='CA', country='美国', class='新奥尔良级1号舰', skill='无头骑士',
    hp=58, atk=43, tpd=0, def=36, aa=55, eva=37, acc=41, as=0, rec=25, speed=32.7, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=56, aaMax=85, evaMax=83, accMax=97, asMax=0, recMax=63,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联8英寸炮', eq2='U国博福斯40毫米防空炮(四联)', eq3='U国博福斯40毫米防空炮(双联)', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=53, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['川内·改'] = {
    index=1145, rarity=3, cost=2, sp=2, type='CL', country='日本', class='川内型1番舰', skill='战队旗舰',
    hp=40, atk=20, tpd=40, def=13, aa=29, eva=48, acc=36, as=37, rec=10, speed=35.2, luck=13, range='中', size='中型舰/护卫舰',
    atkMax=50, tpdMax=85, defMax=33, aaMax=59, evaMax=87, accMax=95, asMax=88, recMax=32,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=35, rFuel=1, rSteel=1.6, rTime=0.55, sAtk=10, sTpd=43, sDef=7, sAa=15, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['埃姆登·改'] = {
    index=1149, rarity=3, cost=2, sp=2, type='CL', country='德国', class='埃姆登级1号舰', skill='舰队起点', 
    hp=45, atk=24, tpd=8, def=21, aa=36, eva=34, acc=36, as=30, rec=11, speed=29, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=54, tpdMax=53, defMax=41, aaMax=66, evaMax=73, accMax=95, asMax=76, recMax=22, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.7, rTime=0.5, sAtk=12, sTpd=8, sDef=13, sAa=18, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['翡翠·改'] = {
    index=1150, rarity=3, cost=2, sp=2, type='CL', country='英国', class='翡翠级1号舰', skill='忠诚卫士',
    hp=45, atk=25, tpd=30, def=22, aa=42, eva=38, acc=36, as=45, rec=15, speed=33, luck=24, range='中', size='中型舰/护卫舰',
    atkMax=55, tpdMax=75, defMax=42, aaMax=72, evaMax=77, accMax=95, asMax=100, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型深弹投射器', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=17, sTpd=30, sDef=11, sAa=27, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['进取·改'] = {
    index=1151, rarity=3, cost=2, sp=2, type='CL', country='英国', class='翡翠级2号舰', skill='比斯开湾狩猎',
    hp=45, atk=28, tpd=30, def=23, aa=42, eva=38, acc=36, as=45, rec=15, speed=33, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=75, defMax=43, aaMax=72, evaMax=77, accMax=95, asMax=100, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联6英寸炮', eq2='E国八联40毫米砰砰炮', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=18, sTpd=30, sDef=12, sAa=27, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['圣胡安·改'] = {
    index=1158, rarity=4, cost=3, sp=3, type='CL', country='美国', class='亚特兰大级4号舰', skill='DP炮齐射', 
    hp=42, atk=32, tpd=0, def=24, aa=78, eva=40, acc=38, as=50, rec=20, speed=33.6, luck=20, range='中', size='中型舰/护卫舰', 
    atkMax=67, tpdMax=0, defMax=49, aaMax=108, evaMax=79, accMax=96, asMax=110, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='改良型火控雷达', eq3='先进型对空雷达', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=16, sTpd=0, sDef=12, sAa=88, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['摩尔曼斯克·改'] = {
    index=1160, rarity=4, cost=2, sp=2, type='CL', country='苏联', class='奥马哈级2号舰', skill='航线援护',
    hp=43, atk=28, tpd=22, def=18, aa=37, eva=41, acc=37, as=28, rec=12, speed=35, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=67, defMax=38, aaMax=67, evaMax=80, accMax=96, asMax=72, recMax=29,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米2-н鱼雷', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=14, sTpd=22, sDef=9, sAa=20, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['逸仙·改'] = {
    index=1162, rarity=5, cost=1, sp=2, type='CL', country='中国', class='无番号', skill='矢志不渝',
    hp=33, atk=17, tpd=13, def=13, aa=35, eva=29, acc=38, as=25, rec=16, speed=20, luck=35, range='中', size='中型舰/护卫舰',
    atkMax=47, tpdMax=58, defMax=33, aaMax=65, evaMax=68, accMax=97, asMax=80, recMax=38,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='改良型对海雷达', eq3='豪华木家具', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=0.8, rSteel=1.5, rTime=0.4, sAtk=9, sTpd=13, sDef=7, sAa=18, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['秋月·改'] = {
    index=1164, rarity=3, cost=2, sp=2, type='DD', country='日本', class='秋月型1番舰', skill='对空直卫',
    hp=34, atk=15, tpd=30, def=13, aa=40, eva=40, acc=33, as=26, rec=8, speed=33, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=85, defMax=38, aaMax=70, evaMax=84, accMax=93, asMax=70, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三年式E1高角炮', eq2='61厘米四连装氧气鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=33, sDef=13, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['凉月·改'] = {
    index=1165, rarity=3, cost=2, sp=2, type='DD', country='日本', class='秋月型3番舰', skill='对空直卫',
    hp=34, atk=15, tpd=30, def=13, aa=42, eva=40, acc=32, as=23, rec=8, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=85, defMax=38, aaMax=72, evaMax=84, accMax=92, asMax=67, recMax=41,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='61厘米四连装氧气鱼雷', eq3='标准型对空雷达', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=33, sDef=13, sAa=6, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['阳炎·改'] = {
    index=1166, rarity=4, cost=2, sp=4, type='DD', country='日本', class='阳炎型1番舰', skill='甲型驱逐舰',
    hp=31, atk=13, tpd=42, def=13, aa=25, eva=50, acc=33, as=25, rec=6, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=97, defMax=38, aaMax=55, evaMax=94, accMax=93, asMax=69, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=46, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['不知火·改'] = {
    index=1167, rarity=3, cost=2, sp=2, type='DD', country='日本', class='阳炎型2番舰', skill='雷击战突进',
    hp=31, atk=13, tpd=42, def=13, aa=20, eva=50, acc=32, as=25, rec=6, speed=34, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=97, defMax=38, aaMax=50, evaMax=94, accMax=92, asMax=69, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=46, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['黑潮·改'] = {
    index=1168, rarity=3, cost=2, sp=3, type='DD', country='日本', class='阳炎型3番舰', skill='雷击特快',
    hp=31, atk=13, tpd=42, def=13, aa=22, eva=50, acc=32, as=30, rec=7, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=97, defMax=38, aaMax=52, evaMax=94, accMax=92, asMax=74, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=46, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['丹阳'] = {
    index=1169, rarity=6, cost=4, sp=5, type='DD', country='中国', class='DD-12', skill='祥瑞御免', skill2='祥瑞',
    hp=32, atk=12, tpd=28, def=9, aa=45, eva=60, acc=35, as=45, rec=7, speed=35, luck=53, range='短', size='小型舰/护卫舰',
    atkMax=37, tpdMax=83, defMax=34, aaMax=75, evaMax=104, accMax=95, asMax=89, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国单装5英寸炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.45, rSteel=0.8, rTime=0.4, sAtk=0, sTpd=28, sDef=9, sAa=9, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z46·改'] = {
    index=1171, rarity=6, cost=2, sp=3, type='DD', country='德国', class='1936C型1号舰', skill='驱逐先锋',
    hp=36, atk=15, tpd=28, def=13, aa=38, eva=48, acc=35, as=35, rec=10, speed=36, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=83, defMax=38, aaMax=68, evaMax=92, accMax=95, asMax=68, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联128毫米高平两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=28, sDef=15, sAa=2, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['维纳斯·改'] = {
    index=1175, rarity=4, cost=2, sp=2, type='DD', country='英国', class='V级1号舰', skill='编队鱼雷战',
    hp=29, atk=15, tpd=32, def=14, aa=27, eva=48, acc=33, as=45, rec=10, speed=37, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=87, defMax=39, aaMax=57, evaMax=92, accMax=93, asMax=89, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型深弹投射器', eq2='改良型声纳', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.475, sAtk=3, sTpd=32, sDef=14, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['沙利文·改'] = {
    index=1178, rarity=3, cost=3, sp=3, type='DD', country='美国', class='DD-537', skill='守护英雄之人',
    hp=32, atk=16, tpd=28, def=14, aa=50, eva=43, acc=32, as=55, rec=10, speed=37, luck=35, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=83, defMax=39, aaMax=80, evaMax=91, accMax=92, asMax=115, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联3英寸防空炮', eq2='改良型火控雷达', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=14, sAa=20, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['威廉·D·波特·改'] = {
    index=1181, rarity=6, cost=2, sp=5, type='DD', country='美国', class='DD-579', skill='扫把星', skill2='幸运的威利',
    hp=32, atk=16, tpd=30, def=14, aa=45, eva=43, acc=33, as=40, rec=10, speed=37, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=85, defMax=39, aaMax=75, evaMax=91, accMax=93, asMax=84, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='改良型火控雷达', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=30, sDef=14, sAa=15, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['波特·改'] = {
    index=1182, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DD-356', skill='统率力',
    hp=33, atk=24, tpd=30, def=15, aa=35, eva=46, acc=33, as=35, rec=10, speed=38.5, luck=9, range='短', size='小型舰/护卫舰',
    atkMax=49, tpdMax=85, defMax=40, aaMax=65, evaMax=90, accMax=93, asMax=79, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型火控雷达', eq2='U国双联5英寸炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=30, sDef=15, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['拉菲(DD-724)·改'] = {
    index=1183, rarity=5, cost=3, sp=4, type='DD', country='美国', class='DD-724', skill='不惧神风',
    hp=37, atk=16, tpd=28, def=15, aa=45, eva=46, acc=34, as=40, rec=10, speed=38.5, luck=45, range='短', size='小型舰/护卫舰',
    atkMax=41, tpdMax=83, defMax=40, aaMax=75, evaMax=90, accMax=94, asMax=84, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型对空雷达', eq2='五联533毫米鱼雷（MK17）', eq3='VT引信炮弹', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=15, sAa=15, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['机灵'] = {
    index=1185, rarity=5, cost=2, sp=2, type='DD', country='苏联', class='索尔达蒂级1号舰', skill='海峡勇者',
    hp=33, atk=15, tpd=20, def=15, aa=40, eva=49, acc=34, as=40, rec=10, speed=38, luck=21, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=75, defMax=40, aaMax=70, evaMax=93, accMax=94, asMax=78, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='СМ-24-ЗИФ双联57毫米高炮', eq2='改良型声纳', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=15, sAa=4, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['安东尼奥·达诺利·改'] = {
    index=1187, rarity=5, cost=3, sp=3, type='DD', country='意大利', class='航海家级4号舰', skill='灵活作战',
    hp=35, atk=13, tpd=25, def=15, aa=23, eva=50, acc=34, as=25, rec=7, speed=39, luck=15, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=80, defMax=40, aaMax=53, evaMax=94, accMax=94, asMax=65, recMax=29,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国W270鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=25, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['乌戈里尼·维瓦尔迪·改'] = {
    index=1188, rarity=5, cost=5, sp=5, type='DD', country='意大利', class='航海家级5号舰', skill='奋战到底',
    hp=35, atk=13, tpd=27, def=15, aa=21, eva=50, acc=34, as=25, rec=7, speed=39, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=82, defMax=40, aaMax=51, evaMax=94, accMax=94, asMax=65, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国单装135炮', eq2='I国W270鱼雷', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=27, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['塔什干·改'] = {
    index=1192, rarity=6, cost=3, sp=3, type='DD', country='苏联', class='20I型1号舰', skill='高速规避',
    hp=36, atk=21, tpd=32, def=15, aa=35, eva=60, acc=35, as=25, rec=7, speed=42.7, luck=17, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=87, defMax=40, aaMax=65, evaMax=104, accMax=95, asMax=69, recMax=18,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='533毫米2-н鱼雷', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.65, rSteel=1.1, rTime=0.55, sAtk=0, sTpd=32, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['大青花鱼·改'] = {
    index=1194, rarity=6, cost=7, sp=6, type='SS', country='美国', class='SS-218', skill='王牌潜艇',
    hp=17, atk=6, tpd=34, def=17, aa=0, eva=20, acc=34, as=0, rec=16, speed=21, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=89, defMax=32, aaMax=0, evaMax=47, accMax=108, asMax=0, recMax=49,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16鱼雷（潜艇）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.64, rSteel=0.75, rTime=0.33, sAtk=0, sTpd=34, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['射水鱼·改'] = {
    index=1195, rarity=6, cost=7, sp=6, type='SS', country='美国', class='SS-311', skill='猎杀潜航',
    hp=17, atk=6, tpd=34, def=17, aa=0, eva=20, acc=34, as=0, rec=16, speed=21, luck=30, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=89, defMax=32, aaMax=0, evaMax=47, accMax=108, asMax=0, recMax=49,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16鱼雷（潜艇）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.64, rSteel=0.75, rTime=0.33, sAtk=0, sTpd=34, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['U-47·改'] = {
    index=1197, rarity=5, cost=7, sp=6, type='SS', country='德国', class='U47', skill='突袭斯卡帕湾', skill2='狼群战术',
    hp=15, atk=5, tpd=30, def=15, aa=0, eva=18, acc=33, as=0, rec=15, speed=18, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=80, defMax=30, aaMax=0, evaMax=45, accMax=102, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='雷达告警装置', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=30, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['U-505·改'] = {
    index=1198, rarity=6, cost=7, sp=6, type='SS', country='德国', class='U-505', skill='大难不死的潜艇', 
    hp=16, atk=4, tpd=28, def=16, aa=5, eva=18, acc=33, as=0, rec=17, speed=18, luck=19, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=78, defMax=31, aaMax=5, evaMax=45, accMax=102, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.65, rSteel=0.55, rTime=0.3, sAtk=0, sTpd=28, sDef=18, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['絮库夫·改'] = {
    index=1199, rarity=4, cost=5, sp=5, type='SC', country='法国', class='无番号', skill='潜水巡洋舰',
    hp=25, atk=25, tpd=28, def=20, aa=0, eva=19, acc=34, as=0, rec=12, speed=18.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=55, tpdMax=68, defMax=35, aaMax=0, evaMax=46, accMax=96, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F国旋转鱼雷发射器', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=40, rFuel=1, rSteel=1, rTime=0.45, sAtk=0, sTpd=28, sDef=20, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['约克公爵·改'] = {
    index=1205, rarity=6, cost=4, sp=4, type='BB', country='英国', class='英王乔治五世级3号舰', skill='骑士之誓', skill2='骑士之矛', 
    hp=80, atk=80, tpd=0, def=80, aa=71, eva=30, acc=46, as=0, rec=15, speed=29, luck=20, range='长', size='大型舰/主力舰', 
    atkMax=105, tpdMax=0, defMax=100, aaMax=101, evaMax=55, accMax=102, asMax=0, recMax=42, 
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国四联14英寸炮', eq2='E国双联5.25英寸炮', eq3='标准型火控雷达', eq4='无',
    sFuel=120, sAmmo=145, rFuel=4.2, rSteel=8, rTime=1.0, sAtk=85, sTpd=0, sDef=80, sAa=71, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['北卡罗来纳·改'] = {
    index=1206, rarity=6, cost=6, sp=6, type='BB', country='美国', class='北卡罗来纳级1号舰', skill='灵活转换(形态一)', skill2='威慑',
    hp=80, atk=95, tpd=0, def=78, aa=73, eva=32, acc=46, as=0, rec=22, speed=28, luck=25, range='长', size='大型舰/主力舰',
    atkMax=120, tpdMax=0, defMax=98, aaMax=103, evaMax=62, accMax=102, asMax=0, recMax=51,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='超重弹', eq2='先进型火控雷达', eq3='U国三联16英寸炮(MK6)', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=95, sTpd=0, sDef=78, sAa=81, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['南达科他(BB-57)·改'] = {
    index=1207, rarity=6, cost=6, sp=6, type='BB', country='美国', class='南达科他级1号舰', skill='不屈的迎风花', skill2='混战',
    hp=80, atk=95, tpd=0, def=85, aa=78, eva=28, acc=46, as=0, rec=22, speed=27.5, luck=25, range='长', size='大型舰/主力舰',
    atkMax=120, tpdMax=0, defMax=105, aaMax=108, evaMax=61, accMax=102, asMax=0, recMax=51,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联3英寸防空炮', eq2='U国三联16英寸炮(MK6)', eq3='超重弹', eq4='无',
    sFuel=95, sAmmo=145, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=95, sTpd=0, sDef=85, sAa=88, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['密苏里·改'] = {
    index=1209, rarity=6, cost=7, sp=6, type='BBG', country='美国', class='衣阿华级3号舰', skill='决胜之兵', skill2='战斧',
    hp=92, atk=93, tpd=0, def=87, aa=86, eva=34, acc=47, as=0, rec=20, speed=33, luck=28, range='长', size='大型舰/主力舰',
    atkMax=118, tpdMax=0, defMax=107, aaMax=116, evaMax=59, accMax=103, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=8, eq1='MK.141导弹发射架', eq2='RGM-84鱼叉反舰导弹', eq3='无', eq4='无',
    sFuel=145, sAmmo=200, rFuel=4.8, rSteel=9, rTime=0.8, sAtk=93, sTpd=0, sDef=87, sAa=100, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['卡约·杜伊里奥·改'] = {
    index=1211, rarity=6, cost=2, sp=3, type='BB', country='意大利', class='安德烈亚·多利亚级2号舰', skill='幸运之舰',
    hp=64, atk=64, tpd=0, def=64, aa=37, eva=30, acc=46, as=0, rec=13, speed=27, luck=20, range='长', size='大型舰/主力舰',
    atkMax=89, tpdMax=0, defMax=89, aaMax=72, evaMax=63, accMax=102, asMax=0, recMax=40,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联320毫米炮', eq2='普列塞水下防护系统', eq3='无', eq4='无',
    sFuel=70, sAmmo=110, rFuel=2.25, rSteel=4.55, rTime=1, sAtk=64, sTpd=0, sDef=64, sAa=25, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['玛丽亚皇后·改'] = {
    index=1215, rarity=5, cost=2, sp=2, type='BB', country='苏联', class='玛丽亚皇后级1号舰', skill='黑海皇后', 
    hp=60, atk=65, tpd=0, def=65, aa=17, eva=26, acc=46, as=0, rec=10, speed=21, luck=9, range='长', size='大型舰/主力舰', 
    atkMax=85, tpdMax=0, defMax=85, aaMax=47, evaMax=51, accMax=102, asMax=0, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=110, rFuel=2.3, rSteel=4.6, rTime=1.0, sAtk=65, sTpd=0, sDef=65, sAa=9, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['瑞鹤·改'] = {
    index=1219, rarity=6, cost=4, sp=5, type='CV', country='日本', class='翔鹤型2番舰', skill='幸运的云雨区',
    hp=72, atk=0, tpd=0, def=42, aa=49, eva=45, acc=41, as=0, rec=52, speed=34.2, luck=40, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=72, aaMax=79, evaMax=69, accMax=102, asMax=0, recMax=85,
    cap1=24, cap2=24, cap3=24, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻（80番）', eq2='青霜', eq3='天山', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=21, sAa=62, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['翔鹤·改'] = {
    index=1220, rarity=6, cost=4, sp=5, type='CV', country='日本', class='翔鹤型1番舰', skill='被害担当',
    hp=72, atk=0, tpd=0, def=35, aa=45, eva=38, acc=41, as=0, rec=52, speed=34.2, luck=9, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=65, aaMax=75, evaMax=62, accMax=102, asMax=0, recMax=90,
    cap1=24, cap2=24, cap3=24, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻（80番）', eq2='烈风', eq3='对空喷进炮', eq4='无',
    sFuel=60, sAmmo=55, rFuel=2.4, rSteel=4.5, rTime=1, sAtk=0, sTpd=0, sDef=18, sAa=54, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['飞龙·改'] = {
    index=1221, rarity=5, cost=4, sp=4, type='CV', country='日本', class='飞龙型1番舰', skill='舰攻队强袭', skill2='突击猛进',
    hp=58, atk=0, tpd=0, def=30, aa=35, eva=41, acc=40, as=0, rec=38, speed=34.5, luck=13, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=60, aaMax=65, evaMax=65, accMax=101, asMax=0, recMax=65,
    cap1=21, cap2=23, cap3=23, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻（80番）', eq2='彗星', eq3='青霜', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.3, rTime=0.95, sAtk=0, sTpd=0, sDef=15, sAa=35, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['苍龙·改'] = {
    index=1222, rarity=5, cost=4, sp=4, type='CV', country='日本', class='苍龙型1番舰', skill='舰爆出击',
    hp=56, atk=0, tpd=0, def=29, aa=35, eva=41, acc=40, as=0, rec=38, speed=34.5, luck=10, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=59, aaMax=65, evaMax=65, accMax=101, asMax=0, recMax=65,
    cap1=20, cap2=26, cap3=18, cap4=6, msl1=0, msl2=0, msl3=0, msl4=0, eq1='九七式舰攻（80番）', eq2='二式舰侦', eq3='景云改', eq4='无',
    sFuel=60, sAmmo=60, rFuel=2.4, rSteel=4.2, rTime=0.95, sAtk=0, sTpd=0, sDef=15, sAa=35, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['信浓·改'] = {
    index=1223, rarity=6, cost=6, sp=5, type='AV', country='日本', class='大和型3番舰', skill='穿梭支援', skill2='超航程战',
    hp=111, atk=0, tpd=0, def=78, aa=43, eva=28, acc=36, as=0, rec=47, speed=27, luck=5, range='短', size='大型舰/主力舰',
    atkMax=45, tpdMax=0, defMax=103, aaMax=73, evaMax=50, accMax=92, asMax=0, recMax=74,
    cap1=12, cap2=17, cap3=31, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='震电改', eq2='天河', eq3='景云改', eq4='无',
    sFuel=135, sAmmo=140, rFuel=3.9, rSteel=7, rTime=1.1, sAtk=0, sTpd=0, sDef=39, sAa=50, dFuel=20, dAmmo=20, dSteel=40, dBaux=10
}

ships['可畏·改'] = {
    index=1224, rarity=6, cost=3, sp=4, type='AV', country='英国', class='光辉级3号舰', skill='马塔潘角之箭', skill2='重磅突袭', 
    hp=81, atk=0, tpd=0, def=69, aa=65, eva=42, acc=36, as=0, rec=45, speed=30.5, luck=24, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=99, aaMax=95, evaMax=65, accMax=97, asMax=0, recMax=72, 
    cap1=15, cap2=25, cap3=15, cap4=14, msl1=0, msl2=0, msl3=0, msl4=0, eq1='海毒牙', eq2='F4U海盗', eq3='无', eq4='无',
    sFuel=70, sAmmo=80, rFuel=3, rSteel=5.5, rTime=1.0, sAtk=3, sTpd=0, sDef=35, sAa=94, dFuel=20, dAmmo=20, dSteel=40, dBaux=10, 
}

ships['黄蜂(CV-7)·改'] = {
    index=1225, rarity=5, cost=3, sp=4, type='CV', country='美国', class='黄蜂级1号舰', skill='狂蜂',
    hp=56, atk=0, tpd=0, def=32, aa=52, eva=35, acc=40, as=0, rec=45, speed=29.5, luck=10, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=62, aaMax=82, evaMax=57, accMax=101, asMax=0, recMax=67,
    cap1=20, cap2=17, cap3=30, cap4=15, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F8F熊猫', eq2='TBF复仇者', eq3='无', eq4='无',
    sFuel=55, sAmmo=60, rFuel=2.08, rSteel=3.9, rTime=0.8, sAtk=0, sTpd=0, sDef=16, sAa=74, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['飞鹰·改'] = {
    index=1227, rarity=4, cost=3, sp=4, type='CVL', country='日本', class='飞鹰型1番舰', skill='特设空母',
    hp=70, atk=0, tpd=0, def=25, aa=33, eva=28, acc=37, as=0, rec=38, speed=25.5, luck=9, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=45, aaMax=63, evaMax=51, accMax=95, asMax=0, recMax=65,
    cap1=15, cap2=20, cap3=20, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='流星', eq2='零战62型', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=13, sAa=33, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['隼鹰·改'] = {
    index=1228, rarity=4, cost=3, sp=3, type='CVL', country='日本', class='飞鹰型2番舰', skill='见敌必战',
    hp=70, atk=0, tpd=0, def=27, aa=36, eva=28, acc=37, as=0, rec=38, speed=25.5, luck=22, range='短', size='中型舰/护卫舰',
    atkMax=30, tpdMax=0, defMax=47, aaMax=66, evaMax=51, accMax=95, asMax=0, recMax=65,
    cap1=15, cap2=20, cap3=20, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='流星', eq2='零战62型', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=0, sTpd=0, sDef=14, sAa=36, dFuel=20, dAmmo=30, dSteel=50, dBaux=20
}

ships['贝亚恩·改'] = {
    index=1232, rarity=4, cost=3, sp=3, type='CV', country='法国', class='贝亚恩级1号舰', skill='海航先锋', 
    hp=72, atk=0, tpd=0, def=38, aa=45, eva=25, acc=40, as=0, rec=32, speed=21.5, luck=19, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=63, aaMax=75, evaMax=49, accMax=99, asMax=0, recMax=59, 
    cap1=15, cap2=17, cap3=12, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='F6F地狱猫', eq2='无', eq3='无', eq4='无',
    sFuel=50, sAmmo=60, rFuel=2.08, rSteel=3.8, rTime=0.8, sAtk=0, sTpd=0, sDef=19, sAa=54, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['最上·改'] = {
    index=1233, rarity=5, cost=3, sp=4, type='CAV', country='日本', class='最上型1番舰', skill='航空掩护',
    hp=52, atk=38, tpd=29, def=37, aa=35, eva=41, acc=42, as=25, rec=13, speed=35, luck=10, range='中', size='中型舰/护卫舰',
    atkMax=63, tpdMax=79, defMax=52, aaMax=65, evaMax=87, accMax=100, asMax=52, recMax=51,
    cap1=0, cap2=0, cap3=0, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国暂称20.3厘米连装炮3号炮', eq2='61厘米三连装氧气鱼雷', eq3='J国12.7厘米连装高射炮', eq4='瑞云',
    sFuel=40, sAmmo=75, rFuel=1.3, rSteel=2.4, rTime=0.75, sAtk=38, sTpd=18, sDef=19, sAa=35, dFuel=50, dAmmo=40, dSteel=60, dBaux=6
}

ships['埃克赛特·改'] = {
    index=1239, rarity=4, cost=2, sp=2, type='CA', country='英国', class='约克级2号舰', skill='绝境求生', 
    hp=48, atk=33, tpd=18, def=33, aa=43, eva=36, acc=40, as=0, rec=24, speed=32, luck=10, range='中', size='中型舰/护卫舰', 
    atkMax=63, tpdMax=58, defMax=48, aaMax=73, evaMax=82, accMax=97, asMax=0, recMax=62, 
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国八联40毫米砰砰炮', eq2='无', eq3='无', eq4='无',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=37, sTpd=9, sDef=17, sAa=29, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['约克·改'] = {
    index=1238, rarity=4, cost=2, sp=3, type='CA', country='英国', class='约克级1号舰', skill='守护者', 
    hp=48, atk=33, tpd=18, def=33, aa=40, eva=36, acc=40, as=0, rec=24, speed=32, luck=9, range='中', size='中型舰/护卫舰', 
    atkMax=63, tpdMax=58, defMax=48, aaMax=70, evaMax=82, accMax=97, asMax=0, recMax=62, 
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国八联40毫米砰砰炮', eq2='无', eq3='无', eq4='无',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=37, sTpd=9, sDef=17, sAa=24, dFuel=30, dAmmo=40, dSteel=30, dBaux=0, 
}

ships['旧金山·改'] = {
    index=1240, rarity=5, cost=4, sp=3, type='CA', country='美国', class='新奥尔良级5号舰', skill='久经战阵',
    hp=58, atk=43, tpd=0, def=36, aa=53, eva=37, acc=42, as=0, rec=25, speed=32.7, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=73, tpdMax=0, defMax=56, aaMax=83, evaMax=83, accMax=98, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国博福斯40毫米防空炮(四联)', eq2='无', eq3='无', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=43, sTpd=0, sDef=18, sAa=50, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['巴尔的摩·改'] = {
    index=1241, rarity=6, cost=4, sp=4, type='CA', country='美国', class='巴尔的摩级1号舰', skill='不朽的英魂', skill2='集中火力',
    hp=62, atk=48, tpd=0, def=40, aa=71, eva=37, acc=43, as=0, rec=25, speed=33, luck=18, range='中', size='中型舰/护卫舰',
    atkMax=78, tpdMax=0, defMax=60, aaMax=101, evaMax=83, accMax=99, asMax=0, recMax=58,
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联3英寸防空炮', eq2='无', eq3='无', eq4='无',
    sFuel=45, sAmmo=75, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=48, sTpd=0, sDef=20, sAa=78, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['灵敏·改'] = {
    index=1244, rarity=5, cost=3, sp=3, type='DD', country='苏联', class='7型18号舰', skill='近卫', 
    hp=32, atk=14, tpd=22, def=10, aa=39, eva=49, acc=33, as=30, rec=8, speed=39, luck=36, range='短', size='小型舰/护卫舰', 
    atkMax=39, tpdMax=77, defMax=35, aaMax=69, evaMax=93, accMax=95, asMax=67, recMax=26, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=22, sDef=10, sAa=3, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['香取·改'] = {
    index=1247, rarity=4, cost=2, sp=2, type='CL', country='日本', class='香取型1番舰', skill='多面训练舰',
    hp=38, atk=17, tpd=20, def=13, aa=27, eva=25, acc=37, as=30, rec=16, speed=18, luck=16, range='中', size='中型舰/护卫舰',
    atkMax=47, tpdMax=65, defMax=33, aaMax=57, evaMax=62, accMax=96, asMax=85, recMax=38,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型深弹投射器', eq2='J国12.7厘米连装高射炮', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=20, rFuel=0.8, rSteel=1.5, rTime=0.5, sAtk=9, sTpd=23, sDef=7, sAa=14, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['大淀·改'] = {
    index=1248, rarity=6, cost=2, sp=4, type='CF', country='日本', class='大淀型1番舰', skill='航空支援',
    hp=40, atk=22, tpd=0, def=29, aa=38, eva=41, acc=43, as=25, rec=30, speed=34, luck=17, range='中', size='中型舰/护卫舰',
    atkMax=52, tpdMax=0, defMax=54, aaMax=68, evaMax=81, accMax=101, asMax=52, recMax=52,
    cap1=0, cap2=0, cap3=9, cap4=9, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国10厘米连装炮', eq2='J国15.5厘米三联主炮', eq3='零战二一型', eq4='紫云',
    sFuel=40, sAmmo=70, rFuel=1.3, rSteel=2.3, rTime=0.75, sAtk=22, sTpd=0, sDef=15, sAa=40, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['莱比锡·改'] = {
    index=1249, rarity=4, cost=2, sp=2, type='CL', country='德国', class='莱比锡级1号舰', skill='海军训练舰',
    hp=50, atk=28, tpd=25, def=24, aa=38, eva=39, acc=37, as=32, rec=11, speed=32, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=58, tpdMax=70, defMax=44, aaMax=68, evaMax=77, accMax=96, asMax=87, recMax=33,
    cap1=2, cap2=2, cap3=2, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国三联150毫米炮', eq2='雷达告警装置', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.8, rSteel=1.65, rTime=0.5, sAtk=14, sTpd=25, sDef=14, sAa=21, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['高波·改'] = {
    index=1258, rarity=5, cost=2, sp=2, type='DD', country='日本', class='夕云型6番舰', skill='塔萨法隆格的幽灵', 
    hp=32, atk=13, tpd=42, def=9, aa=20, eva=47, acc=32, as=24, rec=7, speed=35, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=38, tpdMax=97, defMax=34, aaMax=50, evaMax=91, accMax=92, asMax=58, recMax=40, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=46, sDef=9, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['岚·改'] = {
    index=1265, rarity=5, cost=2, sp=3, type='DD', country='日本', class='阳炎型16番舰', skill='爆雷奇袭',
    hp=31, atk=13, tpd=42, def=13, aa=18, eva=50, acc=34, as=28, rec=6, speed=34, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=97, defMax=38, aaMax=48, evaMax=94, accMax=94, asMax=72, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='61厘米四连装氧气鱼雷', eq2='改良型深弹投射器', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=46, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['初夏·改'] = {
    index=1266, rarity=5, cost=4, sp=4, type='DD', country='日本', class='北风型5番舰', skill='缘之祝福', 
    hp=36, atk=15, tpd=38, def=13, aa=49, eva=40, acc=34, as=42, rec=13, speed=36.7, luck=7, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=93, defMax=38, aaMax=79, evaMax=95, accMax=94, asMax=90, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国六联61厘米鱼雷', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=41, sDef=13, sAa=13, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['岛风(岛风型驱逐舰)·改'] = {
    index=1267, rarity=6, cost=4, sp=4, type='DD', country='日本', class='岛风型1番舰', skill='灿若星芒', 
    hp=35, atk=13, tpd=57, def=9, aa=20, eva=60, acc=34, as=25, rec=8, speed=40, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=38, tpdMax=112, defMax=34, aaMax=50, evaMax=104, accMax=94, asMax=62, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型动力系统', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=30, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=61, sDef=9, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['Z17·改'] = {
    index=1269, rarity=3, cost=4, sp=6, type='DD', country='德国', class='1936型1号舰', skill='纳尔维克警戒',
    hp=39, atk=13, tpd=25, def=15, aa=18, eva=48, acc=32, as=22, rec=8, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=80, defMax=40, aaMax=48, evaMax=92, accMax=92, asMax=66, recMax=35,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米磁性鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=25, sDef=17, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['Z18·改'] = {
    index=1270, rarity=3, cost=2, sp=2, type='DD', country='德国', class='1936型2号舰', skill='威瑟堡行动',
    hp=39, atk=13, tpd=25, def=15, aa=18, eva=48, acc=32, as=22, rec=10, speed=38.5, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=38, tpdMax=80, defMax=40, aaMax=48, evaMax=92, accMax=92, asMax=66, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='四联533毫米磁性鱼雷', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=20, rFuel=0.48, rSteel=0.99, rTime=0.5, sAtk=0, sTpd=25, sDef=17, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['塞尔弗里奇·改'] = {
    index=1273, rarity=4, cost=2, sp=2, type='DD', country='美国', class='DD-357', skill='驱逐领队', 
    hp=33, atk=21, tpd=30, def=15, aa=42, eva=47, acc=33, as=35, rec=10, speed=38.5, luck=16, range='短', size='小型舰/护卫舰', 
    atkMax=46, tpdMax=85, defMax=40, aaMax=72, evaMax=91, accMax=93, asMax=88, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型火控雷达', eq2='U国双联5英寸平高两用炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=30, sDef=15, sAa=12, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['康弗斯·改'] = {
    index=1275, rarity=5, cost=2, sp=4, type='DD', country='美国', class='DD-509', skill='31节中队', 
    hp=32, atk=16, tpd=28, def=14, aa=49, eva=47, acc=34, as=40, rec=10, speed=37, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=41, tpdMax=83, defMax=39, aaMax=79, evaMax=91, accMax=94, asMax=84, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=14, sAa=19, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['克拉克斯顿·改'] = {
    index=1277, rarity=5, cost=2, sp=4, type='DD', country='美国', class='DD-571', skill='31节中队', 
    hp=32, atk=16, tpd=28, def=14, aa=50, eva=47, acc=34, as=40, rec=16, speed=37, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=41, tpdMax=83, defMax=39, aaMax=80, evaMax=91, accMax=94, asMax=84, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=14, sAa=20, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['霍埃尔·改'] = {
    index=1278, rarity=5, cost=2, sp=3, type='DD', country='美国', class='DD-533', skill='烟雾掩护', skill2='大卫·塔菲3',
    hp=32, atk=18, tpd=32, def=14, aa=40, eva=47, acc=34, as=40, rec=10, speed=37, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=43, tpdMax=87, defMax=39, aaMax=70, evaMax=91, accMax=94, asMax=84, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='发烟筒', eq2='五联533毫米鱼雷（MK17）', eq3='改良型火控雷达', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=32, sDef=14, sAa=9, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['塞缪尔·B·罗伯茨·改'] = {
    index=1279, rarity=5, cost=3, sp=4, type='DD', country='美国', class='DE-413', skill='投石器', skill2='大卫·塔菲3',
    hp=28, atk=12, tpd=28, def=12, aa=35, eva=44, acc=34, as=40, rec=9, speed=28.7, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=42, tpdMax=83, defMax=37, aaMax=65, evaMax=88, accMax=94, asMax=84, recMax=36,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型火控雷达', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.45, rSteel=0.8, rTime=0.35, sAtk=0, sTpd=28, sDef=12, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['约翰斯顿·改'] = {
    index=1280, rarity=5, cost=3, sp=3, type='DD', country='美国', class='DD-557', skill='萨马岛斗士', skill2='大卫·塔菲3',
    hp=32, atk=20, tpd=35, def=16, aa=42, eva=47, acc=34, as=40, rec=10, speed=37, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=45, tpdMax=90, defMax=41, aaMax=72, evaMax=91, accMax=94, asMax=84, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='发烟筒', eq3='改良型火控雷达', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=35, sDef=16, sAa=12, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-81·改'] = {
    index=1289, rarity=5, cost=7, sp=6, type='SS', country='德国', class='U81', skill='狼群猎手',
    hp=15, atk=5, tpd=28, def=15, aa=0, eva=18, acc=33, as=0, rec=16, speed=18, luck=18, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=78, defMax=30, aaMax=0, evaMax=45, accMax=102, asMax=0, recMax=49,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=28, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['U-96·改'] = {
    index=1290, rarity=6, cost=7, sp=6, type='SS', country='德国', class='U96', skill='海狼出击',
    hp=15, atk=3, tpd=30, def=15, aa=0, eva=20, acc=33, as=0, rec=15, speed=18, luck=19, range='短', size='小型舰/护卫舰',
    atkMax=23, tpdMax=80, defMax=30, aaMax=0, evaMax=47, accMax=102, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=30, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['U-2540·改'] = {
    index=1291, rarity=5, cost=6, sp=6, type='SS', country='德国', class='U-2540', skill='次世代潜艇', 
    hp=24, atk=6, tpd=28, def=12, aa=0, eva=30, acc=34, as=0, rec=15, speed=18, luck=25, range='短', size='小型舰/护卫舰', 
    atkMax=26, tpdMax=78, defMax=27, aaMax=0, evaMax=59, accMax=103, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.275, sAtk=0, sTpd=28, sDef=14, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['U-1206·改'] = {
    index=1293, rarity=5, cost=6, sp=6, type='SS', country='德国', class='U1206', skill='意外操作',
    hp=15, atk=5, tpd=27, def=15, aa=0, eva=18, acc=33, as=0, rec=15, speed=18, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=25, tpdMax=77, defMax=30, aaMax=0, evaMax=45, accMax=101, asMax=0, recMax=49,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=20, rFuel=0.6, rSteel=0.5, rTime=0.55, sAtk=0, sTpd=27, sDef=17, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0,
}

ships['让巴尔·改'] = {
    index=1299, rarity=6, cost=2, sp=6, type='BBG', country='法国', class='黎塞留级2号舰', skill='旁观者', skill2='舰队象征', 
    hp=88, atk=83, tpd=0, def=90, aa=85, eva=31, acc=45, as=0, rec=20, speed=32, luck=20, range='长', size='大型舰/主力舰', 
    atkMax=108, tpdMax=0, defMax=110, aaMax=115, evaMax=56, accMax=97, asMax=0, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=8, eq1='F国四联380毫米炮', eq2='导弹发射系统（让巴尔）', eq3='让巴尔导弹系统（马舒卡/天狮星）', eq4='无',
    sFuel=110, sAmmo=190, rFuel=4.5, rSteel=8.5, rTime=1.1, sAtk=83, sTpd=0, sDef=90, sAa=92, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['马汉·改'] = {
    index=1301, rarity=5, cost=2, sp=3, type='DD', country='美国', class='DD-364', skill='航母援护',
    hp=32, atk=15, tpd=32, def=14, aa=32, eva=46, acc=34, as=35, rec=10, speed=37, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=87, defMax=39, aaMax=62, evaMax=90, accMax=94, asMax=79, recMax=32,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=32, sDef=14, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['巴夫勒尔·改'] = {
    index=1306, rarity=5, cost=2, sp=2, type='DD', country='英国', class='战斗级1号舰', skill='新锐装备',
    hp=32, atk=18, tpd=36, def=16, aa=46, eva=46, acc=34, as=50, rec=11, speed=35.8, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=43, tpdMax=91, defMax=41, aaMax=76, evaMax=90, accMax=94, asMax=72, recMax=38,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型深弹投射器', eq2='MK.N6双联4.5英寸炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.95, rTime=0.5, sAtk=3, sTpd=36, sDef=16, sAa=10, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['瓜达卡纳尔·改'] = {
    index=1311, rarity=5, cost=2, sp=4, type='CVL', country='美国', class='卡萨布兰卡级6号舰', skill='特别鱼叉', 
    hp=52, atk=0, tpd=0, def=17, aa=45, eva=20, acc=37, as=0, rec=38, speed=20, luck=21, range='短', size='中型舰/主力舰', 
    atkMax=30, tpdMax=0, defMax=37, aaMax=75, evaMax=46, accMax=95, asMax=0, recMax=65, 
    cap1=12, cap2=12, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='TBM-3', eq2='无', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=35, rFuel=1.12, rSteel=2.1, rTime=0.8, sAtk=0, sTpd=0, sDef=9, sAa=60, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['明斯克·改'] = {
    index=1316, rarity=5, cost=2, sp=2, type='DD', country='苏联', class='38型1号舰', skill='漫长战役',
    hp=32, atk=15, tpd=27, def=10, aa=32, eva=50, acc=34, as=35, rec=8, speed=41.7, luck=25, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=82, defMax=35, aaMax=62, evaMax=94, accMax=94, asMax=73, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国BMB型深弹炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=15, rFuel=0.5, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=27, sDef=10, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['基辅·改'] = {
    index=1323, rarity=6, cost=2, sp=2, type='DD', country='苏联', class='48型1号舰', skill='舰队前卫',
    hp=39, atk=20, tpd=32, def=12, aa=39, eva=58, acc=35, as=24, rec=8, speed=42.5, luck=8, range='短', size='小型舰/护卫舰',
    atkMax=45, tpdMax=87, defMax=37, aaMax=69, evaMax=102, accMax=95, asMax=68, recMax=26,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型动力系统', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.425, sAtk=0, sTpd=32, sDef=12, sAa=3, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['列克星敦(CV-16)·改'] = {
    index=1325, rarity=6, cost=6, sp=6, type='CV', country='美国', class='埃塞克斯级8号舰', skill='蓝色幽灵', skill2='传承者', 
    hp=72, atk=0, tpd=0, def=39, aa=70, eva=36, acc=41, as=0, rec=55, speed=33, luck=28, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=64, aaMax=100, evaMax=60, accMax=102, asMax=0, recMax=82, 
    cap1=20, cap2=20, cap3=36, cap4=20, msl1=0, msl2=0, msl3=0, msl4=0, eq1='FJ-4B（16）', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=75, rFuel=2.4, rSteel=4.5, rTime=0.8, sAtk=0, sTpd=0, sDef=20, sAa=111, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['神鹰·改'] = {
    index=1332, rarity=5, cost=4, sp=4, type='CVL', country='日本', class='神鹰型1番舰', skill='反潜护卫', 
    hp=55, atk=0, tpd=0, def=11, aa=30, eva=24, acc=39, as=0, rec=36, speed=21, luck=13, range='短', size='中型舰/护卫舰', 
    atkMax=30, tpdMax=0, defMax=31, aaMax=60, evaMax=47, accMax=95, asMax=0, recMax=63, 
    cap1=17, cap2=12, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='零战62型', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=35, rFuel=1.28, rSteel=2.3, rTime=0.725, sAtk=0, sTpd=0, sDef=6, sAa=30, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['伏尔塔·改'] = {
    index=1335, rarity=5, cost=3, sp=4, type='DD', country='法国', class='莫加多尔级2号舰', skill='高速小队',
    hp=39, atk=25, tpd=38, def=15, aa=25, eva=58, acc=34, as=30, rec=9, speed=41.6, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=50, tpdMax=93, defMax=40, aaMax=55, evaMax=102, accMax=94, asMax=74, recMax=42,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='三联550毫米氧气鱼雷', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.6, rSteel=1, rTime=0.55, sAtk=0, sTpd=38, sDef=15, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['帝国·改'] = {
    index=1339, rarity=6, cost=4, sp=5, type='CV', country='意大利', class='维内托级4号舰', skill='航空曙光', skill2='混合特击',
    hp=80, atk=0, tpd=0, def=64, aa=43, eva=34, acc=41, as=0, rec=45, speed=30, luck=9, range='短', size='大型舰/主力舰',
    atkMax=40, tpdMax=0, defMax=84, aaMax=73, evaMax=58, accMax=102, asMax=0, recMax=72,
    cap1=16, cap2=20, cap3=30, cap4=16, msl1=0, msl2=0, msl3=0, msl4=0, eq1='P.1099', eq2='G.55S', eq3='无', eq4='无',
    sFuel=70, sAmmo=75, rFuel=2.6, rSteel=4.9, rTime=1.05, sAtk=0, sTpd=0, sDef=32, sAa=50, dFuel=30, dAmmo=40, dSteel=60, dBaux=40
}

ships['波尔扎诺·改'] = {
    index=1340, rarity=5, cost=2, sp=2, type='CAV', country='意大利', class='波尔扎诺级1号舰', skill='特别空袭', 
    hp=52, atk=29, tpd=0, def=34, aa=45, eva=40, acc=43, as=29, rec=18, speed=25, luck=15, range='中', size='中型舰/护卫舰', 
    atkMax=54, tpdMax=0, defMax=49, aaMax=75, evaMax=86, accMax=101, asMax=58, recMax=56, 
    cap1=0, cap2=0, cap3=0, cap4=12, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=40, sAmmo=75, rFuel=1.3, rSteel=4.6, rTime=1.0, sAtk=29, sTpd=0, sDef=17, sAa=54, dFuel=50, dAmmo=40, dSteel=60, dBaux=6, 
}

ships['江原·改'] = {
    index=1342, rarity=5, cost=2, sp=3, type='DD', country='美国', class='DD-922', skill='新装上阵',
    hp=35, atk=20, tpd=23, def=15, aa=56, eva=42, acc=34, as=65, rec=10, speed=35, luck=22, range='短', size='小型舰/护卫舰',
    atkMax=45, tpdMax=78, defMax=40, aaMax=86, evaMax=86, accMax=94, asMax=125, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=23, sDef=15, sAa=26, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['蔚山·改'] = {
    index=1343, rarity=6, cost=2, sp=4, type='DDG', country='???', class='FF-951', skill='海域巡弋',
    hp=31, atk=12, tpd=1, def=12, aa=65, eva=50, acc=30, as=0, rec=13, speed=34, luck=15, range='短', size='小型舰/主力舰',
    atkMax=37, tpdMax=1, defMax=37, aaMax=95, evaMax=95, accMax=87, asMax=0, recMax=48,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='MK.141导弹发射架', eq2='RGM-84鱼叉反舰导弹', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.48, rSteel=0.7, rTime=0.5, sAtk=12, sTpd=1, sDef=12, sAa=94, dFuel=8, dAmmo=12, dSteel=10, dBaux=16
}

ships['忠武·改'] = {
    index=1344, rarity=5, cost=2, sp=3, type='DD', country='美国', class='DD-91', skill='舰队屏护',
    hp=32, atk=18, tpd=24, def=14, aa=53, eva=47, acc=34, as=55, rec=10, speed=37, luck=21, range='短', size='小型舰/护卫舰',
    atkMax=43, tpdMax=79, defMax=39, aaMax=83, evaMax=91, accMax=94, asMax=115, recMax=43,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型声纳', eq2='U国双联3英寸防空炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=24, sDef=14, sAa=23, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['U-1405·改'] = {
    index=1351, rarity=5, cost=7, sp=6, type='SS', country='德国', class='U-1405', skill='潜行突袭',
    hp=12, atk=2, tpd=17, def=10, aa=0, eva=30, acc=33, as=0, rec=12, speed=25, luck=10, range='短', size='小型舰/护卫舰',
    atkMax=22, tpdMax=67, defMax=25, aaMax=0, evaMax=68, accMax=102, asMax=0, recMax=28,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G7eT10线导鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.5, rSteel=0.5, rTime=0.2, sAtk=0, sTpd=17, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['星座·改'] = {
    index=1362, rarity=5, cost=6, sp=6, type='BC', country='美国', class='列克星敦级2号舰', skill='特遣先锋', skill2='先头部队',
    hp=84, atk=90, tpd=0, def=65, aa=65, eva=34, acc=44, as=0, rec=17, speed=33, luck=8, range='长', size='大型舰/主力舰',
    atkMax=115, tpdMax=0, defMax=90, aaMax=95, evaMax=69, accMax=101, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国双联5英寸平高两用炮', eq2='U国双联16英寸炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=130, rFuel=3.5, rSteel=5.6, rTime=0.9, sAtk=90, sTpd=0, sDef=65, sAa=68, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['炽热·改'] = {
    index=1363, rarity=5, cost=5, sp=5, type='DDGAA', country='苏联', class='57A型4号舰', skill='胜利巡游', 
    hp=40, atk=15, tpd=0, def=19, aa=66, eva=44, acc=32, as=50, rec=15, speed=34.5, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=0, defMax=44, aaMax=96, evaMax=82, accMax=107, asMax=78, recMax=42, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=16, msl2=16, msl3=16, msl4=0, eq1='V600防空导弹', eq2='M1“波浪”防空系统', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=55, rFuel=0.5, rSteel=0.9, rTime=0.45, sAtk=15, sTpd=0, sDef=19, sAa=96, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['鹦鹉螺·改'] = {
    index=1366, rarity=6, cost=4, sp=4, type='SS', country='美国', class='SS-168', skill='秘密潜行', skill2='两栖奇袭', 
    hp=29, atk=12, tpd=38, def=20, aa=0, eva=18, acc=34, as=0, rec=15, speed=17.4, luck=25, range='短', size='小型舰/护卫舰', 
    atkMax=32, tpdMax=88, defMax=35, aaMax=0, evaMax=45, accMax=108, asMax=0, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16鱼雷（潜艇）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.75, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=38, sDef=20, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['早春·改'] = {
    index=1372, rarity=5, cost=5, sp=5, type='DD', country='日本', class='北风型7番舰', skill='突入作战',
    hp=36, atk=15, tpd=38, def=13, aa=45, eva=40, acc=34, as=40, rec=10, speed=36.7, luck=7, range='短', size='小型舰/护卫舰',
    atkMax=40, tpdMax=93, defMax=38, aaMax=75, evaMax=90, accMax=94, asMax=84, recMax=21,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='J国六联61厘米鱼雷', eq2='先进型动力系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.5, sAtk=0, sTpd=41, sDef=13, sAa=9, dFuel=4, dAmmo=8, dSteel=6, dBaux=0
}

ships['圣乔治·改'] = {
    index=1380, rarity=6, cost=6, sp=6, type='BB', country='英国', class='N3型1号舰', skill='大舰队', skill2='巨炮火力',
    hp=92, atk=103, tpd=0, def=95, aa=50, eva=23, acc=46, as=0, rec=18, speed=23, luck=9, range='长', size='大型舰/主力舰',
    atkMax=128, tpdMax=0, defMax=115, aaMax=80, evaMax=48, accMax=102, asMax=0, recMax=45,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联18英寸主炮（N）', eq2='无', eq3='无', eq4='无',
    sFuel=130, sAmmo=185, rFuel=5, rSteel=9, rTime=1.05, sAtk=109, sTpd=0, sDef=95, sAa=39, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['七省联盟·改'] = {
    index=1400, rarity=5, cost=5, sp=5, type='CGAA', country='荷兰', class='七省联盟级2号舰', skill='联合突击', 
    hp=48, atk=25, tpd=0, def=33, aa=80, eva=45, acc=43, as=0, rec=24, speed=32, luck=30, range='中', size='中型舰/护卫舰', 
    atkMax=50, tpdMax=0, defMax=58, aaMax=110, evaMax=83, accMax=100, asMax=0, recMax=50, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=10, msl2=10, msl3=10, msl4=10, eq1='MK-10导弹发射器', eq2='小猎犬导弹', eq3='无', eq4='无',
    sFuel=30, sAmmo=75, rFuel=1.1, rSteel=2, rTime=0.6, sAtk=25, sTpd=0, sDef=33, sAa=84, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['鲃鱼·改'] = {
    index=1408, rarity=6, cost=4, sp=5, type='SS', country='美国', class='SS-220', skill='火箭潜行',
    hp=17, atk=6, tpd=39, def=17, aa=0, eva=20, acc=34, as=0, rec=16, speed=21, luck=20, range='短', size='小型舰/护卫舰',
    atkMax=26, tpdMax=89, defMax=32, aaMax=0, evaMax=47, accMax=100, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='MK.16鱼雷（潜艇）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=25, rFuel=0.64, rSteel=0.75, rTime=0.66, sAtk=0, sTpd=24, sDef=10, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0
}

ships['加里波第·改'] = {
    index=1413, rarity=5, cost=2, sp=4, type='CGAA', country='意大利', class='佣兵队长（5批次）级2号舰', skill='北极星威慑',
    hp=52, atk=31, tpd=0, def=41, aa=70, eva=44, acc=40, as=0, rec=20, speed=29, luck=25, range='中', size='中型舰/主力舰',
    atkMax=56, tpdMax=0, defMax=66, aaMax=100, evaMax=77, accMax=97, asMax=0, recMax=47,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=10, msl2=10, msl3=10, msl4=10, eq1='MK-10导弹发射器', eq2='小猎犬导弹', eq3='无', eq4='无',
    sFuel=45, sAmmo=75, rFuel=1.3, rSteel=2.45, rTime=0.725, sAtk=31, sTpd=0, sDef=41, sAa=69, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['凯利·改'] = {
    index=1414, rarity=5, cost=2, sp=2, type='DD', country='英国', class='K级1号舰', skill='战歌', 
    hp=28, atk=15, tpd=24, def=13, aa=25, eva=48, acc=32, as=33, rec=10, speed=36, luck=16, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=79, defMax=38, aaMax=55, evaMax=92, accMax=92, asMax=77, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='改良型声纳', eq2='507B迷彩（蒙巴顿粉）', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.5, sAtk=3, sTpd=24, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['47工程·改'] = {
    index=1416, rarity=6, cost=2, sp=3, type='DD', country='苏联', class='47型1号舰', skill='新起点', 
    hp=36, atk=18, tpd=32, def=22, aa=51, eva=52, acc=35, as=35, rec=5, speed=38, luck=7, range='短', size='小型舰/护卫舰', 
    atkMax=43, tpdMax=87, defMax=47, aaMax=81, evaMax=96, accMax=95, asMax=84, recMax=16, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-2-1双联130毫米炮', eq2='S国СМ-2-1双联130毫米炮', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.5, rSteel=0.9, rTime=0.55, sAtk=0, sTpd=32, sDef=22, sAa=15, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['史密斯·改'] = {
    index=1425, rarity=5, cost=2, sp=2, type='DD', country='美国', class='DD-378', skill='幸运水花', 
    hp=32, atk=15, tpd=32, def=14, aa=32, eva=46, acc=34, as=35, rec=10, speed=37, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=87, defMax=39, aaMax=62, evaMax=90, accMax=94, asMax=79, recMax=32, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='五联533毫米鱼雷（MK17）', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=32, sDef=14, sAa=5, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['彼得·施特拉塞尔·改'] = {
    index=1426, rarity=6, cost=2, sp=2, type='CV', country='德国', class='齐柏林伯爵级2号舰', skill='超重型航弹', skill2='帝国荣光', 
    hp=64, atk=0, tpd=0, def=37, aa=40, eva=38, acc=40, as=0, rec=45, speed=34, luck=6, range='短', size='大型舰/主力舰', 
    atkMax=40, tpdMax=0, defMax=62, aaMax=70, evaMax=62, accMax=100, asMax=0, recMax=72, 
    cap1=16, cap2=25, cap3=17, cap4=14, msl1=0, msl2=0, msl3=0, msl4=0, eq1='P.1099', eq2='无', eq3='无', eq4='无',
    sFuel=70, sAmmo=65, rFuel=2.1, rSteel=5.2, rTime=1.05, sAtk=0, sTpd=0, sDef=22, sAa=44, dFuel=30, dAmmo=40, dSteel=60, dBaux=40, 
}

ships['马伊·布雷泽·改'] = {
    index=1429, rarity=5, cost=2, sp=2, type='DD', country='法国', class='T47型7号舰', skill='进攻式护卫', 
    hp=39, atk=12, tpd=25, def=12, aa=65, eva=44, acc=35, as=68, rec=20, speed=36, luck=22, range='短', size='小型舰/护卫舰', 
    atkMax=37, tpdMax=80, defMax=37, aaMax=95, evaMax=82, accMax=95, asMax=128, recMax=47, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=30, rFuel=0.7, rSteel=0.96, rTime=0.5, sAtk=0, sTpd=25, sDef=12, sAa=29, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['捷尔任斯基·改'] = {
    index=1430, rarity=5, cost=5, sp=5, type='CGAA', country='苏联', class='70э型1号舰', skill='德维纳波涛', 
    hp=52, atk=36, tpd=0, def=33, aa=75, eva=41, acc=39, as=0, rec=26, speed=33, luck=17, range='中', size='中型舰/护卫舰', 
    atkMax=61, tpdMax=0, defMax=58, aaMax=105, evaMax=74, accMax=96, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=12, msl2=12, msl3=12, msl4=12, eq1='S-75防空导弹', eq2='“德维纳”防空系统（发射架）', eq3='无', eq4='无',
    sFuel=30, sAmmo=75, rFuel=0.9, rSteel=1.7, rTime=0.55, sAtk=36, sTpd=0, sDef=33, sAa=77, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['什罗普郡·改'] = {
    index=1431, rarity=5, cost=1, sp=3, type='CA', country='英国', class='伦敦级4号舰', skill='红色蔷薇',
    hp=60, atk=40, tpd=20, def=32, aa=51, eva=37, acc=40, as=0, rec=24, speed=31.5, luck=20, range='中', size='中型舰/护卫舰',
    atkMax=65, tpdMax=60, defMax=47, aaMax=81, evaMax=84, accMax=97, asMax=0, recMax=62,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国双联4英寸炮', eq2='U国厄利孔20毫米炮(双联)', eq3='无', eq4='无',
    sFuel=35, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.75, sAtk=44, sTpd=10, sDef=16, sAa=41, dFuel=30, dAmmo=40, dSteel=30, dBaux=0,
}

ships['塔林'] = {
    index=1456, rarity=5, cost=2, sp=2, type='CL', country='苏联', class='83K型1号舰', skill='坚持奋战',
    hp=64, atk=41, tpd=0, def=42, aa=70, eva=38, acc=39, as=35, rec=20, speed=32.6, luck=19, range='中', size='中型舰/护卫舰',
    atkMax=76, tpdMax=0, defMax=67, aaMax=100, evaMax=83, accMax=97, asMax=79, recMax=59,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国СМ-5-1双联100毫米高炮', eq2='S国СМ-20-ЗИФ四联45毫米高炮', eq3='S国三联Б-38型152毫米炮', eq4='无',
    sFuel=45, sAmmo=80, rFuel=1.5, rSteel=2.8, rTime=0.8, sAtk=21, sTpd=0, sDef=21, sAa=69, dFuel=10, dAmmo=16, dSteel=10, dBaux=0
}

ships['鞍山·改'] = {
    index=1467, rarity=5, cost=5, sp=5, type='DDG', country='中国', class='07型1号舰', skill='力争上游', skill2='四大金刚（联）', 
    hp=33, atk=17, tpd=0, def=15, aa=35, eva=45, acc=40, as=0, rec=15, speed=39, luck=25, range='短', size='小型舰/主力舰', 
    atkMax=42, tpdMax=0, defMax=40, aaMax=65, evaMax=93, accMax=100, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='上游-1发射器', eq2='上游-1导弹', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=65, rFuel=0.48, rSteel=1.5, rTime=0.8, sAtk=17, sTpd=0, sDef=15, sAa=35, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['胜利·改'] = {
    index=1483, rarity=6, cost=2, sp=5, type='AV', country='英国', class='光辉级2号舰', skill='协同出击', skill2='喷气突击队', 
    hp=80, atk=0, tpd=0, def=66, aa=71, eva=36, acc=36, as=0, rec=42, speed=30.5, luck=25, range='短', size='大型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=96, aaMax=101, evaMax=66, accMax=97, asMax=0, recMax=78, 
    cap1=20, cap2=21, cap3=15, cap4=11, msl1=0, msl2=0, msl3=0, msl4=0, eq1='掠夺者攻击机', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=90, rFuel=3, rSteel=5.5, rTime=1.0, sAtk=3, sTpd=0, sDef=33, sAa=106, dFuel=20, dAmmo=20, dSteel=40, dBaux=10, 
}

ships['克劳塞维茨·改'] = {
    index=1490, rarity=5, cost=2, sp=2, type='BC', country='德国', class='O级1号舰', skill='大洋袭击', skill2='战争论', 
    hp=72, atk=66, tpd=10, def=60, aa=40, eva=36, acc=37, as=0, rec=17, speed=35, luck=6, range='长', size='大型舰/主力舰', 
    atkMax=91, tpdMax=45, defMax=80, aaMax=70, evaMax=73, accMax=94, asMax=0, recMax=44, 
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='无', eq3='无', eq4='无',
    sFuel=60, sAmmo=130, rFuel=2.8, rSteel=5.8, rTime=0.75, sAtk=66, sTpd=0, sDef=64, sAa=24, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['诺福克(DL-1)·改'] = {
    index=1496, rarity=5, cost=2, sp=3, type='DD', country='美国', class='DL-1', skill='新锐战力', 
    hp=43, atk=21, tpd=28, def=17, aa=65, eva=41, acc=35, as=70, rec=24, speed=32, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=46, tpdMax=83, defMax=42, aaMax=95, evaMax=91, accMax=92, asMax=136, recMax=51, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=35, rFuel=0.7, rSteel=1.2, rTime=0.4, sAtk=0, sTpd=28, sDef=17, sAa=35, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['T-23·改'] = {
    index=1503, rarity=4, cost=2, sp=2, type='DD', country='德国', class='1939型2号舰', skill='七岛功臣', 
    hp=32, atk=12, tpd=26, def=11, aa=35, eva=46, acc=35, as=35, rec=9, speed=33.5, luck=24, range='短', size='小型舰/护卫舰', 
    atkMax=37, tpdMax=81, defMax=36, aaMax=65, evaMax=90, accMax=92, asMax=71, recMax=36, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.8, rTime=0.45, sAtk=0, sTpd=26, sDef=13, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['谦逊·改'] = {
    index=1509, rarity=5, cost=4, sp=4, type='DDGAA', country='苏联', class='56型6号舰', skill='远航',
    hp=40, atk=21, tpd=0, def=14, aa=60, eva=36, acc=32, as=48, rec=24, speed=34.5, luck=16, range='短', size='小型舰/护卫舰',
    atkMax=46, tpdMax=0, defMax=39, aaMax=90, evaMax=85, accMax=107, asMax=74, recMax=51,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=16, msl2=16, msl3=16, msl4=0, eq1='V600防空导弹', eq2='M1“波浪”防空系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=40, rFuel=0.5, rSteel=0.9, rTime=0.45, sAtk=21, sTpd=0, sDef=14, sAa=84, dFuel=8, dAmmo=12, dSteel=10, dBaux=16,
}

ships['日丹诺夫·改'] = {
    index=1516, rarity=5, cost=2, sp=2, type='CL', country='苏联', class='68у型1号舰', skill='舰队指挥', 
    hp=52, atk=31, tpd=0, def=33, aa=82, eva=43, acc=39, as=40, rec=25, speed=32, luck=18, range='中', size='中型舰/护卫舰', 
    atkMax=66, tpdMax=0, defMax=58, aaMax=112, evaMax=76, accMax=96, asMax=84, recMax=41, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='S国三联Б-38型152毫米炮', eq2='Оса-М防空系统（68У）', eq3='无', eq4='无',
    sFuel=25, sAmmo=45, rFuel=0.9, rSteel=1.6, rTime=0.55, sAtk=16, sTpd=0, sDef=17, sAa=87, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['吕贝克·改'] = {
    index=1517, rarity=5, cost=2, sp=2, type='DD', country='德国', class='科隆级5号舰', skill='和平卫士', 
    hp=36, atk=15, tpd=20, def=12, aa=59, eva=46, acc=35, as=62, rec=22, speed=32, luck=10, range='短', size='小型舰/护卫舰', 
    atkMax=40, tpdMax=75, defMax=37, aaMax=89, evaMax=90, accMax=92, asMax=128, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=20, sDef=14, sAa=23, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['T.995·改'] = {
    index=1519, rarity=4, cost=3, sp=3, type='DD', country='中国', class='T.995型1号舰', skill='神机妙算',
    hp=28, atk=7, tpd=18, def=8, aa=16, eva=48, acc=35, as=24, rec=6, speed=30, luck=6, range='短', size='小型舰/护卫舰',
    atkMax=32, tpdMax=73, defMax=33, aaMax=46, evaMax=92, accMax=92, asMax=57, recMax=40,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=10, sAmmo=15, rFuel=0.46, rSteel=0.8, rTime=0.3, sAtk=0, sTpd=18, sDef=8, sAa=0, dFuel=4, dAmmo=8, dSteel=6, dBaux=0,
}

ships['CNT巡洋舰·改'] = {
    index=1527, rarity=5, cost=2, sp=2, type='CL', country='中国', class='CNT.68', skill='蒙法尔科内旧梦', 
    hp=43, atk=26, tpd=10, def=29, aa=22, eva=25, acc=38, as=25, rec=8, speed=28, luck=6, range='中', size='中型舰/护卫舰', 
    atkMax=56, tpdMax=55, defMax=49, aaMax=52, evaMax=70, accMax=97, asMax=69, recMax=19, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=25, rFuel=0.7, rSteel=1.3, rTime=0.55, sAtk=13, sTpd=10, sDef=15, sAa=11, dFuel=10, dAmmo=16, dSteel=10, dBaux=0, 
}

ships['芝加哥(CA-136)·改'] = {
    index=1528, rarity=5, cost=5, sp=5, type='CGAA', country='美国', class='CG-11', skill='天穹守护', 
    hp=60, atk=36, tpd=0, def=43, aa=82, eva=41, acc=40, as=0, rec=25, speed=33, luck=18, range='中', size='中型舰/护卫舰', 
    atkMax=61, tpdMax=0, defMax=68, aaMax=112, evaMax=85, accMax=97, asMax=0, recMax=54, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=12, msl2=12, msl3=12, msl4=12, eq1='黄铜骑士防空导弹', eq2='MK12导弹发射系统', eq3='无', eq4='无',
    sFuel=40, sAmmo=70, rFuel=1.28, rSteel=2.4, rTime=0.625, sAtk=36, sTpd=0, sDef=43, sAa=94, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['M-296·改'] = {
    index=1530, rarity=5, cost=4, sp=4, type='SS', country='苏联', class='M-296', skill='AIP', 
    hp=12, atk=3, tpd=23, def=15, aa=0, eva=34, acc=34, as=0, rec=15, speed=16, luck=15, range='短', size='小型舰/护卫舰', 
    atkMax=23, tpdMax=73, defMax=30, aaMax=0, evaMax=78, accMax=108, asMax=0, recMax=52, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=20, sAmmo=20, rFuel=0.6, rSteel=0.65, rTime=0.3, sAtk=0, sTpd=23, sDef=15, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['但丁·改'] = {
    index=1532, rarity=5, cost=2, sp=2, type='BB', country='意大利', class='但丁级1号舰', skill='最初三联', skill2='纵队轰击', 
    hp=56, atk=63, tpd=0, def=64, aa=23, eva=26, acc=45, as=0, rec=13, speed=22, luck=16, range='长', size='大型舰/主力舰', 
    atkMax=88, tpdMax=0, defMax=84, aaMax=53, evaMax=51, accMax=100, asMax=0, recMax=42, 
    cap1=2, cap2=2, cap3=2, cap4=2, msl1=0, msl2=0, msl3=0, msl4=0, eq1='I国三联305毫米炮', eq2='标准型动力系统', eq3='无', eq4='无',
    sFuel=75, sAmmo=105, rFuel=2.25, rSteel=4.6, rTime=1.0, sAtk=63, sTpd=0, sDef=64, sAa=12, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['伊-25·改'] = {
    index=1538, rarity=4, cost=5, sp=5, type='SS', country='日本', class='伊-15型6番舰', skill='大洋巡弋', 
    hp=21, atk=4, tpd=45, def=12, aa=0, eva=17, acc=33, as=0, rec=15, speed=23.6, luck=13, range='短', size='小型舰/护卫舰', 
    atkMax=24, tpdMax=95, defMax=27, aaMax=0, evaMax=44, accMax=103, asMax=0, recMax=53, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='53厘米氧气鱼雷(潜艇)', eq2='无', eq3='无', eq4='不可装备',
    sFuel=25, sAmmo=30, rFuel=0.6, rSteel=0.7, rTime=0.35, sAtk=0, sTpd=48, sDef=12, sAa=0, dFuel=10, dAmmo=10, dSteel=20, dBaux=0, 
}

ships['威悉河·改'] = {
    index=1545, rarity=5, cost=2, sp=2, type='CVL', country='德国', class='威悉河型1号舰', skill='未曾设想之路', 
    hp=68, atk=0, tpd=0, def=37, aa=45, eva=38, acc=38, as=0, rec=45, speed=32, luck=7, range='短', size='中型舰/护卫舰', 
    atkMax=40, tpdMax=0, defMax=57, aaMax=75, evaMax=83, accMax=95, asMax=0, recMax=72, 
    cap1=11, cap2=11, cap3=10, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='P.1099', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=70, rFuel=1.3, rSteel=2.64, rTime=0.8, sAtk=0, sTpd=0, sDef=22, sAa=54, dFuel=20, dAmmo=30, dSteel=50, dBaux=20, 
}

ships['石勒苏益格-荷尔施泰因·改'] = {
    index=1560, rarity=4, cost=2, sp=2, type='BM', country='德国', class='德意志级5号舰', skill='凯撒炮术', 
    hp=68, atk=44, tpd=0, def=54, aa=30, eva=21, acc=43, as=0, rec=15, speed=18, luck=21, range='长', size='小型舰/护卫舰', 
    atkMax=74, tpdMax=0, defMax=74, aaMax=60, evaMax=56, accMax=99, asMax=0, recMax=26, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='不可装备',
    sFuel=40, sAmmo=65, rFuel=1.3, rSteel=1.2, rTime=0.55, sAtk=44, sTpd=0, sDef=57, sAa=0, dFuel=20, dAmmo=20, dSteel=30, dBaux=0, 
}

ships['威武·改'] = {
    index=1575, rarity=5, cost=5, sp=5, type='DDGAA', country='苏联', class='56型14号舰', skill='特化先驱', 
    hp=40, atk=21, tpd=0, def=14, aa=64, eva=37, acc=32, as=48, rec=21, speed=35, luck=17, range='短', size='小型舰/护卫舰', 
    atkMax=46, tpdMax=0, defMax=39, aaMax=94, evaMax=86, accMax=107, asMax=74, recMax=48, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=16, msl2=16, msl3=16, msl4=0, eq1='V600防空导弹', eq2='M1“波浪”防空系统', eq3='无', eq4='不可装备',
    sFuel=15, sAmmo=40, rFuel=0.5, rSteel=0.9, rTime=0.45, sAtk=21, sTpd=0, sDef=14, sAa=92, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['卡拉乔洛·改'] = {
    index=1583, rarity=5, cost=2, sp=2, type='BB', country='意大利', class='卡拉乔洛级1号舰', skill='圣翼裁决', 
    hp=73, atk=75, tpd=0, def=70, aa=28, eva=24, acc=44, as=0, rec=13, speed=28, luck=7, range='长', size='大型舰/主力舰', 
    atkMax=95, tpdMax=0, defMax=90, aaMax=58, evaMax=51, accMax=104, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=80, sAmmo=130, rFuel=2.5, rSteel=5.1, rTime=1.1, sAtk=75, sTpd=0, sDef=70, sAa=14, dFuel=50, dAmmo=60, dSteel=60, dBaux=0, 
}

ships['休·W·哈德利·改'] = {
    index=1589, rarity=5, cost=3, sp=4, type='DD', country='美国', class='DD-774', skill='枪弹帷幕', 
    hp=37, atk=18, tpd=28, def=15, aa=56, eva=48, acc=39, as=40, rec=10, speed=38.5, luck=20, range='短', size='小型舰/护卫舰', 
    atkMax=43, tpdMax=83, defMax=40, aaMax=86, evaMax=93, accMax=93, asMax=84, recMax=37, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='先进型对空雷达', eq2='五联533毫米鱼雷（MK17）', eq3='VT引信炮弹', eq4='不可装备',
    sFuel=15, sAmmo=25, rFuel=0.48, rSteel=0.9, rTime=0.4, sAtk=0, sTpd=28, sDef=15, sAa=26, dFuel=4, dAmmo=8, dSteel=6, dBaux=0, 
}

ships['金伯恩·改'] = {
    index=1590, rarity=5, cost=5, sp=5, type='BC', country='苏联', class='伊兹梅尔级3号舰', skill='先锋突破', skill2='巡洋阵列', 
    hp=80, atk=95, tpd=0, def=66, aa=36, eva=37, acc=43, as=0, rec=16, speed=28.5, luck=9, range='长', size='大型舰/主力舰', 
    atkMax=120, tpdMax=0, defMax=91, aaMax=66, evaMax=72, accMax=100, asMax=0, recMax=44, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='无', eq2='无', eq3='无', eq4='无',
    sFuel=75, sAmmo=125, rFuel=2.8, rSteel=5, rTime=1.0, sAtk=95, sTpd=0, sDef=66, sAa=18, dFuel=40, dAmmo=50, dSteel=40, dBaux=0, 
}

ships['汉堡·改'] = {
    index=1606, rarity=5, cost=4, sp=4, type='DDG', country='德国', class='汉堡级1号舰', skill='锐卫', 
    hp=43, atk=20, tpd=0, def=18, aa=67, eva=49, acc=42, as=0, rec=25, speed=35, luck=15, range='短', size='小型舰/主力舰', 
    atkMax=45, tpdMax=0, defMax=43, aaMax=97, evaMax=97, accMax=100, asMax=0, recMax=42, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=8, msl2=8, msl3=8, msl4=0, eq1='“飞鱼”反舰导弹', eq2='“飞鱼”导弹发射箱（MM38）', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=60, rFuel=0.6, rSteel=1, rTime=0.5, sAtk=20, sTpd=0, sDef=20, sAa=98, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['米切尔·改'] = {
    index=1618, rarity=5, cost=4, sp=4, type='DDGAA', country='美国', class='DDG-35', skill='终极粉碎', 
    hp=44, atk=20, tpd=0, def=22, aa=69, eva=47, acc=43, as=58, rec=28, speed=34, luck=16, range='短', size='小型舰/护卫舰', 
    atkMax=45, tpdMax=0, defMax=47, aaMax=99, evaMax=95, accMax=105, asMax=124, recMax=42, 
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=20, msl2=20, msl3=20, msl4=0, eq1='MK13导弹发射系统', eq2='鞑靼人防空导弹', eq3='无', eq4='不可装备',
    sFuel=30, sAmmo=40, rFuel=0.7, rSteel=1.2, rTime=0.4, sAtk=20, sTpd=0, sDef=22, sAa=109, dFuel=8, dAmmo=12, dSteel=10, dBaux=16, 
}

ships['欧根亲王（圣诞节）'] = {
    index=8038, rarity=5, cost=1, sp=2, type='CA', country='德国', class='',
    hp=54, atk=36, tpd=20, def=36, aa=22, eva=30, acc=37, as=0, rec=14, speed=32, luck=25, range='中', size='中型舰/护卫舰',
    atkMax=56, tpdMax=55, defMax=51, aaMax=52, evaMax=74, accMax=93, asMax=0, recMax=52,
    cap1=3, cap2=3, cap3=3, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联203毫米炮', eq2='无', eq3='无', eq4='不可装备',
    sFuel=35, sAmmo=65, rFuel=1.28, rSteel=2.64, rTime=0.75, sAtk=36, sTpd=10, sDef=21, sAa=11, dFuel=30, dAmmo=40, dSteel=30, dBaux=0
}

ships['萝德尼'] = {
    index=8009, rarity=5, cost=3, sp=2, type='BB', country='英国', class='纳尔逊级2号舰', skill='BIG SEVEN', skill2='复仇',
    hp=72, atk=84, tpd=0, def=72, aa=42, eva=19, acc=39, as=0, rec=12, speed=23.5, luck=20, range='长', size='大型舰/主力舰',
    atkMax=104, tpdMax=0, defMax=92, aaMax=72, evaMax=41, accMax=95, asMax=0, recMax=39,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='E国三联16英寸炮', eq2='E国双联6英寸炮', eq3='无', eq4='无',
    sFuel=90, sAmmo=140, rFuel=3.2, rSteel=6, rTime=1, sAtk=89, sTpd=0, sDef=72, sAa=27, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['提尔比茨（儿童节）'] = {
    index=8007, rarity=5, cost=3, sp=2, type='BB', country='德国', class='俾斯麦级2号舰', skill='北方的孤独女王',
    hp=91, atk=72, tpd=0, def=80, aa=25, eva=26, acc=40, as=0, rec=16, speed=30.8, luck=16, range='长', size='大型舰/主力舰',
    atkMax=92, tpdMax=0, defMax=100, aaMax=55, evaMax=48, accMax=96, asMax=0, recMax=43,
    cap1=4, cap2=4, cap3=4, cap4=4, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联380毫米炮', eq2='G国双联150毫米炮', eq3='AR-196水上侦察机', eq4='无',
    sFuel=90, sAmmo=130, rFuel=4.2, rSteel=8.8, rTime=1, sAtk=72, sTpd=0, sDef=84, sAa=13, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

ships['戈本'] = {
    index=8116, rarity=5, cost=0, sp=2, type='BC', country='undefined', class='毛奇级2号舰',
    hp=59, atk=48, tpd=0, def=45, aa=15, eva=27, acc=40, as=0, rec=10, speed=28.4, luck=45, range='长', size='大型舰/主力舰',
    atkMax=73, tpdMax=0, defMax=60, aaMax=45, evaMax=49, accMax=96, asMax=0, recMax=37,
    cap1=0, cap2=0, cap3=0, cap4=0, msl1=0, msl2=0, msl3=0, msl4=0, eq1='G国双联280毫米主炮(旧)', eq2='G国单装150毫米炮', eq3='无', eq4='无',
    sFuel=55, sAmmo=100, rFuel=2.88, rSteel=5.4, rTime=0.75, sAtk=48, sTpd=0, sDef=45, sAa=8, dFuel=40, dAmmo=50, dSteel=40, dBaux=0
}

ships['华盛顿（儿童节）'] = {
    index=8111, rarity=5, cost=3, sp=2, type='BB', country='美国', class='北卡罗来纳级2号舰', skill='火控雷达',
    hp=74, atk=88, tpd=0, def=72, aa=60, eva=25, acc=40, as=0, rec=18, speed=28, luck=30, range='长', size='大型舰/主力舰',
    atkMax=108, tpdMax=0, defMax=92, aaMax=90, evaMax=58, accMax=96, asMax=0, recMax=45,
    cap1=3, cap2=3, cap3=3, cap4=3, msl1=0, msl2=0, msl3=0, msl4=0, eq1='U国三联16英寸炮(MK6)', eq2='先进型火控雷达', eq3='无', eq4='无',
    sFuel=95, sAmmo=140, rFuel=4.2, rSteel=8, rTime=0.8, sAtk=88, sTpd=0, sDef=72, sAa=60, dFuel=50, dAmmo=60, dSteel=60, dBaux=0
}

----------------------------------------------------------------------------------------------------

-- Average and standard deviation values of each type: --

stats['BB'] = {
    hp = { mean=71.02439024390245, stddev=10.561957835899127 },
    atkMax = { mean=94.6867469879518, stddev=14.33563503901343 },
    tpdMax = { mean=42, stddev=2.32992949004287 },
    defMax = { mean=84.83132530120481, stddev=15.707555489052686 },
    aaMax = { mean=67.40963855421687, stddev=19.152173757144677 },
    evaMax = { mean=47.89156626506024, stddev=8.855220381486939 },
    accMax = { mean=90.14666666666666, stddev=0.995847233119474 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=38.95180722891566, stddev=2.979210954868023 },
    speed = { mean=27.650602409638555, stddev=4.312577280862193 },
    luck = { mean=14.55421686746988, stddev=7.2216696469016295 }
    }

stats['BBmod'] = {
    hp = { mean=76.66666666666667, stddev=7.101885778382767 },
    atkMax = { mean=101.625, stddev=11.869587051544528 },
    tpdMax = { mean=39, stddev=12.727922061357855 },
    defMax = { mean=94.48387096774194, stddev=9.211843708841842 },
    aaMax = { mean=84.40625, stddev=16.452981639773068 },
    evaMax = { mean=53.5625, stddev=8.915146589354402 },
    accMax = { mean=96, stddev=1.1254628677422756 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=43.40625, stddev=3.4906268500731517 },
    speed = { mean=26.378124999999997, stddev=4.071754347666609 },
    luck = { mean=17.84375, stddev=6.896045500748026 }
    }

stats['CV'] = {
    hp = { mean=60.625, stddev=10.206734019990856 },
    atkMax = { mean=40, stddev=0 },
    tpdMax = { mean=NaN, stddev=0 },
    defMax = { mean=61, stddev=10.583005244258363 },
    aaMax = { mean=75.96969696969697, stddev=14.226921769318304 },
    evaMax = { mean=50.833333333333336, stddev=2.6403152023605223 },
    accMax = { mean=88.36363636363636, stddev=3.863435823672547 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=67.48484848484848, stddev=4.671196394669759 },
    speed = { mean=31.953125000000007, stddev=2.0936130792977132 },
    luck = { mean=13.32258064516129, stddev=6.685242936369596 }
    }

stats['CVmod'] = {
    hp = { mean=70.5, stddev=15.006665185843255 },
    atkMax = { mean=42.333333333333336, stddev=2.581988897471611 },
    tpdMax = { mean=NaN, stddev=0 },
    defMax = { mean=69.5, stddev=12.873745893613611 },
    aaMax = { mean=74.9375, stddev=9.377055330255157 },
    evaMax = { mean=59.3125, stddev=5.929797635670209 },
    accMax = { mean=96.07142857142857, stddev=1.3280573269766116 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=74.5, stddev=9.025888691240695 },
    speed = { mean=31.856249999999996, stddev=2.4421216868398137 },
    luck = { mean=14.533333333333333, stddev=10.23206910137134 }
    }

stats['CVL'] = {
    hp = { mean=34.421052631578945, stddev=5.630431101253696 },
    atkMax = { mean=20, stddev=0 },
    tpdMax = { mean=NaN, stddev=0 },
    defMax = { mean=33.68181818181818, stddev=6.0740381455782275 },
    aaMax = { mean=58.45454545454545, stddev=11.358769520579463 },
    evaMax = { mean=42, stddev=6.7259270913454925 },
    accMax = { mean=84.45454545454545, stddev=0.5958006000151015 },
    asMax = { mean=15, stddev=NaN },
    recMax = { mean=60.72727272727273, stddev=3.073416250020072 },
    speed = { mean=23.79090909090909, stddev=5.372851428015898 },
    luck = { mean=17.454545454545453, stddev=5.836888217986025 }
    }

stats['CVLmod'] = {
    hp = { mean=51.7, stddev=10.954958288880478 },
    atkMax = { mean=29.5, stddev=2.8382310609877335 },
    tpdMax = { mean=NaN, stddev=0 },
    defMax = { mean=42.4, stddev=6.275171533733383 },
    aaMax = { mean=68.5, stddev=10.036046144883064 },
    evaMax = { mean=50.9, stddev=7.852105167122735 },
    accMax = { mean=90.3, stddev=0.48304589153964794 },
    asMax = { mean=15, stddev=NaN },
    recMax = { mean=67, stddev=5.715476066494082 },
    speed = { mean=23.369999999999997, stddev=5.820662428891673 },
    luck = { mean=18.9, stddev=6.854844191437825 }
    }

stats['CA'] = {
    hp = { mean=45.719298245614034, stddev=5.482942334331452 },
    atkMax = { mean=59.54716981132076, stddev=5.408561723130954 },
    tpdMax = { mean=52.47222222222222, stddev=6.11081528865531 },
    defMax = { mean=48.982142857142854, stddev=6.271120159265652 },
    aaMax = { mean=60.39622641509434, stddev=11.429280249633983 },
    evaMax = { mean=71.88679245283019, stddev=2.9264074678066025 },
    accMax = { mean=86.38775510204081, stddev=0.5706840387717566 },
    asMax = { mean=50, stddev=NaN },
    recMax = { mean=49.64705882352941, stddev=2.0574112803400766 },
    speed = { mean=33.22407407407408, stddev=1.2284266951482696 },
    luck = { mean=14.43859649122807, stddev=5.834067264964497 }
    }

stats['CAmod'] = {
    hp = { mean=55.36363636363637, stddev=5.892250395104974 },
    atkMax = { mean=68.45454545454545, stddev=6.4492692293835585 },
    tpdMax = { mean=67.38461538461539, stddev=6.423115307731154 },
    defMax = { mean=52.904761904761905, stddev=3.534186779228878 },
    aaMax = { mean=71.81818181818181, stddev=13.957883464999657 },
    evaMax = { mean=80.77272727272727, stddev=2.689163760651577 },
    accMax = { mean=92, stddev=0 },
    asMax = { mean=50, stddev=NaN },
    recMax = { mean=55.77272727272727, stddev=5.254764896030468 },
    speed = { mean=33.46818181818182, stddev=1.2009465963450359 },
    luck = { mean=15.523809523809524, stddev=4.760452159396706 }
    }

stats['CL'] = {
    hp = { mean=29.146341463414632, stddev=5.087195135936803 },
    atkMax = { mean=48.63414634146341, stddev=8.182354086573916 },
    tpdMax = { mean=54.152542372881356, stddev=5.9908365638901 },
    defMax = { mean=41.609756097560975, stddev=8.855152782644392 },
    aaMax = { mean=67.23170731707317, stddev=22.966588066568615 },
    evaMax = { mean=66.26984126984127, stddev=2.0494401218645155 },
    accMax = { mean=85.53846153846153, stddev=0.8481041912882634 },
    asMax = { mean=64.40243902439025, stddev=7.543879468450415 },
    recMax = { mean=20.014285714285716, stddev=1.7733359796988304 },
    speed = { mean=33.05428571428571, stddev=1.85250990838444 },
    luck = { mean=17.38961038961039, stddev=5.1302914766785035 }
    }

stats['CLmod'] = {
    hp = { mean=41.73913043478261, stddev=5.109860265874096 },
    atkMax = { mean=55.95652173913044, stddev=8.38005348686318 },
    tpdMax = { mean=68.94444444444444, stddev=5.723760818596173 },
    defMax = { mean=41, stddev=7.31747596821845 },
    aaMax = { mean=68.21739130434783, stddev=16.222757645130752 },
    evaMax = { mean=75.54545454545455, stddev=4.96393922612804 },
    accMax = { mean=91.08333333333333, stddev=0.8297022339981068 },
    asMax = { mean=79.04166666666667, stddev=12.142197948250256 },
    recMax = { mean=33.27272727272727, stddev=3.8195215130621523 },
    speed = { mean=33.25000000000001, stddev=1.3759207443515207 },
    luck = { mean=17.91304347826087, stddev=4.71856144755871 }
    }

stats['DD'] = {
    hp = { mean=17.390243902439025, stddev=2.8302642706403462 },
    atkMax = { mean=29.863247863247864, stddev=2.0422518964916736 },
    tpdMax = { mean=71.35833333333333, stddev=4.103279756719583 },
    defMax = { mean=22.159574468085108, stddev=0.644299928310319 },
    aaMax = { mean=47.68333333333333, stddev=7.47205812752179 },
    evaMax = { mean=77.96521739130435, stddev=3.186953764087537 },
    accMax = { mean=82, stddev=0 },
    asMax = { mean=54.63157894736842, stddev=5.1769796057976585 },
    recMax = { mean=15.82882882882883, stddev=0.7492283772943755 },
    speed = { mean=36.77280701754385, stddev=2.0726745189593183 },
    luck = { mean=14.708333333333334, stddev=6.527763374837601 }
    }

stats['DDmod'] = {
    hp = { mean=33.1551724137931, stddev=3.4983791943263993 },
    atkMax = { mean=40.07142857142857, stddev=2.702572127417898 },
    tpdMax = { mean=84.53448275862068, stddev=6.532551467469362 },
    defMax = { mean=38.924528301886795, stddev=1.4786825815800415 },
    aaMax = { mean=59.41379310344828, stddev=12.625558153732648 },
    evaMax = { mean=87.81132075471699, stddev=3.3053371978198722 },
    accMax = { mean=88.13793103448276, stddev=0.9449454799471741 },
    asMax = { mean=70.51851851851852, stddev=8.667311699911577 },
    recMax = { mean=34.945454545454545, stddev=3.466336425606755 },
    speed = { mean=36.95660377358491, stddev=1.8124048446069427 },
    luck = { mean=13.6, stddev=4.9575979846875216 }
    }

stats['SS'] = {
    hp = { mean=10.8, stddev=1.6415653633362466 },
    atkMax = { mean=24.095238095238095, stddev=1.7579750255553095 },
    tpdMax = { mean=69.83333333333333, stddev=5.329708913388168 },
    defMax = { mean=25.095238095238095, stddev=1.1791845447071423 },
    aaMax = { mean=NaN, stddev=0 },
    evaMax = { mean=38.6, stddev=2.9271865421649466 },
    accMax = { mean=90.6470588235294, stddev=0.6063390625908325 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=42.4, stddev=1.4290224851827544 },
    speed = { mean=18.509090909090904, stddev=2.057022603507796 },
    luck = { mean=16, stddev=7.277123177405371 }
    }

stats['SSmod'] = {
    hp = { mean=16.833333333333332, stddev=4.400757510550504 },
    atkMax = { mean=29.833333333333332, stddev=12.416387021459451 },
    tpdMax = { mean=78.5, stddev=9.648834126463155 },
    defMax = { mean=30.666666666666668, stddev=3.3266599866332394 },
    aaMax = { mean=NaN, stddev=0 },
    evaMax = { mean=47.5, stddev=8.61974477580398 },
    accMax = { mean=97.16666666666667, stddev=4.215052391924288 },
    asMax = { mean=NaN, stddev=0 },
    recMax = { mean=42, stddev=7.5099933422074345 },
    speed = { mean=20.25, stddev=2.715695122800054 },
    luck = { mean=18.833333333333332, stddev=8.01040989379861 }
    }


----------------------------------------------------------------------------------------------------

ships['圣诞服'] = {
    index='11_1',
    gold='80战利品',
    desc1='雪花弥漫的平安夜，来杯酒暖暖身吧！不过想喝赢内华达恐怕还早了100年。',
    desc2='参加圣诞节活动的特别礼服。比起送礼物，品尝美酒才是她的第一要务，荷马正全力阻止着悲剧发生……',
    }

ships['圣诞服'] = {
    index='38_1',
    gold='80战利品',
    desc1='欧根亲王的圣诞服，每年圣诞节期间有机会获得。',
    desc2='战时适逢圣诞节。为了让队友也能过上愉快的圣诞节，欧根穿上圣诞服饰为每位队友送上小小的圣诞心意同时也祝福各位圣诞快乐。',
    }

ships['暗影突袭'] = {
    index='59_2',
    gold='300',
    desc1='帝国特供，更加厚实，更加保暖。',
    desc2='橙色品质，值得信赖。',
    }

ships['冬季作战服'] = {
    index='82_1',
    gold='300',
    desc1='更暖！更皮实！还能在脑袋里“打电话”？爸爸再也不用担心我的英语成绩了！',
    desc2='将魔力炉调整至广域模式的作战装备，散布出的粒子不仅能供暖，附在对象身上还能心灵沟通（待验证）',
    }

ships['红白偶像战'] = {
    index='133_1',
    gold='500',
    desc1='目标是，打败昆西！',
    desc2='我在偶像的舞台设下了擂台向你提出挑战，快来接受我的挑战吧！~',
    }

ships['爱之海'] = {
    index='29_1',
    gold='',
    desc1='据说这件婚纱价值520铝……',
    desc2='遇上你是今生的缘份，爱上你是我今生的幸福，守护你是我今生的选择。',
    }

ships['二号机'] = {
    index='105_1',
    gold='',
    desc1='右边那个是1P，这个是2P。',
    desc2='右边那个是1P，这个是2P。',
    }

ships['白色恶魔'] = {
    index='121_1',
    gold='',
    desc1='你们要的白丝。美利坚品质，值得信赖。',
    desc2='你们要的白丝。美利坚品质，值得信赖。',
    }

ships['猎心兔'] = {
    index='28_1',
    gold='300',
    desc1='全自动加热塑型，就算是兔子也能做出来的飞行巧克力糖果机，你值得拥有。',
    desc2='就算是蠢蠢的突击者，也要为提督送上巧克力！',
    }

ships['绯衣金带'] = {
    index='54_1',
    gold='300',
    desc1='重庆正在努力学习如何使用筷子……这个比开炮要难多了。',
    desc2='这筷子……我可以的，完全没问题，相信我……',
    }

ships['欢度佳节'] = {
    index='61_1',
    gold='80战利品',
    desc1='2016年春节赠送服装。',
    desc2='猴年到了，平海恭祝各位提督合家平安，万事如意。',
    }

ships['喜迎新春'] = {
    index='60_1',
    gold='80战利品',
    desc1='2016年春节赠送服装。',
    desc2='猴年到了，宁海恭祝各位提督励精图治，事业有成。',
    }

ships['温馨情人'] = {
    index='149_1',
    gold='200',
    desc1='长官，下班了，要不要吃些巧克力呢？',
    desc2='牛奶、抹茶、咖啡......长官喜欢哪种呢？',
    }

ships['冬日暖潮'] = {
    index='192_1',
    gold='200',
    desc1='在寒冷的西伯利亚冬日，塔什干为你准备了一个十分温暖的礼物。',
    desc2='无论相隔多远，塔什干的光学测距相机都会注视着你。',
    }

ships['英伦美食'] = {
    index='135_1',
    gold='300',
    desc1='为你和战友补充各种发育所需的微量元素。',
    desc2='效果图仅供参考，一经售出概不负责。',
    }

ships['冬季校服'] = {
    index='233_1',
    gold='300',
    desc1='冬天到了，得穿大衣啊，你问这些是什么？当然是女生常备品啊',
    desc2='果然还是太冷了，想要更温暖……',
    }

ships['金凤蝶舞'] = {
    index='114_1',
    gold='300',
    desc1='饺子包好的样子，仿佛蝴蝶一样…可是，未免有些太难了吧……',
    desc2='金色的凤凰与白色的蝴蝶，是这新年的绝配。',
    }

ships['碧绣红妆'] = {
    index='162_1',
    gold='300',
    desc1='煮饭在姐妹里最拿手的逸仙，今年又做了新的菜式。',
    desc2='相比做菜，教重庆妹妹用筷子是个挑战……',
    }

ships['给英雄的赠礼'] = {
    index='178_1',
    gold='200',
    desc1='那个，那个……提督，这个礼物，是给我心中最伟大的英雄的。',
    desc2='提督，你就是我心中最伟大的英雄呢。',
    }

ships['蓝色情人'] = {
    index='179_1',
    gold='200',
    desc1='西格斯比想要在秋天之前找列克星敦去借一束蓝色玫瑰花。',
    desc2='裙子侧边有条缝不是常识吗？——西格斯比这样说道。',
    }

ships['爱心厨娘'] = {
    index='194_1',
    gold='300',
    desc1='穿上了爱心围裙的厨娘，为你用爱亲手制作了巧克力。',
    desc2='送给你的可不仅仅只有巧克力哟~',
    }

ships['小丑威廉'] = {
    index='181_1',
    gold='300',
    desc1='威利想要在愚人节扮演一个节日使者，为此她在努力练习。',
    desc2='有一天，当人们回顾往昔，会说是我催生了这个节日。',
    }

ships['校服？女仆装？'] = {
    index='69_1',
    gold='300',
    desc1='这件介于校服和女仆装之间的奇妙装扮究竟是……',
    desc2='不用管那么多，只要可爱不就行了！',
    }

ships['乙女茶会'] = {
    index='84_1',
    gold='60战利品',
    desc1='放下兵器，重拾生活；远离战火，改变心情；少女拥有着属于她的另一面，想要领略一番吗？',
    desc2='天后沉浸于编织中，神情也变得柔和起来，一束束红丝在她的巧手下变成了各种可爱小配饰，甚至还有些稀奇古怪的武器弹药……',
    }

ships['温柔女仆'] = {
    index='41_1',
    gold='200',
    desc1='特卖啦！特卖啦！能够吸引男人注意力的女仆装新品上市啦！',
    desc2='效果拔群！',
    }

ships['时尚礼服'] = {
    index='42_1',
    gold='200',
    desc1='龙田自称是姐姐给的衣服，可是仔细看却觉得不太一样，不仅是裙子短了许多，整个风格也变了。',
    desc2='垃圾堆突然多了许多女仆裙的碎片，这是港区的一个新传闻……',
    }

ships['家政礼装'] = {
    index='128_1',
    gold='300',
    desc1='第一次做家政，德意志莫名觉得有些兴奋。',
    desc2='德意志手中的拖把与灰尘齐飞，并且从头至尾都没有见过吸尘器的工作。',
    }

ships['春日踏青'] = {
    index='234_1',
    gold='300',
    desc1='提督，春日时间宝贵，抓紧时间，和我一起共赏樱花吧。',
    desc2='我带的吃的，要和提督一人一半哦~',
    }

ships['小时候的衣服'] = {
    index='13_1',
    gold='300',
    desc1='神秘道具，可以解锁特殊事件。',
    desc2='安德烈亚多利亚珍藏的自己小时候的衣服，据说现在穿上依旧合身。',
    }

ships['安东尼奥·小诺利'] = {
    index='187_1',
    gold='300',
    desc1='等…等等！小妹妹你走错地方了吧！我们这里不是游乐园哦？！',
    desc2='身体虽然变小了，但是无论是体能还是头脑都依旧灵活！',
    }

ships['海洋之心'] = {
    index='59_1',
    gold='90战利品',
    desc1='无论和谁在一起，海伦娜只要换上了泳装，就是最闪耀的主角。',
    desc2='走，让我们去找海洋中名为希望的宝藏吧~',
    }

ships['捆绑式比基尼'] = {
    index='112_1',
    gold='300',
    desc1='暴露感十足的比基尼，维内托最满意的衣服。',
    desc2='这可不是一般的比基尼，这是绑带式比基尼（意大利的称呼更倾向于丁字裤比基尼）。',
    }

ships['比基尼魔术师'] = {
    index='126_1',
    gold='300',
    desc1='只要是普林斯顿的衣服，哪怕是泳装，都能感觉她对魔术的热爱。',
    desc2='穿着这一身的普林斯顿今天要为大家表演一个什么样的魔术呢？',
    }

ships['日式学校泳装'] = {
    index='133_2',
    gold='300',
    desc1='这是青叶还在上学的时候就穿着的泳装了，她一直非常喜欢。',
    desc2='胸前的字是青叶自己写上去的。',
    }

ships['肩带比基尼'] = {
    index='29_2',
    gold='300',
    desc1='一起到海边享受夏日的清凉吧，司令官。',
    desc2='列克星敦，她就是这个世界的女王。',
    }

ships['一番舰'] = {
    index='248_1',
    gold='',
    desc1='为大淀量身定制的专属服饰，深受她的喜爱。',
    desc2='一起加油吧~提督大人！',
    }

ships['爱的蝴蝶'] = {
    index='30_1',
    gold='',
    desc1='与您的相遇，就意味着不会再孤单。',
    desc2='你看到了吗？象征着幸福的蝴蝶，正在我们的身侧，永不分离。',
    }

ships['水仗重装'] = {
    index='31_1',
    gold='200',
    desc1='听说你们要打水仗？来，我们来战个痛快吧！',
    desc2='体会一下我重火力的压制吧！哈哈哈！填满海水的B25起飞！',
    }

ships['絮库夫的水上乐园'] = {
    index='199_1',
    gold='300',
    desc1='絮库夫的游泳装备极其多，以至于大家都跑过来玩耍。',
    desc2='这是一张泳装派对众人的全家福……唔，不对，这是絮库夫的泳装时刻才对，只是有一点乱入。',
    }

ships['海上漂流套装'] = {
    index='93_1',
    gold='200',
    desc1='这是属于基林悠闲的茶点时间。',
    desc2='夏日的海滩，怎么可以没有甜甜圈和可乐？',
    }

ships['初期设定'] = {
    index='64_2',
    gold='20战利品',
    desc1='指定代码：海色',
    desc2='一直等待着，在那海之彼岸。',
    }

ships['胜利号'] = {
    index='8_1',
    gold='400',
    desc1='纳尔逊勋爵在胜利号风帆战列舰上一举击败了法国、西班牙联合舰队，从此开启了英国最辉煌的时代。',
    desc2='英格兰期待人人都恪尽职守。',
    }

ships['甜蜜之旅'] = {
    index='143_1',
    gold='60战利品',
    desc1='等待你的每一天，就像一只迷失了航线的船，不知所措。',
    desc2='这一切的等待，现在看来都是无比的甜蜜与幸福，现在就请和我一起对着这美好的一切，许下我们永远的誓言。',
    }

ships['蓝宝石'] = {
    index='40_1',
    gold='300',
    desc1='大海上的蓝宝石，象征着聪明与智慧。很凑巧，和昆西泳装的主色调相同。',
    desc2='昆西的颜色就是智慧的象征！——昆西',
    }

ships['前世今生'] = {
    index='54_2',
    gold='300',
    desc1='重庆号归来，提督，这次就让我们继续相伴吧。',
    desc2='心有一念系此物，身无他许伴今生。',
    }

ships['威尔士的订制泳装'] = {
    index='10_1',
    gold='80战利品',
    desc1='在众人的怂恿下穿上了和维内托有些相似的泳装款式，不过在细节和大小上有略微改动。',
    desc2='独一无二，无可复制。这是只属于威尔士亲王的骄傲。',
    }

ships['夏日的味道'] = {
    index='83_1',
    gold='300',
    desc1='夏天到了海边，必不可少的就是沙滩烧烤了。',
    desc2='来来来，走过路过千万不要错过，刚抓上来新鲜的。',
    }

ships['万圣·司夜女巫'] = {
    index='82_2',
    gold='500',
    desc1='掌管夜间一切的司夜女巫，在万圣夜，为所有人带来了礼物。',
    desc2='嘻嘻~其实是萤火虫啦！司令官，别发呆了，快来选一个礼物吧。',
    }

ships['独立之光'] = {
    index='141_1',
    gold='300',
    desc1='地覆天翻，世界倒转过来了。',
    desc2='现代的文明的U国的历史，是由一次伟大的、真正解放的、真正革命的战争开始的。',
    }

ships['米兰风情'] = {
    index='112_2',
    gold='500',
    desc1='来自于时尚潮流前线的维内托，似乎希望大家都能有一种新的装扮风格。',
    desc2='这一切的荣耀归于米兰。——维内托',
    }

ships['私人订制'] = {
    index='209_2',
    gold='800',
    desc1='和密苏里约好了周末一起出去玩，为此她专门找人做了一套适合运动的服装。',
    desc2='今天就放松一下吧，司令官，一起去爬山如何？',
    }

ships['出游礼装'] = {
    index='130_1',
    gold='300',
    desc1='既然决定了出游，美食、美酒、美人，都是不可或缺的伴侣。',
    desc2='长官，德国黑啤的味道怎么样？接下来——巴伐利亚的甜芥白香肠，请好好品尝吧。',
    }

ships['圣诞华服'] = {
    index='177_1',
    gold='80战利品',
    desc1='看到姐妹们都陆续有了换装的撒切尔，决心在圣诞节给指挥官一个惊喜。',
    desc2='嘿~指挥官，要和我一起度过今天吗？只有我们两个人哦。',
    }

ships['圣诞快递员'] = {
    index='98_1',
    gold='300',
    desc1='沃克兰和空想不知道从哪里弄来了大量资源，想要为大家带来圣诞的问候。',
    desc2='开，开门，送温暖！',
    }

ships['新春祈福'] = {
    index='227_1',
    gold='400',
    desc1='迎着新年的钟声，换上早已准备好的和服，前往神社为新的一年祈福吧。',
    desc2='在御守里放入求来的签，今年的运势也一如既往是大吉。',
    }

ships['新春祈愿'] = {
    index='164_1',
    gold='400',
    desc1='踏着初降的雪花，换上准备多时的和服，一起去神社迎接新年吧！',
    desc2='一切的烦恼与忧愁，就由这只破魔矢全部捣碎吧。',
    }

ships['恋爱大作战'] = {
    index='64_1',
    gold='400',
    desc1='载满思念的信笺与日俱增，化作旋律，飘向远方。',
    desc2='旋律传达着恋爱的心情，来到有你在的港区。',
    }

ships['洛丽塔风情'] = {
    index='80_1',
    gold='400',
    desc1='这，这样穿，会不会太引人注目了！',
    desc2='好像全世界人都在看我，不过……可恶，穿着小裙子的自己真好看。万岁！',
    }

ships['正宗京味儿'] = {
    index='209_1',
    gold='500',
    desc1='时值春节，密苏里来到了北京游玩，顺带买了一些服饰，并且尝试学习一些当地方言。',
    desc2='你问神仙都住哪儿，胡同儿里边儿四合院儿。',
    }

ships['街头美食家'] = {
    index='203_1',
    gold='500',
    desc1='一袭红衣，穿梭在中国春节的大街小巷。',
    desc2='这个东西，黏黏的到底该怎么吃呀！…真，真好吃！',
    }

ships['爆竹除岁'] = {
    index='129_1',
    gold='80战利品',
    desc1='除夕的夜晚，准备好爆竹来炒热气氛吧！（请注意可燃放区域）',
    desc2='新的一年，也要以绝佳的状态迎接接下来的每一天哦~（室内禁止吸烟）',
    }

ships['四季长春'] = {
    index='97_2',
    gold='600',
    desc1='同志，我来支援您了，这是这里的节日服饰吗？真好看。',
    desc2='希望孕育出的奇迹，从此以后，这里便充满了光明。',
    }

ships['小爱神的献礼'] = {
    index='1_1',
    gold='500',
    desc1='情人节这天，爱神鱼饼在港区四处闲逛，发现了在指挥官办公室门口徘徊的胡德。',
    desc2='这、这是我给你制作的情人节贺卡，你有礼物送我的话，我就把它给你哦！',
    }

ships['不一样的礼物'] = {
    index='49_1',
    gold='400',
    desc1='似乎港区的G国舰娘们都不是很在意情人节，唯独科隆是一个例外。',
    desc2='这个盒子里是巧克力？似乎又不是……鲜花？糖果？虽然觉得礼物很简单，但是科隆似乎做出了一副希望看到你感到惊喜的表情。',
    }

ships['永恒誓约'] = {
    index='14_1',
    gold='',
    desc1='这份爱，永远不会凋零。',
    desc2='你我之间的爱情，直至永恒。',
    }

ships['罗德油'] = {
    index='9_1',
    gold='600',
    desc1='嘿！这里是罗德油小姐亲自为您进行的加油服务，好好享受吧！',
    desc2='辛苦您了，接下来就请交给我吧，放心——一切都会和新的一样！',
    }

ships['奇猫博士'] = {
    index='6_1',
    gold='800',
    desc1='停止恐惧的颤抖吧，我将会是你们最后的敌人，你们将见识到科学的伟大。',
    desc2='现在她已经有些忘乎所以，高亢而颤抖的声音早就分辨不出说了什么，但所有人都无法忘记那一切的开始，她说了这样一句话：我、我站起来了，我的长官。',
    }

ships['清凉的夏日旅行'] = {
    index='30_2',
    gold='',
    desc1='嘻嘻，这身打扮好看吗？这可是为我们一起旅游专门准备的服装哦~！',
    desc2='出发，别忘记带上冰淇淋哦！',
    }

ships['同予者何人？'] = {
    index='97_1',
    gold='',
    desc1='长春来了哦，来到您的身边了，哦，对了，还有一封来自妈妈的信。',
    desc2='欢迎回家。和你一起孕育的奇迹已经发芽。现在开始和你一起感受岁月流逝和四季变迁，以及那欢乐满溢的未来。无论你身处何方，我会一直陪伴在你的身边。',
    }

ships['漫步于香榭丽舍'] = {
    index='113_1',
    gold='500',
    desc1='终于等到了期待已久的假期，黎塞留和您一起来到了香榭丽舍大街共度这段美好时光。',
    desc2='晚上，在哪里用餐呢？在香榭丽舍附近呢？还是去塞纳河左岸？',
    }

ships['维多利亚风情'] = {
    index='136_1',
    gold='400',
    desc1='魅惑的蓝与扬起的裙摆，仿佛将时间倒流，回到那个充满浪漫气息的年代。',
    desc2='能否请您同我共舞一曲呢，指挥官？与摇曳的烛光一起，在这不夜城中翩翩起舞——',
    }

ships['射水兔'] = {
    index='195_1',
    gold='400',
    desc1='欢迎光临，请问，您要来点什么？',
    desc2='本来是姐妹一起来酒吧应聘，结果只有射水鱼被选上了。',
    }

ships['大正淑女'] = {
    index='267_1',
    gold='400',
    desc1='佳人作伴，于樱花之下推杯换盏，共赏此间美景。',
    desc2='花开花落，终有尽时。执子之手，红尘作伴。',
    }

ships['春之霓裳'] = {
    index='2_1',
    gold='500',
    desc1='剪裁得体的裙装。再美的衣服，也需要人来与之相称。',
    desc2='乘着春天的翅膀，将一切变得焕然一新吧~',
    }

ships['日德兰之奏'] = {
    index='103_1',
    gold='500',
    desc1='1916年5月30日，夕阳的余晖照耀着整齐皇家海军，所有人都明白——大战即将到来。',
    desc2='她的演奏，鼓舞了皇家海军所有人，也成为了日德兰海域上空永远回响的天籁。',
    }

ships['皇家战姿'] = {
    index='104_1',
    gold='500',
    desc1='皇家海军，逢敌必战！',
    desc2='日德兰海战中偶然抓拍到的厌战小姐。她的舰装在硝烟和炮火轰鸣中仍未染尘，甚至映着火光微放光芒，构成了所有人记忆中最美的英姿飒爽。',
    }

ships['合身的衣服'] = {
    index='112_3',
    gold='600',
    desc1='维内托偶然发现了自己还是小孩子时最喜欢的衣服，兴奋地直接穿到了身上。',
    desc2='意外的…非常合身……',
    }

ships['街头漫步'] = {
    index='134_1',
    gold='400',
    desc1='难得的假日，换上休闲的便服，去城镇上逛逛吧！',
    desc2='可别忘了这次出行的真正目的，夜晚的演唱会！',
    }

ships['小小的奇幻冒险'] = {
    index='7_1',
    gold='600',
    desc1='汇集了诸多不思议于一体的奇妙装扮，仿佛置身于童话世界一般。',
    desc2='在一个寂静的夜晚，“冒险”故事拉开序幕——',
    }

ships['碧水明纱'] = {
    index='162_2',
    gold='500',
    desc1='江南可采莲，莲叶何田田，鱼戏莲叶间。',
    desc2='攘皓腕于神浒兮，采纱溪之白莲。',
    }

ships['轻松一夏'] = {
    index='209_3',
    gold='80战利品',
    desc1='休息的日子终于到来，可以把手头的工作放放，享受假日的美好。',
    desc2='嗯——每天都要想吃什么真是太麻烦了，不如来杯面吧~！',
    }

ships['归乡的少女'] = {
    index='207_1',
    gold='500',
    desc1='买点家里要用的东西，收拾好行李，准备回家~',
    desc2='不知道家乡的迎风花是否还在盛开呢？',
    }

ships['夏日出游'] = {
    index='301_1',
    gold='500',
    desc1='假期终于到来了，我们去哪里玩好呢？阿尔弗雷德~',
    desc2='总之，朝着海的另一端进发吧~',
    }

ships['海的女儿'] = {
    index='211_1',
    gold='500',
    desc1='海鸥传来了海的呼唤，乘着风的翅膀，踏浪前行~',
    desc2='悠扬的歌声响彻沙堡，与海浪交织共鸣，谱写出一曲夏的交响乐。',
    }

ships['花间少女'] = {
    index='180_1',
    gold='500',
    desc1='用这些花来装扮自己的话，一定会很漂亮！',
    desc2='嘿！司令官，漂亮吗？您说的…是我？还是花呢？',
    }

ships['新任厨娘'] = {
    index='75_1',
    gold='800',
    desc1='Z16从小就是一个贪吃的孩子，可是却没有人专门给她做好吃的，于是为了解决自己的口腹之欲，Z16决定努力学习厨艺……',
    desc2='从今天开始，我就是能够化腐朽为神奇的大厨了！',
    }

ships['夏日大作战'] = {
    index='14_2',
    gold='600',
    desc1='奔跑在沙滩上，沐浴于阳光下~卸去沉重的负担，让往日的疲惫随着汗水一起蒸发。尽情享受当下的大好时光~',
    desc2='接下来是谁？接受“正义”的制裁吧~',
    }

ships['午后时光'] = {
    index='46_1',
    gold='600',
    desc1='如何度过这漫长的炎炎夏日？夕张科技给你答案！赶紧拿起手中的——',
    desc2='冰柜上贴着一张纸条，上面写着“未成年人禁止饮酒”。',
    }

ships['星之梦'] = {
    index='275_1',
    gold='600',
    desc1='于仲夏夜所诞生的梦之旋律，沐浴星光的梦之舞曲——将这个世界染上你的颜色。',
    desc2='星光依然，你我之间的誓约——牢不可破。',
    }

ships['库苏古尔之夏'] = {
    index='298_1',
    gold='600',
    desc1='夏天真是美好呀！这让我想起来库苏古尔湖边的日子……',
    desc2='哈哈哈哈！本大王也有泳装了，将军，我们一起去玩吧！',
    }

ships['海边的休憩日'] = {
    index='5_1',
    gold='500',
    desc1='就算是巫女，也有休息的日子。在炙热的阳光下，大胆的秀出曼妙的身姿。',
    desc2='尽情的享受这难得的假日，与海风一道歌唱今日的美好。',
    }

ships['沙滩上的冷饮贩售女郎'] = {
    index='37_1',
    gold='500',
    desc1='听闻某个科研人员摆摊卖冷饮赚了不少钱，布吕歇尔也决定来试一试。',
    desc2='嗯哼~要不要来一杯冷饮，嫌太冰的话，我可以放~这~里~给您温一温~嘻嘻~',
    }

ships['太平洋的酒会女王'] = {
    index='111_1',
    gold='500',
    desc1='港区有一个传闻：相传每当酒会举办之际，都会有一位身着蓝色晚礼服的白发舰娘到场，她美丽的身姿与高贵的气质让人们将其奉为酒会的女王。',
    desc2='各位，请尽情享受大海赐予我们的一切。今夜，将会是一场浪漫的狂欢！',
    }

ships['成熟的少女'] = {
    index='188_1',
    gold='500',
    desc1='乌戈里尼趁假期出门买了件新衣服，回来的路上还买了一个棒棒糖，看起来很好吃的样子。',
    desc2='哎？看着我做什么？难道…你也想吃这个棒棒糖，那就…求我呀？求我的话，我就给你吃（舔）',
    }

ships['普通的祭典工作人员'] = {
    index='235_1',
    gold='500',
    desc1='祭典就要开始了~请各位准备好迎接一年之中最难以忘怀的日子吧~啊，是之一的日子才对~',
    desc2='请看好自己的贴身物品哟~特别是钱包~',
    }

ships['赛艇女郎'] = {
    index='306_1',
    gold='500',
    desc1='港区第一届“赛艇王”大赛开幕啦！让我们掌声欢迎本次的赛艇女郎——巴夫勒尔小姐！',
    desc2='来杯香槟怎么样？只有胜利的人才能获得我的青睐哦~',
    }

ships['皇家亲卫队'] = {
    index='308_1',
    gold='500',
    desc1='R国皇家亲卫队专用装扮，干练中不失优雅。',
    desc2='从今天开始，哥特兰就是您忠实的护卫，这身装扮就是我决心的证明！',
    }

ships['最终兵器—兔女郎'] = {
    index='18_1',
    gold='500',
    desc1='新的科技，新的时尚，声望也要紧随潮流……',
    desc2='融汇了最新科技的武器与最新潮流的服饰，声望对这身装扮很满意。',
    }

ships['极·学院制服'] = {
    index='219_1',
    gold='500',
    desc1='虽然写着“极”字，但实际上并不能变身，只是在学院中极为普通的标准 制服。（除了外套）',
    desc2='学院标配的制服，洋溢着青春的气息，舒适的面料与设计受到学生们的一 致好评。',
    }

ships['极·弓道部制服'] = {
    index='220_1',
    gold='500',
    desc1='虽然写着“极”字，但实际上并不能带来属性提升，只是在学院中极为普 通的弓道部制服。',
    desc2='能够让人安心的衣服，会少许的提升穿戴者的幸运。（大概）',
    }

ships['为胜利献上喝彩'] = {
    index='228_1',
    gold='500',
    desc1='开赛的时间就要到来，为了今天而特地准备的服装，也该发挥它的用处了 。',
    desc2='麻烦死了，快让这个无聊的比赛结束吧……',
    }

ships['食欲之秋'] = {
    index='45_1',
    gold='700',
    desc1='在这略带寒意的秋季，来上一些热乎乎的天妇罗，将疲倦和饥饿全部丢到脑后~',
    desc2='这位客人，您想要什么呢？本店应有尽有，可不要犹豫不决呐！',
    }

ships['见习巫女'] = {
    index='73_1',
    gold='500',
    desc1='向这世间的八百万神明祷告，愿还未到来的明天，也是充满欢声与笑语的日子。',
    desc2='为了即将到来的日子，献上神乐。',
    }

ships['试验型改良舰装'] = {
    index='109_1',
    gold='500',
    desc1='为了激发马里兰体内的战斗本性而制作的舰装，还不是很稳定。由于还没决定衣服的风格，先“借”来了空军的衣服一下。',
    desc2='据说该舰装拥有让马里兰越战越勇的力量，马里兰非常喜欢这一设计。',
    }

ships['甜蜜圣诞'] = {
    index='121_2',
    gold='500',
    desc1='圣诞节当然是要有点惊喜才对！比如圣诞礼物，比如这捧玫瑰~',
    desc2='无论敌人还是朋友，都应该有圣诞礼物！',
    }

ships['骑士之礼'] = {
    index='205_1',
    gold='600',
    desc1='无论任何一个国家的骑士，在这一天都应该得到休息。',
    desc2='吾主，值此节日，理应庆贺。这身礼服您觉得如何？',
    }

ships['星之所在'] = {
    index='276_1',
    gold='600',
    desc1='与你度过的那个夜晚，是这平凡的一生中最为珍贵的回忆。',
    desc2='满天的繁星，就像是你的笑容般，温暖了这个冬季。',
    }

ships['圣夜唱诗班'] = {
    index='322_1',
    gold='600',
    desc1='值此圣夜之际，以天籁之音，化作赞美诗，歌颂主的恩德。',
    desc2='“要为他谱出新歌，并且弹得巧妙，唱得动听”',
    }

ships['爱之歌颂者'] = {
    index='314_1',
    gold='600',
    desc1='哥特雄狮突然想做一首歌颂爱的曲子，为此她不断寻找着灵感。',
    desc2='“那是写给某个人的曲子，也只会唱给那个人听。”——哥特雄狮说出这句话时，满眼带笑，悄悄看着指挥官。',
    }

ships['爱心巧克力'] = {
    index='142_1',
    gold='600',
    desc1='上得了战场，下得了厨房。——这是休斯顿最近很爱唠叨的一句话。',
    desc2='自制巧克力不就是把买来的巧克力融化重新塑形吗？这么简单的活难不倒我。',
    }

ships['有凤来仪'] = {
    index='69_2',
    gold='600',
    desc1='“不死鸟”的全新姿态——由某位大姐姐赠送的服饰。为什么是送的衣服，却还要再解锁一次呢？',
    desc2='“大人的世界是很复杂的，晓姐姐。”“诶？！”',
    }

ships['福运到'] = {
    index='264_1',
    gold='600',
    desc1='蹦蹦跳跳的魔术师，今天也要将福运送给大家。睁大眼睛，奇迹可是转眼即逝的哦~',
    desc2='夕立的魔术剧场即将开演~请买票有序进场哦~！',
    }

ships['恭贺新禧'] = {
    index='323_1',
    gold='600',
    desc1='春节最大的乐趣就是放鞭炮了。',
    desc2='太好了！我亲爱的指挥官，今天是个大节日，快把鞭炮挂起来，只要鞭炮一响，就可以开始庆祝了。',
    }

ships['特级面点师'] = {
    index='61_2',
    gold='600',
    desc1='身为中华特级面点师，纵横各大酒楼，虽然不如宁海会的那么全面，但是在面点上的造诣绝对不输给姐姐。',
    desc2='平海深受姐姐熏陶，但亦自知其在菜系上不可能胜其姐姐，固专精于面点工艺，无论是蒸煮炸，还是炒煎烤，都冠绝中华。据说她有一根不常使用的擀面杖，每击败一个对手，就在上面写一个平字的一笔。',
    }

ships['中华特级厨师'] = {
    index='60_2',
    gold='600',
    desc1='最年轻的中华特级厨师，终于实现了自己一生的梦想——开一个属于自己的饭店。',
    desc2='话说这宁海，早些年四处访名师学厨艺，终于掌握了鲁淮粤川徽浙闽湘八大菜系，成为了知名的厨师，听说她要重新开店，这门前的客人是络绎不绝，排队通宵达旦。',
    }

ships['波特曼街237号'] = {
    index='325_1',
    gold='800',
    desc1='据说波特曼街住着一位初出茅庐的私家侦探，尽管她只能接到一些寻找丢失的宠物之类的案件，却还是深受居民们的爱戴。',
    desc2='“宠物也是这里的居民，应当一视同仁。”——那位侦探这么说道。',
    }

ships['巨神奥丁'] = {
    index='303_1',
    gold='600',
    desc1='一旦唤醒奥丁体内的封印力量，定会为整个世界带来灾难吧…',
    desc2='可怕的不是力量，而是掌握力量的人，与巨神奥丁一起，烧尽世间全部的罪恶吧！',
    }

ships['档案管理员'] = {
    index='192_2',
    gold='',
    desc1='塔什干正式就职档案管理员了！同志，你无论做什么我都会记录在案的哦~',
    desc2='站在这里不要动，千万不要动，让我给您拍张照片，来，笑一个~',
    }

ships['七日之旅'] = {
    index='236_1',
    gold='500',
    desc1='用一直以来的优异表现换取了一周的假期！想去的地方却有好多……到底该怎么决定才好呢！这时候——就靠抓阄！',
    desc2='呜哇哇！好多小动物！熊野高兴的快要变成熊了！嗯？总感觉身后有什么东西在——',
    }

ships['向彼岸进发'] = {
    index='329_1',
    gold='500',
    desc1='这两天奥古斯塔小姐似乎有些不一样……',
    desc2='抛弃了无意义的中立，舍弃了胆怯带来的恐惧。她带着荣耀，向着海的尽头进发。',
    }

ships['夏日的浪漫'] = {
    index='289_1',
    gold='',
    desc1='不在海边晒太阳的夏天不是真正的夏天！',
    desc2='这一身…正是夏日的浪漫！',
    }

ships['璀璨之星'] = {
    index='13_2',
    gold='500',
    desc1='为你而准备的特别招待，为你而流露的真挚情感——“璀璨之星”，等待着你的到来。',
    desc2='主人~今天想要来点什么呢？嗯，我了解了！请稍等——还有，能够与您再次相遇，一定是爱神的指引~',
    }

ships['慵懒的假期'] = {
    index='171_1',
    gold='500',
    desc1='劳动节就是让劳动者休息的节日，长官，快来继续陪我睡觉！',
    desc2='讲故事啦！快给我讲故事！要是我没听过的才可以哦！',
    }

ships['五月花的约定'] = {
    index='40_2',
    gold='600',
    desc1='希望与幸福，就是你与我的约定。',
    desc2='司令官，为什么要给我这个…五月花吗？真漂亮啊，昆西…很喜欢它。',
    }

ships['春华绚烂·月夜恋歌'] = {
    index='64_3',
    gold='500',
    desc1='长久以来的准备，就是为了今天。要用最好的状态，于月光下绽放。少女想着，露出自信的笑容。',
    desc2='于月光下，二人许下誓言。从相遇便确定的心意化作舞曲，与烟火一道为夜空染上绚烂的色彩。',
    }

ships['皇家特工'] = {
    index='1_2',
    gold='1000',
    desc1='指挥官，要来一杯红酒吗？今晚，与我共眠。',
    desc2='要记住，最毒妇人心，越美丽的女人，越危险。',
    }

ships['少言的班长'] = {
    index='240_1',
    gold='500',
    desc1='大、大家好，我是旧金山，港区小学的班长…还要说什么吗？',
    desc2='请安静，马上就要上课了。',
    }

ships['女王的仪仗队(儿童版)'] = {
    index='203_2',
    gold='500',
    desc1='各位士兵，听我号令，准备出行！',
    desc2='好孩子可不能这样顺拐走路哦！',
    }

ships['上学途中'] = {
    index='108_1',
    gold='500',
    desc1='谁能想到身为U国三姐妹之首的她曾经也有着如此可爱的一面。',
    desc2='嗯？你一直盯着我看，是有什么问题吗？',
    }

ships['向着金色的未来'] = {
    index='102_1',
    gold='500',
    desc1='今天是什么日子？鱼鱼，你知道吗？鱼鱼，你为什么不说话呢？',
    desc2='哎呀？晒的太久已经干掉了吗？鱼鱼，给你撒些水的话，能够再次飘起来吗？',
    }

ships['威尔士小侦探'] = {
    index='8_2',
    gold='600',
    desc1='威尔士家喻户晓的侦探，与一条柯基犬相伴长大，目标是成为世界第一侦探。',
    desc2='那么，说出你的请求，指挥官，让我先听听你的故事。',
    }

ships['有你的世界'] = {
    index='277_1',
    gold='500',
    desc1='与你的每一天，都像是童话般散发着绮丽的色彩。',
    desc2='用这份幸福编织成画笔，创造只属于你我的世界。',
    }

ships['足球巨星'] = {
    index='76_1',
    gold='500',
    desc1='嘿！看台上的粉丝们你们好吗？让我看到你们的双手！',
    desc2='强者未必是胜者，但胜者一定就是强者。',
    }

ships['我和“我”的一天'] = {
    index='168_1',
    gold='500',
    desc1='某个日子，少女自睡梦中醒来。镜中的“自己”已不是自己——“发生了什么啊喂！？”',
    desc2='某个日子，少女自恍惚中醒来。欢呼声和草皮的清香味刺激着她的大脑——“哎？热身赛？”',
    }

ships['举止奇怪的球迷'] = {
    index='213_1',
    gold='500',
    desc1='这一天，港区提问箱有了一条匿名提问：身为强队，作为球迷看世界杯是一种什么样的感受。',
    desc2='在这个世界狂欢的舞台，总会有几个落寞的身影离开人群。',
    }

ships['迪纳摩特工'] = {
    index='323_2',
    gold='500',
    desc1='导弹不能没有弹头，同志您说是吧？',
    desc2='我感到浑身充满了力量。',
    }

ships['Akagi&Kazeno'] = {
    index='22_9',
    gold='500',
    desc1='一航战的她今天看起来比平时高兴，似乎很中意风乃叫她“前辈”。',
    desc2='风乃渐渐地开始习惯新的母港了。休憩中的两人就像是真正的姐妹。',
    }

ships['列克星敦&米娅'] = {
    index='29_9',
    gold='500',
    desc1='今天的母港也满载着米娅的笑声和列克星敦的温柔。',
    desc2='（小列克星敦和我的组合是最强的喵！超帅气的喵！你会看得目不转睛的喵！）（自称）',
    }

ships['闪耀的纯白精灵'] = {
    index='124_1',
    gold='500',
    desc1='纯白的精灵于阳光下舞动。她笑着，为孩子们带来希望与勇气。',
    desc2='追逐星光，迎来朝霞。直到孩子们能独当一面为止，她都会一直守护在他们身边。',
    }

ships['在水一方'] = {
    index='141_2',
    gold='500',
    desc1='北安普顿想要来一场别样的二人旅行。',
    desc2='所谓伊人，在水一方。',
    }

ships['向阳的希望之花'] = {
    index='269_1',
    gold='500',
    desc1='跟忧愁说声再见，迈向那茜色的海岸。希望之花，于心间绽放。',
    desc2='跟幸福道声早安，迎来那金色的清晨。希望之花，于心间歌唱。',
    }

ships['沙滩的守护骑士'] = {
    index='348_1',
    gold='500',
    desc1='贯彻骑士之道，不留余力的帮助他人。今天的她，依旧活跃在另一个“战场”。',
    desc2='为了爱与和平，守护世界的所有存在。明天的她，仍会活跃在下一个“战场”。',
    }

ships['四年庆典之约'] = {
    index='21_1',
    gold='500',
    desc1='喂喂喂…可以来看晚会吗？',
    desc2='大家好！今晚的演出曲目姐姐和我重新编排过了，四周年特别版！大家可千万不要错过哦！',
    }

ships['欢度今宵'] = {
    index='77_1',
    gold='500',
    desc1='我这身装扮…惊不惊喜，嘻嘻，你喜欢吗？',
    desc2='有朋自远方来，无论是谁来参加聚会，我都欢迎！',
    }

ships['庆典指挥'] = {
    index='80_2',
    gold='500',
    desc1='听我指挥，奏响音乐！',
    desc2='要怎么挥舞才会更帅气呢？问问其它人好了！',
    }

ships['月下玫瑰'] = {
    index='243_1',
    gold='500',
    desc1='今夜，我在花园里等你，可别迟到。',
    desc2='玫瑰，花园，圆月，这一切都是如此的美，包括你在内。',
    }

ships['大正旧梦'] = {
    index='101_1',
    gold='500',
    desc1='这是一切尚未发生，少女们安然度过每一天的世界。',
    desc2='世界正在改变——而有些事，永远也不会改变……这是平静中带着一丝哀愁的物语。',
    }

ships['雾都之花'] = {
    index='319_1',
    gold='500',
    desc1='她精通一切机械的使用，并将冰冷的机器改装成美丽的生命。',
    desc2='而她自己，就是绽放于无情与冷漠世间最美丽的花朵。',
    }

ships['永不结束的庆典'] = {
    index='337_1',
    gold='600',
    desc1='歌颂我的伟大，歌颂属于我们的荣耀！此处，亦是罗马！',
    desc2='我为领航，众星闪耀。',
    }

ships['万圣猎魔人'] = {
    index='110_1',
    gold='600',
    desc1='这种时候还要搞庆典，真是让人为难……',
    desc2='那么，讨厌的小鬼们，就让我来猎杀各位吧！',
    }

ships['魅影'] = {
    index='85_1',
    gold='500',
    desc1='港区最近经常有人目睹一个黑影在房顶上跑来跑去……',
    desc2='据说黑背豺和提尔比茨玩了一天后就变成了这样，没人知道原因。',
    }

ships['照花相映'] = {
    index='319_2',
    gold='500',
    desc1='鲜花终会凋零，所以需要人的保护。',
    desc2='请等一下，如果要出门的话…我需要时间打点一下自己。',
    }

ships['圣诞的钟声'] = {
    index='357_1',
    gold='500',
    desc1='一年一度的日子即将到来。在星光下许下愿望——也许，会梦想成真。',
    desc2='带着礼物的“麋鹿”推开了孩子们的门扉——今夜，是梦想成真的时刻。',
    }

ships['圣诞归来的旅行者'] = {
    index='370_1',
    gold='500',
    desc1='光辉在圣诞节前归来，为大家准备了非常多的礼物。',
    desc2='想要礼物的孩子不要插队，每个人都会拿到自己想要的礼物。',
    }

ships['奇妙的圣诞老人'] = {
    index='111_3',
    gold='500',
    desc1='在世界的种种传说中，有这么一个圣诞老人，她不仅奖励乖孩子，还惩戒坏孩子。',
    desc2='克兰帕斯与圣诞老人从来都是一个人，她会给坏孩子一次补救过失的机会，但只有一次。',
    }

ships['灯笼高高挂'] = {
    index='183_1',
    gold='500',
    desc1='司令官，要开始准备起来了，快把这些灯笼挂上…别愣在那里嘛，瞧你一脸没睡醒的样子，该不会睡糊涂了吧？',
    desc2='这些明亮的灯笼，会让我们新的一年也红红火火，好运连连。',
    }

ships['雪梅蝶舞'] = {
    index='345_1',
    gold='500',
    desc1='常听姐姐说起这个节日，还挺热闹的嘛~这一身，你觉得怎么样？',
    desc2='雪落梅花蝶纷飞，星起康城雁归回。',
    }

ships['在港区新年的夜晚'] = {
    index='335_1',
    gold='500',
    desc1='星屑飘洒，新年的花朵在绽放，闪耀的港区，我会给予你祝福。',
    desc2='无论是谁，我都将给予祝福，希望我们能够一起前往未知的未来。',
    }

ships['星履踏春'] = {
    index='362_1',
    gold='500',
    desc1='红色是这个地方迎接春天的颜色吗？',
    desc2='话没说完，星座已经哼着歌踏着轻快的步调向前走去，这个街道也在寒风里变得温暖起来，仿佛春天已经来临。',
    }

ships['月背折桂'] = {
    index='97_3',
    gold='500',
    desc1='前辈们说，如果喊她们没有回话，就是在和我们玩捉迷藏了…',
    desc2='那么，等我前去那里的时候，一定会把她们全都找到！',
    }

ships['恋之歌'] = {
    index='223_1',
    gold='500',
    desc1='爱恋、苦痛…所有的一切，皆由妾身来担负。这是妾身，为汝一人独奏的——恋之歌。',
    desc2='情爱、欣悦…所有的一切，皆是你我的见证。这是你我，为此情所合奏的——恋之歌。',
    }

ships['血之华'] = {
    index='224_1',
    gold='500',
    desc1='不会主动攻击人类…才怪嘞！主动上钩的猎物源源不断，谁又能拒绝呢？',
    desc2='指挥官，你的血液，可以让我品尝一下吗？…就一口。',
    }

ships['小小恋歌'] = {
    index='65_1',
    gold='500',
    desc1='对她而言的重要之人，一直陪伴在身边，从未走远。',
    desc2='所以，请倾听这首传达给你的——鸣响的小小恋歌。',
    }

ships['乌拉尔来的恋人'] = {
    index='214_1',
    gold='500',
    desc1='这份感情，越过乌拉尔和西伯利亚，即使最冰冷的寒流也无法阻挡。',
    desc2='最真挚的感情就是要最纯粹的烈酒来衬托。',
    }

ships['真心为你'] = {
    index='7_3',
    gold='500',
    desc1='心中回荡着你的声音，真想立刻去到你的身边，看见你的笑颜。',
    desc2='即便说着违心的话语，但这颗悸动的心，只属于你。',
    }

ships['半开花'] = {
    index='223_2',
    gold='600',
    desc1='含苞待放的花儿，是否更加诱人呢？等待的焦灼与对未来的愿景，酿出了最美的佳酿。',
    desc2='酒至微醺，飞上脸颊的红晕，在灯光下的她是如此动人。也许，已经足够了。',
    }

ships['红姬'] = {
    index='22_1',
    gold='700',
    desc1='人间百态，皆是过眼云烟。来吧，说出你心中的想法。于此，决定自身的命运。',
    desc2='一举一动，便是心中念想。喝吧，唱出你心中的不忿。于此，斩断自身的执念。',
    }

ships['血蝶'] = {
    index='374_1',
    gold='700',
    desc1='代号而已，不必在意。你会选择协助我？还是阻碍我？',
    desc2='鲜血绽放之时，蝴蝶将冲破黑暗，飞上蓝天。',
    }

ships['逢魔一现'] = {
    index='209_4',
    gold='700',
    desc1='西西里岛的风景真美，仅限白天。',
    desc2='夕阳逐渐落下，带走了最后一缕光芒。花朵突然绽放，短暂的一瞬，她是这黑暗中最美的身影。',
    }

ships['漆黑的誓言'] = {
    index='112_4',
    gold='700',
    desc1='黑色的鲜血交融，与我订下决不可破的誓言。',
    desc2='雪虽洁白无瑕，但我们身上流着的是黑色的血。回想起来吧，我的挚爱，回想起来这残忍的一切。',
    }

ships['金色时光'] = {
    index='25_1',
    gold='600',
    desc1='每一个存在于你我心间的，无忧无虑的时光。',
    desc2='稚嫩的脸庞上，唯有笑容。愿这时光，能走得更慢一些。',
    }

ships['紫水晶'] = {
    index='50_1',
    gold='600',
    desc1='这里是紫水晶内部的世界，也是我所见的世界，指挥官，你喜欢这里吗？',
    desc2='和我一起在这个和平的世界生活，可以吗？',
    }

ships['小小海贼王'] = {
    index='197_1',
    gold='600',
    desc1='我把宝藏埋在了某处的海底，只有强者才能够得到它。想要的话，就去…学潜水吧！',
    desc2='请把你的钱财交出来吧！',
    }

ships['卖报小行家'] = {
    index='39_1',
    gold='600',
    desc1='啦啦啦！啦啦啦！有谁想要报纸吗？！大新闻！大新闻！司令官今天又…嘿嘿，买了才能告诉你！',
    desc2='没订报纸的各位，我把报纸扔进各位窗户里了哦~！',
    }

ships['向阳花海'] = {
    index='29_3',
    gold='600',
    desc1='众神怜悯克丽泰而将其变为向阳花，她注视着天空，正如我注视着您。',
    desc2='久、久等了，这里真漂亮，不是吗？',
    }

ships['杜塞尔多夫与柏林'] = {
    index='200_1',
    gold='600',
    desc1='这就是密苏里给我推荐的店…切，当个明星居然这么麻烦吗？',
    desc2='嗯——这个，你觉得我这身…怎么样？',
    }

ships['专属救生员'] = {
    index='56_1',
    gold='600',
    desc1='夏天到了，又到了每年亚特兰大最繁忙的时候——拯救一天落水三次的司令官。',
    desc2='救生员来啦——！请各位落水者不要…司令官，请问这是你今天第几次溺水啦？',
    }

ships['白矮星'] = {
    index='121_3',
    gold='',
    desc1='书上记载，我曾经遭受了巨大的苦难，而且不止一次，事实证明，的确如此。',
    desc2='久违了，战场。期盼与我永别的人们，我来实现你们的愿望。',
    }

ships['炎夏守望者'] = {
    index='101_2',
    gold='600',
    desc1='南国的小岛，是休假的好去处。不过在这天气里，还是待在有冷气的地方更好吧？',
    desc2='总会有人击碎你的幻想，将你拉到现实中——烈日与沙滩，像极了地狱。',
    }

ships['约定'] = {
    index='125_1',
    gold='600',
    desc1='埃罗芒什海滩边，她一直在等待着。',
    desc2='司令官，我在等你，就像之前，你在等我。',
    }

ships['沙滩教皇'] = {
    index='210_1',
    gold='600',
    desc1='世纪末的霸者，就是她。',
    desc2='嘿，司令官，你这是要去哪？…要来搭顺风车吗？钱你看着给，路线我决定。',
    }

ships['星海花岛'] = {
    index='139_1',
    gold='600',
    desc1='收回前言，这个地方一切都不会老去。',
    desc2='这下，玫瑰也不会凋零，一切都归于永恒。',
    }

ships['从唐宁街到纳尔逊街口'] = {
    index='119_1',
    gold='600',
    desc1='曾经繁华的华埠逐渐式微，唐宁街的人也注意到了这一点，她们也在寻求新的转机。',
    desc2='但从现在起，这一切与皇家方舟无关，也与我无关。',
    }

ships['康兰之交'] = {
    index='117_1',
    gold='600',
    desc1='送给我的吗？谢谢！小长春好可爱！',
    desc2='这两个小家伙很可爱的，要来摸摸看吗？轻点哦，不要吓坏她们。',
    }

ships['碧波秋水'] = {
    index='194_2',
    gold='600',
    desc1='1、2、3——登场的时间到了，射水鱼，别磨磨蹭蹭的，下一个就轮到你了。',
    desc2='3、2、1——！谢谢大家！表演很成功，多亏了大家的帮助！',
    }

ships['沧海归兰'] = {
    index='195_2',
    gold='600',
    desc1='这一身还挺不错的，又好看又适合活动，大青花鱼眼光还不错嘛~',
    desc2='真是的，大青花鱼你别走那么快啊…怎么样？这身打扮还不错吧？',
    }

ships['江海月明'] = {
    index='99_1',
    gold='600',
    desc1='我要这个，还有这个，嗯，很符合我气质的衣服。',
    desc2='谁说穿上这一身就不方便运动了？给你们看看我的绝活速度！',
    }

ships['赝作者'] = {
    index='72_1',
    gold='600',
    desc1='为万圣节特别准备的服装。由于借鉴了某位一直挨打的深海舰的元素，所以基本上吓不到人。',
    desc2='召来噩梦的，是其本身。意识/反转——鬼神，降临。',
    }

ships['南瓜小姐'] = {
    index='401_1',
    gold='600',
    desc1='据说今天这样穿就不会引人注目，是真的吗？',
    desc2='南瓜小姐，开始巡游了！',
    }

ships['恶魔牢笼'] = {
    index='381_1',
    gold='600',
    desc1='印第安纳决定改变她在人们心中的印象。',
    desc2='喂，过来过来，别问那么多无聊的事情，今夜，是只属于你我的时间。',
    }

ships['象征和平的少女'] = {
    index='292_1',
    gold='600',
    desc1='喂喂喂！长官，我是今年的圣诞老人哦！快向我许愿！',
    desc2='今天是平安夜，可不能做打打杀杀的事情，请大家和平、快乐地接收礼物吧。',
    }

ships['圣夜颂歌'] = {
    index='304_1',
    gold='600',
    desc1='圣诞之夜，于夜空绽放红莲之火。盛典，就此拉开帷幕。',
    desc2='随着歌声，沉浸于圣夜的欢庆之中。许下的愿望，就此实现。',
    }

ships['圣夜歌者'] = {
    index='411_1',
    gold='600',
    desc1='不要向神祈愿，要向自己的内心诉说。',
    desc2='用美丽的歌声赞颂爱情与希望，诸神与恶魔皆不能阻止这一切，因为人类有着无限的可能',
    }

ships['雪夜俏佳人'] = {
    index='404_1',
    gold='600',
    desc1='密苏里，这、这一身，真的没问题吗？',
    desc2='她为了今天准备了非常多的礼物，只为了小孩子不再怕她，能聚在她身边，一同玩耍。',
    }

ships['霓裳彩羽'] = {
    index='74_1',
    gold='600',
    desc1='Z家有女初长成，长在深闺无人知。',
    desc2='这是我全部的积蓄了，逸仙姐姐，请一定让我赢Z16那小丫头一次！',
    }

ships['月夜芳华'] = {
    index='75_2',
    gold='600',
    desc1='月下孤影寂，芳华照月明。',
    desc2='这份独属于我的魅力，自然不会输给任何人！',
    }

ships['宵青鸾'] = {
    index='101_3',
    gold='600',
    desc1='月光下，影成双。夜归的姐妹，度过了完美的一日。',
    desc2='“该把手松开了吧……？”“你是在害羞嘛~姐姐。”',
    }

ships['熙赤凤'] = {
    index='102_2',
    gold='600',
    desc1='日轮升，鸟虫鸣。昼出的姐妹，开始了甜蜜的一日。',
    desc2='“有必要牵手吗……？”“不是很高兴嘛~姐姐。”',
    }

ships['爱染狐'] = {
    index='358_1',
    gold='600',
    desc1='花花世界迷人眼。就连最精锐的战士，也会沉沦。',
    desc2='今晚，卸下沉重的包袱。让欢声与笑语，成为食粮。',
    }

ships['跃龙门'] = {
    index='408_1',
    gold='600',
    desc1='海阔凭鱼跃，天高任鸟飞。',
    desc2='嘿嘿！等我跃龙门成功，就算是飞机我也不怕了！',
    }

ships['电影放映员'] = {
    index='55_1',
    gold='600',
    desc1='奥马哈电影院开业了！大家欲购从速，两人八折，三人免单一位！',
    desc2='今天的电影…放什么好呢？司令官，给个建议好不好？',
    }

ships['第一猎手人偶'] = {
    index='118_1',
    gold='600',
    desc1='飘动的黑羽，妖艳的装束，情人节的夜晚，一个宛如人偶般精致的女子，向你发出了邀请。',
    desc2='我白天给你发了邀请函的，看来你注意到了。',
    }

ships['守候者'] = {
    index='28_2',
    gold='600',
    desc1='司令官，久等了吗？特殊时期，还请见谅。',
    desc2='嘿嘿，那么，接下来才是重头戏，对吧？',
    }

ships['超越巅峰'] = {
    index='325_2',
    gold='600',
    desc1='每一次的挑战，都是冲击巅峰的步伐。',
    desc2='终有一天，自己会成为自己的丰碑。',
    }

ships['健身房教练'] = {
    index='297_1',
    gold='600',
    desc1='在一个绿色头发不愿透露姓名的伙伴的建议下，乔治埃夫洛夫开了健身房。',
    desc2='你这个跑步动作，很不标准，不仅无助于健身，还会伤到膝盖，还有，这里也有问题…请我当你的健身教练吧？我会好好指导你的。',
    }

ships['海上网球魔术师'] = {
    index='126_2',
    gold='600',
    desc1='这是魔术还是魔法，并不重要。问题是，我们要怎样击败她？',
    desc2='她的青春，就是网球。',
    }

ships['拳愿'] = {
    index='58_1',
    gold='600',
    desc1='哼，没有拳套便无法挥拳了吗？拳击岂是如此不便之物。',
    desc2='要打吗？晚饭前我还可以享用一下。',
    }

ships['实验α型兵装'] = {
    index='223_3',
    gold='600',
    desc1='以第一代兵装为蓝本，加以改进后诞生的实验品。大概，是这样没错。',
    desc2='为了计划，必须尽早完成这类兵装的测试。哪怕，只是走一个过场。',
    }

ships['夏，爱恋与秘密基地'] = {
    index='277_2',
    gold='600',
    desc1='这个夏天，期许，会成为最怡人的甘醇。',
    desc2='这个夜晚，愿景，不再是最遥远的距离。',
    }

ships['魔镜中的公主'] = {
    index='80_3',
    gold='600',
    desc1='王子，唤醒我的王子在哪里？',
    desc2='可爱的小矮人们，你们说的王子，到底在哪里？',
    }

ships['海湾的歌声'] = {
    index='294_1',
    gold='600',
    desc1='这颗苹果，是上天给我的礼物吗？',
    desc2='日日夜夜思念的王子啊，你究竟在哪里？',
    }

ships['灰姑娘？女仆长！'] = {
    index='18_2',
    gold='600',
    desc1='别磨磨蹭蹭的！这里，还有那里，都给我打扫干净！',
    desc2='这是您交给我的任务，我定会完成，所以……快动起来！',
    }

ships['花开六月中'] = {
    index='275_2',
    gold='600',
    desc1='将这美妙的时光绘成画卷，铭刻于心间。',
    desc2='细心呵护的花儿，终将绽放。',
    }

ships['掌心的奇迹'] = {
    index='270_1',
    gold='600',
    desc1='——想要为你留下这段时光中，最美好的回忆。',
    desc2='任性也好，自私也好——想要独占你的一切。',
    }

ships['大富翁'] = {
    index='419_1',
    gold='600',
    desc1='我做了一个游戏，本体免费，大家一起来快乐的玩耍吧！',
    desc2='想要这些钱吗？那就——来玩游戏吧！规则我定。',
    }

ships['一瞬'] = {
    index='442_1',
    gold='600',
    desc1='嘿！那边的，能帮我拍张照吗？',
    desc2='她摘掉墨镜，回头看向你。只一瞬，便决定了未来。',
    }

ships['海上清风'] = {
    index='1_3',
    gold='600',
    desc1='出发吧，向着未知的海洋！',
    desc2='海风静静吹过她的身体，蓝色的天空与海洋，喧闹的猫咪和海鸟，此刻都是画卷的一部分。',
    }

ships['鱼地踱步'] = {
    index='302_1',
    gold='600',
    desc1='谁又能拒绝夏天的潜泳呢？',
    desc2='这里…可真是太有趣了！',
    }

ships['海花盛开，星夜绚烂'] = {
    index='97_4',
    gold='600',
    desc1='这里可凉快啦，一起来玩吧！',
    desc2='繁星映海心似月，伊人照花肤胜雪。',
    }

ships['狂躁派对'] = {
    index='89_1',
    gold='600',
    desc1='“噩梦”会以意想不到的形式降临——',
    desc2='别缠着我了！小心我把你丢到锅里去！',
    }

ships['夏沫之花'] = {
    index='209_5',
    gold='600',
    desc1='因为在某个奇怪的赌注里输掉了，密苏里今年夏天不能当宅女了。',
    desc2='我答应过你，今年不宅在家里了。这一身……我的品位还不错吧？',
    }

ships['山与海之名'] = {
    index='179_2',
    gold='600',
    desc1='司令官，给这片海洋起一个名字吧。',
    desc2='这里，就是我们的家。',
    }

ships['草原骑兵'] = {
    index='456_1',
    gold='600',
    desc1='整装待发，指挥官同志我们赶紧出发吧。',
    desc2='喜欢这种飞驰的感觉吗？',
    }

ships['闪光幽魂'] = {
    index='293_1',
    gold='600',
    desc1='大功告成，看我来吓吓你们！',
    desc2='我来啦~我走啦~哎哎，南瓜你别乱动……啊啊啊，好险，差点失控！',
    }

ships['鬼灵精怪'] = {
    index='351_1',
    gold='600',
    desc1='真是的，就这样就被吓到腿软，U1206你行不行啊？',
    desc2='哇呜——！有没有被我吓到？……嘿嘿，胆小鬼，长官是个胆小鬼哦！',
    }

ships['红月孤塔'] = {
    index='207_2',
    gold='600',
    desc1='夜晚降临，孤塔高悬。红色的月光下，一个神秘的白发少女向你缓缓走来……',
    desc2='擅自闯入我的修道院，就要付出血的代价，准备好了吗？',
    }

ships['南瓜骑士'] = {
    index='100_1',
    gold='600',
    desc1='说实话，这种事情交给妾身来做，是不是不太合适。倒不是说不合理，就是……妾身有点乏，想好好休息一天。',
    desc2='妾身累了，妾身只和你们打三招，如果你们能接住，妾身就放你们过去。',
    }

ships['红'] = {
    index='29_4',
    gold='600',
    desc1='列克星敦换上了这件衣服后，气质突然不一样了。',
    desc2='是O老汇的天后，还是X仙境的红心女王，这一切并不重要。她是列克星敦，也只是列克星敦。',
    }

ships['一番舰（改后）'] = {
    index='248_2',
    gold='',
    desc1='为大淀量身定制的专属服饰，深受她的喜爱。',
    desc2='一起加油吧~提督大人！',
    }

ships['赤霞'] = {
    index='461_2',
    gold='600',
    desc1='她摘下了厚重的头盔，卸下威风的盔甲，着盛装落座于窗前——身边的一切皆为点缀，唯其可当主角。',
    desc2='不知何时，她看向了你，与你四目相对，正是最美的画。',
    }

ships['自是佳人来'] = {
    index='455_2',
    gold='700',
    desc1='曾经的女武神，今日的佳人。',
    desc2='佳人始终是佳人，无论手中握着的是武器还是发簪。',
    }

ships['寻春'] = {
    index='467_1',
    gold='800',
    desc1='春日将至，鞍山迫不及待换上了新衣服，迎接春天的到来。',
    desc2='我喜欢春天，你呢？',
    }

ships['惊梅'] = {
    index='467_2',
    gold='',
    desc1='梅花是春将至的象征，却又意味着春未至。',
    desc2='切勿惊扰了梅花，她们不需要任何赞美与歌颂。',
    }

ships['One Day'] = {
    index='325_3',
    gold='700',
    desc1='一封信，一段旅程……懵懂的情愫，将归于何处？',
    desc2='一天，太过短暂。紧握的双手，再也不会分离。',
    }

ships['Mahan&Alfred<Burst Mode>'] = {
    index='301_2',
    gold='700',
    desc1='——同步完成！阿尔弗雷德，我们上！',
    desc2='力量溢满全身！我一定能拿到Ace！',
    }

ships['探春之日'] = {
    index='469_1',
    gold='700',
    desc1='春至，春归，春意闹。',
    desc2='春天到了，你喜欢吗？',
    }

ships['问春'] = {
    index='459_1',
    gold='700',
    desc1='山上的桃花开了，要一起出去玩吗？',
    desc2='工作？我才不要工作，我要出去春游！',
    }

ships['绮想少女'] = {
    index='72_2',
    gold='700',
    desc1='映在瞳孔中的景色，因你而变得绚烂多彩。',
    desc2='一张张照片，汇成了银河。',
    }

ships['Memories'] = {
    index='431_1',
    gold='700',
    desc1='这是只属于你我的，故事的开端。',
    desc2='平凡的日子，恬静的日常。',
    }

ships['小红狼'] = {
    index='289_2',
    gold='700',
    desc1='很久很久以前，有个小红帽，她啊……',
    desc2='出门要小心大灰狼哦——！',
    }

ships['丛林天使'] = {
    index='206_1',
    gold='700',
    desc1='蹡蹡！我是北卡罗来纳，你的守护天使，有什么愿望的话，就告诉我吧！我会……尽力帮你实现的。',
    desc2='我只是个小孩子啊，你到底对我有什么不切实际的期待。',
    }

ships['莱茵演习'] = {
    index='6_2',
    gold='',
    desc1='就像从前那样，她站在海面上，遥望着敌人的方向。',
    desc2='破敌，只需一瞬。',
    }
	
ships['马汉（愚人节）'] = {
    index='301_2-1',
    gold='',
    desc1='',
    desc2='',
    }

ships['冰美人'] = {
    index='474_1',
    gold='700',
    desc1='我不要出门，不要晒太阳，我想吹空调。',
    desc2='热死了……就不能找个凉快点的地方度假吗？',
    }

ships['邀约'] = {
    index='8_3',
    gold='700',
    desc1='适当放松也是必要的，来杯下午茶如何？还是说，要和我一起品酒？',
    desc2='要出门兜风？好啊，想去哪里？',
    }

ships['陪伴'] = {
    index='9_2',
    gold='700',
    desc1='今天，陪陪我好不好？',
    desc2='嘿嘿，你真好。今天就是我们的二人世界，不许想别人哦！',
    }

ships['热情似火'] = {
    index='431_2',
    gold='700',
    desc1='于骄阳下，谱写一段属于你我的旋律。',
    desc2='因为有你的陪伴，就连忙碌的工作，也充满了别样的光彩。',
    }

ships['白夜舞者'] = {
    index='31_2',
    gold='',
    desc1='黑与白，始终是人们最津津乐道的话题。',
    desc2='这样搭配似乎也不错，喜欢吗？',
    }

ships['悠闲午后的偶遇'] = {
    index='418_1',
    gold='700',
    desc1='咳、咳咳！没想到阁下也有来此闲逛的兴致呢。',
    desc2='既然如此，淑女的“临时邀约”您必然是不会拒绝的吧？',
    }

ships['下午3点，忧愁不见'] = {
    index='418_2',
    gold='',
    desc1='咳、咳咳！没想到阁下也有来此闲逛的兴致呢。',
    desc2='饮茶一杯，职场的不顺心也能缓解许多。或许下次也可以和你聊一聊？',
    }

ships['燥热节拍'] = {
    index='233_2',
    gold='700',
    desc1='接下来，让我们一起炒热会场的气氛吧，提督——',
    desc2='漫长的夜晚，才刚刚揭开序幕。',
    }

ships['斯塔比亚艳阳下'] = {
    index='211_2',
    gold='700',
    desc1='每一次相遇，都能遇见更好的你。',
    desc2='当下的点点滴滴，都是弥足珍贵的记忆。',
    }

ships['祭典女王'] = {
    index='489_1',
    gold='700',
    desc1='同志你这一副吃惊的表情是怎么回事？怎么样，这衣服还算合身吗？',
    desc2='别站着了，快带我去会场吧。',
    }

ships['一番星'] = {
    index='64_4',
    gold='700',
    desc1='你的色彩，汇聚成了璀璨的“星河”。闪耀着，扫去阴霾。',
    desc2='星光下，轻声呼唤着。为大家的笑颜，致上安可。',
    }

ships['闪耀的Begleitgesang'] = {
    index='75_3',
    gold='700',
    desc1='即便只是和声伴唱，Z16也定然是最引人注目的闪耀明星~',
    desc2='不过芙蕾德莉卡也想有单人演出的曲目呀。',
    }

ships['摇滚吧！雷霆律动'] = {
    index='93_2',
    gold='700',
    desc1='基林我啊，其实对自己声线不太自信呢，但排练肯定会加油的……',
    desc2='要不试试后面的架子鼓？',
    }

ships['Royal Salute Three Two One！'] = {
    index='82_3',
    gold='700',
    desc1='现在正是，鸣响皇家礼炮之时！',
    desc2='就让萤火虫和伙伴们一起，将会场气氛带向高潮吧!',
    }

ships['乐手派遣中'] = {
    index='7_4',
    gold='700',
    desc1='忙碌的生活，让人难以接受。但至少，还有你在身边。我们走吧，搭档。',
    desc2='探寻……旅途的意义。',
    }

ships['等候区·焦躁·倒计时'] = {
    index='20_1',
    gold='700',
    desc1='呵，好不容易请来的乐队教练被晾在这种地方，到时该给司令官来点什么惩罚游戏才能平复心情呢？',
    desc2='不会吧，我不但迷路了，还被人忘记了？！',
    }

ships['恋与奇迹'] = {
    index='38_2',
    gold='700',
    desc1='于交织的聚光灯下，唱响心动的旋律。随着节拍，忘记烦恼与忧愁。',
    desc2='荧光棒中闪烁着的，是由无数回忆所谱写的音符。',
    }

ships['决战兵器—兔女郎MKII'] = {
    index='19_1',
    gold='700',
    desc1='有了初代兵装的数据反馈，反击的新衣装也更显靓丽动人。',
    desc2='指挥官对制服款式的偏好，也在港区引发了新一轮讨论……',
    }

ships['魔女与苹果派之夜'] = {
    index='226_1',
    gold='700',
    desc1='「♫魔、魔咒既已施下，你将无处遁藏……♫」',
    desc2='「♫诅咒现已缠身，你若执迷不悟，不如问我妹妹……♫」（让小姐一口气唱这么多真是太为难她啦！）',
    }

ships['幻妙古生游'] = {
    index='206_2',
    gold='700',
    desc1='开启这段旅程，只我们二人。无声骨骸依然在见证，生命永不息……',
    desc2='如果知道我曾与眼下的生灵在同个时代友善共存，会吓你一跳么？',
    }

ships['青春进行时'] = {
    index='436_1',
    gold='700',
    desc1='总算来了呀，大忙人~您要是再晚一点，这些美味的炸物可就没有您的份了。',
    desc2='边走边吃吧~这里还有很多有趣的地方。',
    }

ships['一触即发'] = {
    index='142_2',
    gold='700',
    desc1='正午艳阳高照，正是将瞌睡虫们一网打尽的好时机。',
    desc2='CUT——！刚才的台词是不是很有感觉？让我看看，接下来是……',
    }

ships['贵胄典藏'] = {
    index='446_1',
    gold='700',
    desc1='她穿上这套女仆装的次数屈指可数，只为了一年一次的藏品整理，请好好欣赏吧！',
    desc2='至于手中拿的为何不是扫帚？房间里不是还混进了几只“大老鼠”嘛~',
    }

ships['当幸运来敲门'] = {
    index='13_3',
    gold='800',
    desc1='看在你今年表现优异的份上，本小姐可以勉为其难的满足你一个愿望。快点，别想太多啊！',
    desc2='我说，你在磨蹭什么啊！一个愿望而已，有必要想半天吗？',
    }

ships['冬日射手'] = {
    index='157_1',
    gold='800',
    desc1='保暖性优秀亦不失节日喜庆的红色战衣，穿着它圣地亚哥可以玩上一整天。',
    desc2='为了来年的冰淇淋自由，圣地亚哥定当全力以赴！',
    }

ships['圣夜幽烛'] = {
    index='10_2',
    gold='800',
    desc1='虽说还是在众人怂恿之下穿上的节日服装，但亲王这次倒表现得挺满意呢。',
    desc2='别顾着看戏了，都是因为穿着这套衣服，今晚你得陪我一起去分发礼物……',
    }

ships['划过夜空的礼炮'] = {
    index='316_1',
    gold='800',
    desc1='同志快来一起参加这庆典吧！全弹发射！',
    desc2='同志，快和我过来吧，时间可是很紧的！',
    }

ships['墨韵凝香'] = {
    index='162_3',
    gold='700',
    desc1='许久不用的书房已被拾掇妥当，今天或许是个习字的好日子。',
    desc2='也许提督的注意力并不在她身后的墨案，但还请凝神静气，妥善地写就对联吧。',
    }

ships['姝丽映华裳'] = {
    index='366_1',
    gold='700',
    desc1='红黑金的靓丽配色与大胆的高叉裁切，凸显雍容华贵之感。',
    desc2='那把烟杆估计是密苏里的主意呢？',
    }

ships['红梅迎春开'] = {
    index='81_1',
    gold='700',
    desc1='库库库……庶民哟，见证吾之圣装与波涛鸣泣之力吧！',
    desc2='嗯哼！吾准许了！就为汝留下前排的位置，好好欣赏吾的身姿吧！',
    }

ships['嫣红夜宴'] = {
    index='409_1',
    gold='700',
    desc1='大胆热情的酒红色礼服，只为此刻……',
    desc2='从礼服选择到宴会场地的布置都是我个人的主意哦~',
    }

ships['霓裳纨扇照花灯'] = {
    index='99_2',
    gold='700',
    desc1='现在吃惊还太早了~所有灯谜都会被我解开哦！',
    desc2='什么呀！？灯谜是这样的吗！？',
    }

ships['明日之歌'] = {
    index='113_2',
    gold='800',
    desc1='难得的好天气，陪我外出逛一圈如何？',
    desc2='与淑女的约会，纵是百遍也不会嫌腻吧？',
    }

ships['在厄尔河畔'] = {
    index='299_1',
    gold='700',
    desc1='蓝天白云，微风和煦，还有她……',
    desc2='这么好的天气，不枉我们驱车一小时过来的辛劳咯，嘿嘿~',
    }

ships['闪耀色彩'] = {
    index='105_2',
    gold='700',
    desc1='让淑女等了这么久，您还真是愚钝。别紧张，把今天当成特殊的“演习”就好了。那么，让我们走吧，指挥官。',
    desc2='……好紧张！刚才已经是极限了…让我缓一下……',
    }

ships['重装阵列'] = {
    index='520_1',
    gold='',
    desc1='可用战术小队已全体部署，执行搜索歼灭任务，确保不漏一人……',
    desc2='可用战术小队已全体部署，执行搜索歼灭任务，确保不漏一人……',
    }

ships['Love Melody'] = {
    index='483_1',
    gold='700',
    desc1='请欣赏…这为你而作的“旋律”。',
    desc2='……有需要改进的地方吗？',
    }

ships['在途中'] = {
    index='39_2',
    gold='700',
    desc1='司令官，快来这边！这里面有好多猫咪~好可爱！心都要融化了！',
    desc2='哈哈~你们好黏人啊，一个一个来——',
    }

ships['The First Movement'] = {
    index='483_2',
    gold='',
    desc1='请欣赏…这为你而作的“旋律”。',
    desc2='……有需要改进的地方吗？',
    }

ships['流光过隙'] = {
    index='532_1',
    gold='700',
    desc1='时光呀，请稍作休息。将此间的美好，传递给世人。',
    desc2='与你同行，再也不会迷失。',
    }

ships['假期疲倦的理由'] = {
    index='488_1',
    gold='700',
    desc1='嗯，如果能把手柄都搓坏，那时候我就可以精通了！',
    desc2='你可少玩点受苦游戏吧！',
    }

ships['少女正梳妆'] = {
    index='372_1',
    gold='800',
    desc1='当上秘书舰的第一天…要给提督留下一个好印象。',
    desc2='我是早春！很高兴能成为您的秘书舰，提督！',
    }

ships['夏日绮想曲'] = {
    index='67_1',
    gold='800',
    desc1='冒险之旅，Yosoro！提督，可别掉队咯！',
    desc2='哈哈~海岛就在眼前了！我们是第一名！',
    }

ships['六叠半的秘密基地'] = {
    index='24_1',
    gold='700',
    desc1='还真准时啊。东西带来了吗？那么，该一决胜负了。',
    desc2='公平起见，用水枪。3、2、1——',
    }

ships['那一天，邂逅'] = {
    index='312_1',
    gold='700',
    desc1='哎呀，竟然有人能找到这里……你好，是要找什么书吗？',
    desc2='随便吗？那不如闭上眼睛，说出你第一个想到的词吧。',
    }

ships['丹枫漫步时'] = {
    index='527_1',
    gold='700',
    desc1='还是第一次这样地度过秋日，心里稍微有些局促不安呢……',
    desc2='只是一会儿也可以，坐下来听我说点心里话吧？',
    }

ships['我心永恒'] = {
    index='38_3',
    gold='800',
    desc1='我心与你同往，与你相依。我心只属于你，爱无止境。',
    desc2='无论发生什么，都无法将你我分隔。',
    }

ships['夜之凝誓'] = {
    index='112_5',
    gold='800',
    desc1='踏过悠长下延的回环阶梯，我们将齐步迈向瑰丽未来。',
    desc2='在我这边，家族和组织的新面孔还挺多的，你可得好好熟悉下。',
    }

ships['猩红女王的宴饮'] = {
    index='206_3',
    gold='700',
    desc1='把往昔的回忆具现化之后，就是这样的感觉吧？',
    desc2='重点不在这里，喝得尽兴才是最重要的！',
    }

ships['碧荷浣芙蓉'] = {
    index='502_1',
    gold='700',
    desc1='如果能在盛夏赏荷采莲，那惬意的人生也不过如此。',
    desc2='但最重要的是多看看站在你面前的我，懂吗？',
    }

ships['盛宴的邀约'] = {
    index='360_1',
    gold='700',
    desc1='——有幸受邀来到王的盛宴，你就没话说吗？哇！？也没让你夸我…哼！勉强合格了！',
    desc2='哼哼，好好期待晚宴吧！',
    }

ships['红月的渡鸦之主'] = {
    index='367_1',
    gold='800',
    desc1='你的好运到此为止了。尽管挣扎吧，反正结局早已注定。',
    desc2='跑掉了啊。算了，这不是我该操心的事。',
    }

ships['见习女巫一二事'] = {
    index='496_1',
    gold='700',
    desc1='师傅说的素材到底在哪啊？再这样下去一定会被骂的！',
    desc2='到手了！一起拯救城镇吧，旅人！',
    }

ships['糖果魔法使'] = {
    index='490_1',
    gold='700',
    desc1='黑夜降临！一起来大闹一场吧！坏孩子会得到奖励，好孩子——要小心咯~',
    desc2='老不死的徒弟和路过的旅人？别来妨碍我！',
    }

ships['甜蜜补给站'] = {
    index='530_1',
    gold='700',
    desc1='喵呜，亲手配制的特制甜蜜补给品，保证能让你充满活力。爱丽丝你也要来一个尝尝吗？',
    desc2='怎么样，甜甜圈让你充满活力了吧？一直往前冲吧！',
    }

ships['甜蜜午后'] = {
    index='526_1',
    gold='700',
    desc1='等待是值得的。要不要再尝尝其他口味呢……',
    desc2='哇！队伍已经这么长了！？得赶紧了！',
    }

ships['珍馐百宝'] = {
    index='521_1',
    gold='800',
    desc1='世间的美食与珍宝，尽在此处——森罗万象阁，欢迎各位的光临。',
    desc2='我是这里的主人，轩辕氏。你呢？爱丽丝。真正的你，又是谁？',
    }

ships['The Knight of Hatter'] = {
    index='380_1',
    gold='800',
    desc1='没见过的小不点，对你擅闯此地的行径，可有解释？',
    desc2='“爱丽丝”……有趣的名字，快点离开这里吧。',
    }

ships['月影照人醉'] = {
    index='510_1',
    gold='700',
    desc1='与人交谈，非常期待。笑容，发自真心。',
    desc2='冰寒，已经褪去。能够感受到，您的温暖。',
    }

ships['奔赴舞台的灰姑娘'] = {
    index='522_1',
    gold='700',
    desc1='从没想过会有穿礼服的一天，连走路都有些不太稳当了……',
    desc2='安心啦，0点钟声敲响后，也不会有南瓜马车来把我抓走的。',
    }

ships['睡前故事'] = {
    index='118_2',
    gold='700',
    desc1='呼……我们刚刚聊到哪里了？还有，您这杯怎么还满着？',
    desc2='真的只是果汁，别太紧张了——故事讲到哪了？',
    }

ships['恋之交响诗'] = {
    index='269_2',
    gold='800',
    desc1='您的眼神已经把您出卖了~还是说，需要我来扮演您的“心灵之声”？',
    desc2='选择只有一次~要慎重考虑哦~',
    }

ships['猫愿心语'] = {
    index='391_1',
    gold='700',
    desc1='欢迎光临~今天也是老样子吗？我知道了，请您稍等片刻~',
    desc2='您的特调加甜点到了~请享用~',
    }

ships['圣诞惊喜'] = {
    index='351_2',
    gold='700',
    desc1='锵锵！我亲手做的这个蛋糕怎么样？长官要不要来一块？保证没加过氧化氢哦~',
    desc2='我只说没加过氧化氢，又没说它一定能吃',
    }

ships['极乐幻景'] = {
    index='117_2',
    gold='700',
    desc1='在这里，您是我们的客人。别太拘谨了，继续傻站着会变成雪人的哦。',
    desc2='别眨眼，接下来发生的事情，可能会让您永生难忘。',
    }

ships['雪原突袭'] = {
    index='397_1',
    gold='800',
    desc1='指挥员同志，赶快准备出发吧，我们要全速冲过冰湖到达目的地！',
    desc2='在冰面上飞驰的感觉怎么样？',
    }

ships['月下烛光'] = {
    index='524_1',
    gold='800',
    desc1='这还是我第一次做这个……比预想的要难啊',
    desc2='主人？应该是这么称呼的吧？',
    }

ships['日不落'] = {
    index='331_1',
    gold='800',
    desc1='奋起吧，日不落的勇士们——常胜利，沐荣光。',
    desc2='用我们的鲜血与信念，改写故事的结局！',
    }

ships['爆竹声声醒狮舞'] = {
    index='280_1',
    gold='800',
    desc1='好戏开场啦~接下来的表演保证让你们过目不忘！哎，不是这么用的吗？',
    desc2='霍埃尔~塞缪尔~检验成果的时候到了！',
    }

ships['白兔闹春'] = {
    index='30_3',
    gold='700',
    desc1='对联其实没有那么难嘛~司令官，来看看我写的怎么样？',
    desc2='除了对联以外，还有很多要准备的东西，所以还不能休息。',
    }

ships['弗吉尼亚小夜曲'] = {
    index='513_1',
    gold='700',
    desc1='微风轻拂，阳光正好。我想，是时候了。司令官，有兴趣和我跳一支舞吗？',
    desc2='月色微凉，星宇争辉。在童年的秘密基地，回忆过去，谱写未来。',
    }

ships['致璀璨的你'] = {
    index='13_4',
    gold='800',
    desc1='不用考虑太多，你只需要注视着本小姐就好。',
    desc2='太过耀眼了吗？那就闭上眼睛，用心去感受——我，就在这里。',
    }

ships['永生花'] = {
    index='211_3',
    gold='800',
    desc1='您瞳中的倒影，正是未来的景色。',
    desc2='那是，由我们共同描绘的未来。那份幸运，终于传递到我这里了。',
    }

ships['月光奏鸣曲'] = {
    index='521_2',
    gold='800',
    desc1='原来您说的惊喜到晚上还有一份吗？这可真是……出乎意料呢。',
    desc2='在此之后还会有其他惊喜吗？我很期待哦。',
    }

ships['今日阳光灿烂'] = {
    index='362_2',
    gold='800',
    desc1='欢迎来到54俱乐部，司令官。这里今天只有我们两个人哦~',
    desc2='今夜的星光会格外的诱人吗？',
    }

ships['春日郊游'] = {
    index='316_2',
    gold='800',
    desc1='你怎么走的那么慢呀，我们可是还有很多地方要去呢。',
    desc2='你要是走不动了的话，我们就在这花楸树下休息一下吧。',
    }

ships['紫翼天使'] = {
    index='498_1',
    gold='700',
    desc1='这个……据说是叫……时尚？我试着……学习了……一下……',
    desc2='真的有人……这么穿吗？我怎么觉得……被骗了。',
    }

ships['不期而遇'] = {
    index='486_1',
    gold='700',
    desc1='那么，接下来轮到您了~就让我看看您是否也拥有超一流的实力吧！',
    desc2='距离目标还差一点点！加油~加油~',
    }

ships['琉璃之花'] = {
    index='371_1',
    gold='800',
    desc1='浸浴月光，于午夜盛开。',
    desc2='星语留声，于此间舞动。',
    }

ships['G3'] = {
    index='461_3',
    gold='800',
    desc1='G3之力，汇于我身！',
    desc2='核心框架对各组件的兼容性比预期的更好，可以开始陆上测试。',
    }

ships['Mk.G3Ω'] = {
    index='461_4',
    gold='',
    desc1='陆上测试很成功，准备转入实战测试。',
    desc2='与随便的名字不同，这套装甲的战斗力意外的不差。',
    }

ships['心跳诊疗室'] = {
    index='228_2',
    gold='700',
    desc1='这位“病人”，您看上去气色不太妙呢。请来这边躺下，诊断要开始咯。',
    desc2='怎么一躺下就睡着了…害我也想睡觉了……',
    }

ships['轨迹'] = {
    index='227_2',
    gold='700',
    desc1='真巧，您也来活动身体吗？',
    desc2='网球可不是闹着玩的运动哦。',
    }

ships['午后的辛德瑞拉'] = {
    index='219_2',
    gold='700',
    desc1='时钟滴答，恰似魔法的旋律。镜中的她，闪耀着炫目的色彩。',
    desc2='与她一起享受着，午夜到来之前的美妙时光。',
    }

ships['夏日的呼唤'] = {
    index='208_1',
    gold='800',
    desc1='这里比你描述的还要漂亮呢，你是怎么发现这个地方的？',
    desc2='难得你这么有心，接下来想要什么奖励？',
    }

ships['奇奇妙妙心愿屋'] = {
    index='514_1',
    gold='800',
    desc1='想来点什么？话说您怎么一直盯着我看，怪难为情的……',
    desc2='哈？兔女郎？那又是什么稀罕玩意？',
    }

ships['好想告诉你'] = {
    index='66_1',
    gold='800',
    desc1='——就像是这样！哈哈，超有趣的对吧！还有还有~那一次——',
    desc2='……这算什么？突然袭击是犯罪的！暂停！',
    }

ships['月夜荧光'] = {
    index='82_4',
    gold='800',
    desc1='她坐在美的光彩中，像那皎洁无云而繁星满天的夜晚。',
    desc2='黑夜与白天最美妙的色泽，都在她的仪容和秋波里呈现。',
    }

ships['夏日余晖'] = {
    index='506_1',
    gold='800',
    desc1='难得出来野营，结果你就躲在帐篷里？至少坐到火边来吧。',
    desc2='别紧张，我们扎营的地方离水边还有一段距离，不会摔一跤就摔成落汤鸡的。',
    }

ships['赛机女郎'] = {
    index='241_1',
    gold='800',
    desc1='无限制组的决赛将在飞行表演之后举行，大家都准备好了吗？',
    desc2='特技飞行组将在无限制组决赛后进行，参与者可以提前开始热机准备了！',
    }

ships['星光律动'] = {
    index='31_3',
    gold='800',
    desc1='哎，你怎么现在就来了？我们还在彩排呢！',
    desc2='你想看的话坐那边吧，我们还得再练一会儿。',
    }

ships['爱你多一点'] = {
    index='188_2',
    gold='800',
    desc1='线条，描绘未来的愿景。每一笔，都是爱你的模样。',
    desc2='梦想呀～快长大～来到你身旁！',
    }

ships['水天一色'] = {
    index='253_1',
    gold='800',
    desc1='再美的景色，都不如眼前的你……提督，您真会逗女孩子开心呢。',
    desc2='可您东张西望的，在看什么呢？',
    }

ships['旖旎沫夏'] = {
    index='254_1',
    gold='800',
    desc1='哈哈，本大爷是无敌的！接下来该扮鲨鱼去吓那边的驱逐舰啦~！',
    desc2='哇！？扔了什么东西过来！？',
    }

ships['赛场精灵'] = {
    index='433_1',
    gold='700',
    desc1='振奋人心的啦啦队是一支成功球队必不可少的部分。',
    desc2='“啦啦队助阵是篮球赛最精彩的部分，少了她们的拍皮球毫无亮点。”——观众席上某位不愿透露姓名的E国装母。',
    }

ships['英格塞德之夏'] = {
    index='325_4',
    gold='700',
    desc1='……像这样，不好吗？',
    desc2='将“身份”抛到脑后，享受此刻的宁静。',
    }

ships['在他乡'] = {
    index='374_2',
    gold='700',
    desc1='你迷路了吗？不如在这待一会…和我一起。',
    desc2='说谢谢也太生疏了，不如用行动来表达谢意。',
    }

ships['悠闲夏日'] = {
    index='30_4',
    gold='700',
    desc1='都到海边了，你还放不下手里的工作吗？至少陪我一起躺一会儿嘛。',
    desc2='所以说，姐姐对你真是坏影响，工作这种东西不是随便应付一下就好了嘛。',
    }

ships['虚宿一'] = {
    index='333_1',
    gold='800',
    desc1='愿这份好运，同等地降临在您身上。',
    desc2='来点甜点放松一下，如何？',
    }

ships['魔女转运中'] = {
    index='94_1',
    gold='800',
    desc1='距离交货时间还有一会儿，稍微摸个鱼吧~',
    desc2='怎么冒烟了？老太婆又卖我残次品！？',
    }

ships['漫无止境的七月'] = {
    index='490_2',
    gold='800',
    desc1='我对这些不感兴趣，但能让您高兴的话，就另当别论了。',
    desc2='典籍上的内容果然有用…不，没什么。我在自言自语。',
    }

ships['秘密休息处'] = {
    index='530_2',
    gold='700',
    desc1='明明港区边上就有这么好的海景，干嘛还要大老远的跑去其他海滩。',
    desc2='回去之后可别跟其他人说这个地方，否则下次不带你来了。',
    }

ships['Gedunk Girl'] = {
    index='279_1',
    gold='800',
    desc1='来自万米高空的现做航空冰激凌，要来点吗？',
    desc2='冰激凌还有很多，排好队一个个来，不要抢哦。',
    }

ships['不合身的泳装'] = {
    index='540_1',
    gold='800',
    desc1='这件泳装去年还穿得下的啊，今年怎么就……',
    desc2='难道又要买新衣服了吗，好浪费啊。',
    }

ships['荣耀誓约'] = {
    index='18_3',
    gold='800',
    desc1='明明之前都跟你说过不用专门补一场了，没想到你还是……',
    desc2='连蜜月都要补上？离开港区那么久真的好吗？',
    }

ships['海之声'] = {
    index='111_4',
    gold='800',
    desc1='真不像话呀，姗姗来迟的主人公。你知道让人干等…会是什么后果吗？',
    desc2='见义勇为…那就暂且放你一马。走吧，都在等你呢。',
    }

ships['醺风正当时'] = {
    index='426_1',
    gold='800',
    desc1='我就说我的直觉不会出错。别愁眉苦脸了，来一杯放松一下~',
    desc2='哈哈~您不会喝醉了吧~您面前的是椰子还是西瓜~',
    }

ships['恋声轻语'] = {
    index='275_3',
    gold='800',
    desc1='您醒了。请稍等片刻，我马上为您斟茶。今天的搭配，是来自——',
    desc2='请尽情享受午后时光，主人。',
    }

ships['风华熠熠'] = {
    index='523_1',
    gold='800',
    desc1='是阳光太过刺眼，还是眼前的我让您无所适从呢？我很期待您的答案。',
    desc2='您该成长一些啦~虽然现在这样很有趣，但也会让人感觉很受伤啊。',
    }

ships['司夜女王'] = {
    index='200_2',
    gold='800',
    desc1='既然都找到我这来了，那我就大发慈悲的听听你的请求吧。',
    desc2='请我出手的代价可是很高昂的，开口之前想清楚。',
    }

ships['靛蓝精灵'] = {
    index='30_5',
    gold='800',
    desc1='好啦，别像木头人一样杵在那了。客人们马上就要到了，你也要准备好哦。',
    desc2='即使已经过了7年，那一天仍然像昨天一样历历在目。',
    }

ships['暗流涌动'] = {
    index='528_1',
    gold='800',
    desc1='总有人认为能绕开我，去做见不得人的勾当。看来，我得帮这伙人涨涨记性了。',
    desc2='下水道里的“老鼠”，你们好。',
    }

ships['花好月圆'] = {
    index='29_5',
    gold='800',
    desc1='今晚的月色真美，你愿意与我一起赏月吗？',
    desc2='你的脸怎么突然这么红？这两天天气转冷，可不要感冒了呀。',
    }

ships['永远辉煌的天空乡'] = {
    index='520_2',
    gold='800',
    desc1='金银遍地，财富之州，蒙大拿；山脉闪耀，最后宝地，蒙大拿。',
    desc2='旗帜的背面除了宣传标语之外还有蒙大拿的亲笔签名，不过已经磨损了许多。',
    }

ships['海市蜃楼'] = {
    index='451_1',
    gold='800',
    desc1='琼楼玉阁浮烟云，镜花水月落北溟。',
    desc2='远离凡尘，寻得片刻宁静。',
    }

ships['绯色狂想曲'] = {
    index='212_1',
    gold='800',
    desc1='你受邀而至，不用拘谨。今夜，注定是个难忘的夜晚。',
    desc2='宴会，开始了。',
    }

ships['恶灵古堡惊魂记'] = {
    index='564_1',
    gold='800',
    desc1='看来我们又有新的“客人”了~让我看看你能坚持到哪一关吧~',
    desc2='这也太快了！你在打速通吗！？',
    }

ships['新月之仪'] = {
    index='494_1',
    gold='800',
    desc1='于月光之下，释放潜藏在内心深处的欲求。',
    desc2='魔法呀，实现我的愿望吧。',
    }

ships['血夜魅影'] = {
    index='241_2',
    gold='800',
    desc1='这是我为今年的舰队学院万圣节音乐会而准备的演出服，还不错吧~',
    desc2='我在观众席给你留了个位子，就在第一排哦，晚上可别迟到了。',
    }

ships['甜食天使'] = {
    index='413_1',
    gold='800',
    desc1='哎，都跟你说不要偷偷跑进来了……算了，来尝尝这个味道怎么样？',
    desc2='还想吃的话等晚上打烊了我再给你做，现在你先出去啦。',
    }

ships['课前准备'] = {
    index='220_2',
    gold='800',
    desc1='感谢您为我买的咖啡。这深夜中的暖意，就像您一样。',
    desc2='难得的机会，要做到最好…要像您一样，无可挑剔才行。',
    }

ships['秋绪'] = {
    index='436_2',
    gold='800',
    desc1='湖畔的葡萄园梯田，你我的秋之回忆。',
    desc2='因为你，不再颠沛流离。在你的臂弯中，到达旅途的终点。',
    }

ships['微光'] = {
    index='89_2',
    gold='800',
    desc1='迎着风，迎向崭新的一天。',
    desc2='怀抱着对未来的憧憬，积蓄力量。为了那一天，绽放光芒。',
    }

ships['琉璃星愿'] = {
    index='99_3',
    gold='800',
    desc1='谁要告诉你许了什么愿呀~笨蛋！',
    desc2='我缺一个舞伴，有谁自告奋勇吗？机会不等人哦~',
    }

ships['楚格晚霞'] = {
    index='198_1',
    gold='700',
    desc1='太阳马上就要下山了，再滑最后一次就回去吧？',
    desc2='再不走的话可就要在山上过夜了哦，',
    }

ships['霜雪枫红醉迷离'] = {
    index='23_1',
    gold='800',
    desc1='晚烟袅袅，曲径通幽。',
    desc2='心中的苦闷，只与你说。对影成双，月下不思量。',
    }

ships['雪夜恋歌'] = {
    index='545_1',
    gold='800',
    desc1='这盒巧克力是我亲手做的哦，想要的话就来拿吧——但是，拿了就不许反悔了！',
    desc2='既然收下了，那就赶快尝尝看吧？',
    }

ships['红白色的惊喜'] = {
    index='448_1',
    gold='800',
    desc1='今天的日程我都安排好了。按照时间表，你现在应该过来陪我坐一会儿。',
    desc2='还有一整天供我们慢慢享受，不要着急。',
    }

ships['驯鹿特快号'] = {
    index='239_1',
    gold='800',
    desc1='守护孩子们的梦想，为孩子们带来欢笑——这就是我的使命',
    desc2='有您帮忙，真是轻松了不少。',
    }

ships['晚宴女皇'] = {
    index='210_2',
    gold='800',
    desc1='即使在最盛大的宴会上，她依然会成为所有目光的焦点。',
    desc2='一曲唱毕，台下安可的呼声此起彼伏。',
    }

ships['渊底微歌'] = {
    index='191_1',
    gold='800',
    desc1='沉入梦乡，聆听那熟悉的歌谣。',
    desc2='拭去泪水，奔向那艰辛的行路。',
    }

ships['亚特兰蒂斯假日'] = {
    index='321_1',
    gold='800',
    desc1='你好像喜欢上大西洲了？那就在这里再玩一段时间吧。作为涅普顿大人的客人，不尽兴而归可不行。',
    desc2='这座城市的美景，再过一百年也看不尽。',
    }

ships['战斗礼仪'] = {
    index='240_2',
    gold='800',
    desc1='主人，请您躲好。接下来，我要教来袭者一些基本的“礼仪”。',
    desc2='橡胶弹装填完毕。抓住攻击空隙——',
    }

ships['Day by Day'] = {
    index='39_3',
    gold='800',
    desc1='一想到你，心情就会变好，像是某种信号，不自觉地嘴角上翘。',
    desc2='一天又一天，品尝这甜蜜的爱意。',
    }

ships['镜中花·拂霓裳'] = {
    index='521_3',
    gold='1200',
    desc1='这如梦似幻的日子，迎来了最完美的尾声。而新的篇章，正徐徐展开。',
    desc2='未来的路，我们携手并进。',
    }

ships['镜中花·醉红妆'] = {
    index='521_4',
    gold='',
    desc1='招待完宾客，想必很累了吧。可这夜，还没有结束…您说对吗？',
    desc2='愿我如星君如月，夜夜流光相皎洁。',
    }

ships['蓝色妖姬'] = {
    index='362_3',
    gold='800',
    desc1='漫天飞舞的花瓣，与花海中最美的她。',
    desc2='这份美景，只有一人独享。',
    }

ships['待客之道'] = {
    index='100_2',
    gold='800',
    desc1='只是买几束花而已，你怎么去了这么久？晚上的客人们马上就要到了，快去做准备吧。',
    desc2='客随主便可不是你什么都不做的借口。',
    }

ships['夜雪初霁'] = {
    index='20_2',
    gold='800',
    desc1='这雪总算是停了。时间不多了，那么，请君聆听……',
    desc2='新年快乐，司令官。不知这一曲，您可满意？',
    }

ships['清池希声'] = {
    index='21_2',
    gold='800',
    desc1='您是被这琴音吸引来的吗？那么，得让您不虚此行呢。',
    desc2='新年快乐，司令官。至于那问题，琴声已替我作答了。',
    }

ships['红装素裹'] = {
    index='299_2',
    gold='800',
    desc1='你来晚了哦，是在胡同里迷路了吗？',
    desc2='看你这样子，真不知道谁才是第一次来的那个。',
    }

ships['混乱厨房'] = {
    index='340_1',
    gold='800',
    desc1='优秀的大厨不仅要能做得一手好菜，也要能把厨房管理的井井有条。',
    desc2='当然，有时候还需要制服一些过度鲜活的食材。',
    }

ships['幻梦境的爱丽丝'] = {
    index='559_1',
    gold='800',
    desc1='当想象与现实合二为一，爱丽丝还能走出这里吗？',
    desc2='不知周之梦为胡蝶与，胡蝶之梦为周与？',
    }

ships['秘密春游'] = {
    index='517_1',
    gold='800',
    desc1='终于有机会来放风筝了~比比看谁能放的更高吧，老师？',
    desc2='今天的天气也正合适，太好了。',
    }

ships['先发制人'] = {
    index='408_2',
    gold='700',
    desc1='虽然只是训练，但我也会全力以赴，准备好了吗？',
    desc2='在练习场上输，总好过在比赛里输。',
    }

ships['某天的奇幻漂流'] = {
    index='339_1',
    gold='800',
    desc1='桌面上的邀请函，是通往海底世界的钥匙。',
    desc2='与您共度的时光，每一秒都如同珍珠般闪耀。',
    }

ships['课间小憩'] = {
    index='219_3',
    gold='800',
    desc1='课堂上真是状况不断，幸好有您帮忙圆场。',
    desc2='抓紧休息一会儿，后头还有几节课呢。',
    }

ships['一日向导'] = {
    index='471_1',
    gold='800',
    desc1='接下来的行程要加速了，请跟紧我哦。',
    desc2='——对此，我的推荐是……',
    }

ships['小小调酒师'] = {
    index='407_1',
    gold='800',
    desc1='特调酵母小麦啤，多加鲜奶油威士忌深海不化冰，这就来！',
    desc2='还想要什么继续说，我一次全拿过来。',
    }

ships['与你的约定之日'] = {
    index='238_1',
    gold='800',
    desc1='您听见了吗？这片土地在对我们说，“欢迎回来”。',
    desc2='多想与您在一起，在这里生活下去。',
    }

ships['一日之计'] = {
    index='464_1',
    gold='800',
    desc1='别傻站在那了，快去换衣服吧。想看的话今天一天你可以慢慢看。',
    desc2='云鬓花颜金步摇，从此提督不早朝。',
    }

ships['又一次的偶遇'] = {
    index='370_2',
    gold='800',
    desc1='好巧啊，又遇到你了。坐下一起喝一杯咖啡吧。',
    desc2='要是不急的话，也可以多喝两杯哦。',
    }

ships['爱有天意'] = {
    index='80_4',
    gold='800',
    desc1='轻叩门扉，满怀的心意化作花瓣，如雨点般飘落而下，奏响爱你的旋律。',
    desc2='紧握双手，一同将心中的幸福传递下去。',
    }

ships['爱的魔力'] = {
    index='126_3',
    gold='800',
    desc1='悸动的心，等待着你的降临。与你一起，步入新的人生舞台。',
    desc2='望着你的脸庞，再也无法移开双眸。',
    }

ships['春日的呼唤'] = {
    index='137_1',
    gold='800',
    desc1='我们才逛了半天你就不行了吗？真拿你没办法，那我们下午去看电影吧。',
    desc2='电影开始之前，先来这边吃点甜点吧。',
    }

ships['网球公主'] = {
    index='201_1',
    gold='800',
    desc1='难得来一次网球场，陪我练两局吧，赢了有奖励哦。',
    desc2='当然，如果你输了也是有惩罚的哦。',
    }

ships['余韵'] = {
    index='503_1',
    gold='800',
    desc1='你总算醒啦。在你做白日梦的时候，我已经制定好复仇计划了！现在求饶还来得及哦~',
    desc2='我会让你输得心服口服的~',
    }

ships['艳紫鲛人'] = {
    index='498_2',
    gold='800',
    desc1='刚才那一圈……成绩有进步吗？太好了……',
    desc2='接下来……还要继续努力。',
    }

ships['珍藏的回忆'] = {
    index='215_1',
    gold='800',
    desc1='哇，这张照片你是从哪里翻出来的？不许看！',
    desc2='照片的背后还有某人的亲笔涂鸦。',
    }

ships['晴空下的心愿'] = {
    index='92_1',
    gold='800',
    desc1='鼓起勇气，说出心中的真实想法……不是很难吧？',
    desc2='加油，布雷恩！你可以做到的！',
    }

ships['盛夏的偶像'] = {
    index='414_1',
    gold='800',
    desc1='你再不按快门的话太阳可就下山了哦，还是早点拍完早点回去吧。',
    desc2='还是说，你还想拍夜景照？',
    }

ships['画心'] = {
    index='54_3',
    gold='800',
    desc1='窗隙微风入飞絮，竹边清露养孤花。',
    desc2='始怜幽竹山窗下，不改清阴待君归。',
    }

ships['画壁'] = {
    index='287_1',
    gold='800',
    desc1='神摇意夺，恍惚若梦；幻由人生，人心自动。',
    desc2='一阵风，一场梦，一首唱不完的歌。',
    }

ships['明晰如梦'] = {
    index='527_2',
    gold='800',
    desc1='——您把想说的话都挂在脸上了。我，自然是高兴的。',
    desc2='您可是让人好等，不过，是值得的。因为，是您呀。',
    }

ships['爱意微醺'] = {
    index='331_2',
    gold='800',
    desc1='——要说是巧合的话，未免有些太频繁了。我想，这是“缘分”才对。',
    desc2='您猜这杯酒有怎样的寓意呢？',
    }

ships['水生花'] = {
    index='191_2',
    gold='800',
    desc1='这就是人类的消遣方式啊~哈！畅快！你也来点？别跟我客气~',
    desc2='接下来，是狩猎时刻！',
    }

ships['夏日巡游'] = {
    index='18_4',
    gold='800',
    desc1='你再拍下去的话，沙滩上的好位置就要被抢光了哦。',
    desc2='3，2，1，茄子！',
    }

ships['盛夏南风'] = {
    index='418_3',
    gold='800',
    desc1='倒计时还没有结束…要不然，休息一会儿吧…和我一起？',
    desc2='凉爽的晚风，感觉可以走得再远一些了。',
    }

ships['木滩派对'] = {
    index='311_1',
    gold='800',
    desc1='新鲜现做的海鲜和烤肉，司令官你要来一点吗？',
    desc2='海鲜大部分在下一批，饮料在边上自己拿！',
    }

ships['一个人的圣代'] = {
    index='258_1',
    gold='800',
    desc1='跟美少女出来约会居然还迟到了，真不像话呢。',
    desc2='晚了这么久，单单一句事出有因可不够。',
    }

ships['永远'] = {
    index='276_2',
    gold='800',
    desc1='这个盛夏最美的风景，在我眼中绽放笑容。',
    desc2='与你为伴的每一天，宛如身处电影之中。你的一笑一颦，都在胶片中定格，永不褪色。',
    }

ships['予爱之海'] = {
    index='20_3',
    gold='800',
    desc1='侧耳倾听……海的声音。翻涌着的，是满溢而出的爱意。',
    desc2='琴声，正如爱的告白。',
    }

ships['为你编织的世界'] = {
    index='21_3',
    gold='800',
    desc1='无数的梦想化作五线谱上悦动的音符，共同谱写只属于我们的乐章。',
    desc2='你我的乐章，永远不会落下休止符。',
    }

ships['瞳中的天使'] = {
    index='316_3',
    gold='800',
    desc1='跟随心中的那个声音，穿过林间小径，来到你身边。',
    desc2='将最美的你，留在心间。将我的天使，揽入怀中。',
    }

ships['末物语'] = {
    index='223_4',
    gold='800',
    desc1='从你掌心感受到的温度，跨越虚拟与现实的边界。在你耳边，轻声许下誓言。',
    desc2='那誓言，历久弥新。正如身畔的你，一如既往的笑容。',
    }

ships['只因有你'] = {
    index='118_3',
    gold='800',
    desc1='才到嘴边的话语，因你的光芒而黯然失色。握紧的手，再也不会松开。',
    desc2='你所在的地方，便是我的归宿。',
    }

ships['山梨枝下'] = {
    index='351_3',
    gold='800',
    desc1='这件婚纱在我身上当然好看啦，你也不看看穿衣服的人是谁。',
    desc2='别看我了，看前面啦！',
    }

ships['凭阑赏风月'] = {
    index='97_5',
    gold='800',
    desc1='快些来，丢掉烦心事，只管眼前人。一笑一颦，恰似月中仙。',
    desc2='慢些走，留住月光辉，轻舞影成双。十全十美，宛若比翼鸟。',
    }

ships['月明共泛舟'] = {
    index='467_3',
    gold='800',
    desc1='河灯游弋，寄去思念。我爱的人儿啊，共饮一杯否？',
    desc2='月桂飘香，勾起情愫。我爱的人儿啊，再饮一杯否？',
    }

ships['心之渊'] = {
    index='195_3',
    gold='800',
    desc1='向你传达永不消逝的，爱的电波。',
    desc2='那声音，在你我的心头萦绕。就连呼吸，也有你的味道。',
    }

ships['星海星忆'] = {
    index='99_4',
    gold='800',
    desc1='沐浴星光，许下誓言。我眼中的你，一直是最美的模样。',
    desc2='漫步星海，挽起臂弯。你眼中的我，依旧是爱你的人儿。',
    }

ships['追忆未来'] = {
    index='75_4',
    gold='800',
    desc1='曾经梦中的未来，如今已化为现实。',
    desc2='今天，就是芙蕾德莉卡的个人表演。',
    }

ships['山野的呼唤'] = {
    index='206_4',
    gold='800',
    desc1='雄鹰捎来消息，有位故人邀你去约定之地一叙。',
    desc2='被选中的人啊，踏入亘古山谷，成为她的伴侣吧。',
    }

ships['绯红之约'] = {
    index='241_3',
    gold='800',
    desc1='何必这么紧张，台下的祝福可都是送给我们的。',
    desc2='我早就说过，人生的精彩瞬间没时间彩排，对吧？',
    }

ships['一掷千金'] = {
    index='300_1',
    gold='800',
    desc1='超级加倍还是弃牌认输？你大可以慢慢选择，因为最后一定是我全盘通吃~',
    desc2='买定离手，落子无悔！',
    }

ships['挚爱'] = {
    index='325_5',
    gold='800',
    desc1='蝴蝶翩飞，指引着前进的方向。在那路的彼端，泛起微光。',
    desc2='勾指起誓，诉说着不变的深情。在那路的彼端，扬起风帆。',
    }

ships['群星盛宴'] = {
    index='29_6',
    gold='800',
    desc1='这漫天的烟火，都是为你我而绽放。',
    desc2='宴会正在进入高潮，准备好了吗？',
    }

ships['恋语四季'] = {
    index='117_3',
    gold='800',
    desc1='与你相伴的三百六十五天，幻化成风，迎来四季的变换。',
    desc2='心间的话儿，说与你听。十指紧扣，不改此生情。',
    }

ships['委决不下'] = {
    index='576_1',
    gold='1200',
    desc1='别愣着看了啦，快帮我选一个！',
    desc2='真的要选左手这一件吗？行吧，听你的。',
    }

ships['委决不下（差分）'] = {
    index='576_2',
    gold='',
    desc1='别愣着看了啦，快帮我选一个！',
    desc2='真的要选右手这一件吗？行吧，听你的。',
    }

ships['胜利的美酒'] = {
    index='30_6',
    gold='',
    desc1='船闸就在前方——出击！',
    desc2='胜利，高于一切！',
    }

ships['胜利的回忆'] = {
    index='30_7',
    gold='800',
    desc1='虽然不如海报上的那么好看，但这份回忆胜在真实',
    desc2='胜利的喜悦，让人难以忘怀。',
    }

ships['爱与和平与女巫'] = {
    index='158_1',
    gold='800',
    desc1='又要到发糖果的时间了，这次一定要顺利啊。',
    desc2='被人盯上了，好麻烦。',
    }

ships['暮色幽影'] = {
    index='291_1',
    gold='800',
    desc1='据说，提着旧灯笼的看守者会与那摄人心魄的笛声一起出现在血色的月光下，直到朝阳升起时才消失在晨曦之中。',
    desc2='究竟是那笛声引来了看守者，还是看守者带来了笛声？',
    }

ships['林中倩影'] = {
    index='232_1',
    gold='800',
    desc1='于暗处守护光暗，这便是游侠的准则。',
    desc2='可别想逃过我的眼睛。',
    }

ships['秋时秋思'] = {
    index='572_1',
    gold='800',
    desc1='指尖轻触，将这方寸间的美景留作纪念。',
    desc2='耳畔的窸窣声，惹人心醉。',
    }

ships['青春炫光'] = {
    index='22_2',
    gold='800',
    desc1='该注视的是球才对吧？分心被打到可不关我的事哦。',
    desc2='嗯，总算有些斗志了。下一球，决定胜负——',
    }

ships['真理之环'] = {
    index='273_1',
    gold='800',
    desc1='敬请见证，我训练的成果。',
    desc2='老实说，这还不是我的极限。',
    }

ships['后发制人'] = {
    index='366_2',
    gold='800',
    desc1='这一球，定胜负！',
    desc2='胜利的号角，在此吹响！',
    }

ships['花舞的旋律'] = {
    index='530_3',
    gold='800',
    desc1='满怀心意，手捧爱的花束，要成为你心中的第一。',
    desc2='这是绝不让步的任性。',
    }

ships['圣洁礼赞'] = {
    index='532_2',
    gold='800',
    desc1='沐浴花雨，奏响爱之乐章。在那阶梯之上，许下永恒誓约。',
    desc2='为你捧起饱含爱意的花束，携手并进，走向光明的未来。',
    }

ships['海潮之下'] = {
    index='198_2',
    gold='800',
    desc1='与你一起，漫步在蓝色的水晶宫。',
    desc2='与她一起，沉浸在如潮的爱意中。',
    }

ships['琉璃绮遇'] = {
    index='139_2',
    gold='800',
    desc1='只一个眼神，便已经确定了彼此的心意。',
    desc2='心里，唯有你。',
    }

ships['有的放矢'] = {
    index='221_1',
    gold='800',
    desc1='您应该看的是箭靶，不是我这边才对吧？',
    desc2='……在训练场里说这种话，会让人失准的。',
    }

ships['悠闲午后的阅读时光'] = {
    index='565_1',
    gold='800',
    desc1='原来我的铅笔是被你藏起来了，难怪到处都找不到。',
    desc2='再不把笔还给我，批注就由你来替我写。',
    }

ships['迟来的暖意'] = {
    index='575_1',
    gold='800',
    desc1='——大忙人总算来了。那么，事不宜迟，你懂我的意思吧？',
    desc2='心间的暖流，因你而存在。',
    }

ships['圣诞夜的信使'] = {
    index='528_2',
    gold='800',
    desc1='“流星”的飞行状态良好，应该再过不久就能回来了；除此之外风平浪静，防区内一切正常。',
    desc2='轮到我去拆礼物了，你帮我看着点显控台啊。',
    }

ships['于心间闪耀'] = {
    index='238_2',
    gold='800',
    desc1='纷飞的雪花，恰如坠入尘世的流星。于此刻闭上双眼，许下你的愿望吧。',
    desc2='清脆悠扬的钟声，带来了好运。穿过窗，留下应许的馈赠。',
    }

ships['圣诞夜的流星'] = {
    index='407_2',
    gold='800',
    desc1='这还是我第一次做这个，希望路上不要出什么烦人的意外……',
    desc2='晚上一定要等我回来拆礼物！',
    }

ships['浓墨重彩'] = {
    index='59_3',
    gold='800',
    desc1='用这种笔写字出乎意料的难啊……你刚才说有个什么技巧来着？',
    desc2='算了，最后再写一遍，无论好不好就用这个了。',
    }

ships['如意随行'] = {
    index='188_3',
    gold='800',
    desc1='拍个定妆照而已啦~别担心！再说了，我也没找到火柴。',
    desc2='这糖葫芦应该不是道具吧？我可忍不了了！',
    }

ships['笑红尘'] = {
    index='224_2',
    gold='800',
    desc1='但得伊人笑，月海揽明珠。',
    desc2='你的表现可算得上是“痴”了~我非常满意。',
    }

ships['耀红装'] = {
    index='321_2',
    gold='800',
    desc1='这里比我想象的还要热闹啊，能多玩几个小时再回去吗？',
    desc2='那边那个好像也挺有趣的，我们过去看看吧。',
    }

ships['为有暗香来'] = {
    index='202_1',
    gold='800',
    desc1='该怎么说来着？对了，欢迎您大驾光临凌寒馆~',
    desc2='这是今日菜单！全是您喜欢的菜哦。',
    }

ships['黎明之星'] = {
    index='105_3',
    gold='800',
    desc1='你也想要红包？倒不是不可以，但是嘛……',
    desc2='你给我一个，我就给你一个。',
    }

ships['历久弥香'] = {
    index='523_2',
    gold='800',
    desc1='我算是搞懂了这所谓的“韵味”。如何？没让您失望吧~',
    desc2='我们的爱，如同一壶佳酿——越长久，越香醇。',
    }

ships['水天潭月'] = {
    index='228_3',
    gold='800',
    desc1='将你我的话语谱写成曲。十指紧扣，以轻柔的舞步奏鸣乐章。',
    desc2='爱，即永恒。',
    }

ships['渊碧粼光'] = {
    index='227_3',
    gold='800',
    desc1='踮起脚尖，在你的脸庞留下温热。那些藏在心里的话，寻到了归宿。',
    desc2='爱你，溢于言表。',
    }

ships['春映海畔'] = {
    index='149_2',
    gold='800',
    desc1='风儿带来思念与喜悦，将幸福的钟声送往远方。',
    desc2='指尖轻捻，那些辛酸与苦闷，再也不会困扰你我。',
    }

ships['心跳回忆'] = {
    index='269_3',
    gold='800',
    desc1='快看，这是我为你准备的礼物~猜猜看，里面会是什么呢~？',
    desc2='哈哈哈，想要的话就自己来拿~前提是，你能追上我——',
    }

ships['女仆小姐喋喋不休'] = {
    index='57_1',
    gold='800',
    desc1='要点单就说出来，难道让我猜你想要什么？哈？别想当然了！',
    desc2='对对对不起司令官！刚才没认出您来！',
    }

ships['深夜微歌'] = {
    index='29_7',
    gold='1000',
    desc1='酒不醉人人自醉，魂牵梦绕意中人。',
    desc2='花不迷人人自迷，朝思暮想梦中人。',
    }

ships['华色含光'] = {
    index='113_3',
    gold='800',
    desc1='与你共度的流金岁月，像是一首还未写完的诗。',
    desc2='执笔未落，愿时光停滞于此。你和我，心连心。',
    }

ships['转盼流光'] = {
    index='113_4',
    gold='800',
    desc1='伴着唇边呢喃的小调，踏入星河。以星光为指引，舞动——直至月色褪去。',
    desc2='牵起手，踮起脚尖，于星光间穿梭。耳畔传来轻语，述说爱的誓言。',
    }

ships['拾光小铺'] = {
    index='519_1',
    gold='800',
    desc1='你别瞧不起我，这种程度的……呼，好险好险。',
    desc2='不行了——休息休息，紧急补充能量！',
    }

ships['怠倦的清晨'] = {
    index='373_1',
    gold='800',
    desc1='现在不是才十点半吗，这么早叫我起来干嘛啊……',
    desc2='睡个懒觉天又不会塌下来。',
    }

ships['爱心之路'] = {
    index='433_2',
    gold='800',
    desc1='那么，我们的下一站要去哪里呢？',
    desc2='有些选择虽然老套，但很有效。',
    }

ships['夜幕的绯红骑士'] = {
    index='547_1',
    gold='800',
    desc1='悄然而至的预告信，锁定了今晚的目标。',
    desc2='穿梭在夜色中的那抹绯红，带来了迟到的正义。',
    }

ships['暴走之春'] = {
    index='506_2',
    gold='800',
    desc1='看你的样子，再走下去似乎有点强人所难了啊。那么，去边上喝点东西如何？',
    desc2='刚出完汗别喝太冰的水，对身体不好哦。',
    }

ships['吕根半日闲'] = {
    index='545_2',
    gold='800',
    desc1='你刚才跑哪去了，快来，我们的空闲时间不多了。',
    desc2='既然晚上就得回去，那在此之前的时间可得好好利用。',
    }

ships['临时主唱'] = {
    index='538_1',
    gold='800',
    desc1='麦克风测试——一切正常！快点到演出的时间吧！',
    desc2='虽然我是来代班的，但也不是半吊子哦~你们就准备好为我欢呼吧！',
    }

ships['初夏的暗号'] = {
    index='65_2',
    gold='800',
    desc1='微风带来你的讯息。青空下飞舞的花瓣，是属于我们的无声恋诗。',
    desc2='在月光下，轻声呢喃。两颗心，相伴到永远。',
    }

ships['琉璃般的爱恋'] = {
    index='490_3',
    gold='800',
    desc1='不经意的一瞥，于心海掀起波澜。自那时起，便已下定决心。',
    desc2='你瞳中让人迷醉的色彩，如琉璃般闪烁。从此刻起，你我不会分离。',
    }

ships['深海恋歌'] = {
    index='366_3',
    gold='800',
    desc1='深蓝色的大海衬托出的，是白金色的回忆。',
    desc2='这一杯，敬我们的未来。',
    }

ships['纯白天使'] = {
    index='321_3',
    gold='800',
    desc1='不用太过惊讶，我只是换了个新形象而已。怎么样，好看吗？',
    desc2='快来，还有很多惊喜你没看到呢。',
    }

ships['下一秒，说爱你'] = {
    index='273_2',
    gold='800',
    desc1='在平凡的日子里，迸发出的惊奇花火。被你吸引，是理所当然的事情。',
    desc2='光芒亲吻海面，反射出无数的光斑，如水晶般闪耀。恰似你的笑容，深深地刻在我心间。',
    }

ships['冰上守护者'] = {
    index='109_2',
    gold='800',
    desc1='还有谁想搞小动作的，放马过来吧！',
    desc2='各凭本事，祝你好运。',
    }

ships['浪花，再出发'] = {
    index='450_1',
    gold='800',
    desc1='挫折使人苦闷。但有你在，一个微笑便又是晴天。重燃斗志，再出发。',
    desc2='来吧，征服海浪。无论要经历多少次失败，只要有你在，就绝不会放弃。',
    }

ships['全速激情'] = {
    index='581_1',
    gold='800',
    desc1='比赛就要开始了，有事等我把冠军奖杯捧回来了再说吧。',
    desc2='来看看这次能不能创造新的赛道记录。',
    }

ships['慢慢喜欢你'] = {
    index='64_5',
    gold='800',
    desc1='听见你的声音，心间不由得涌上回忆。无数的画面中，不变的是你。',
    desc2='数不清第几圈，只记得晚霞染红了你的脸颊。因为你，我会永远记住这一天。',
    }

ships['刻在心底的名字'] = {
    index='93_3',
    gold='800',
    desc1='追逐你的身影，相信那就是幸福的方向。时间转啊转，终于被你发现。',
    desc2='相遇的火花点亮了夜空。星星在歌唱，将一直藏匿的话语，一点点告诉你。',
    }

ships['心跳的高度'] = {
    index='75_5',
    gold='800',
    desc1='她脸上的笑容，正是幸福的具象。',
    desc2='世界上最近的距离，就在心意相通的两个人之间。',
    }

ships['炽燃激情'] = {
    index='82_5',
    gold='800',
    desc1='最真挚的感情，来自最炽热的释放。',
    desc2='抛开平日的负担，回归真实的自我。',
    }

ships['好梦一日游'] = {
    index='29_8',
    gold='',
    desc1='在这一天，让梦境变成现实。',
    desc2='即使是虚拟的梦境，也充满着真实的情感。',
    }

ships['小小新浪潮'] = {
    index='112_6',
    gold='',
    desc1='出发前的最后确认。尝试了新的穿搭，转换心情的同时，也怀揣着期待。',
    desc2='听到了令人满意的答复。小小的面庞上，高挂起完美的微笑。',
    }

ships['临时课程'] = {
    index='546_1',
    gold='800',
    desc1='你怎么现在才来？趁还有点时间，快去热身吧。',
    desc2='进出泳池记得洗澡。',
    }

ships['霓虹迷情'] = {
    index='190_1',
    gold='800',
    desc1='迷离的夜光，与多变的霓虹相交融，揭开了诡谲的新篇章。',
    desc2='过往与今朝，交错的时光于此收束。彼此的红绳，系于一人之上。',
    }

ships['冰结之花'] = {
    index='510_2',
    gold='800',
    desc1='在炎夏中盛开的孤傲之花，那张精致的面庞之下，似乎隐藏着……',
    desc2='冰寒之中，有着一颗炽热的心。想要依靠的人，就在身边。',
    }

ships['盛夏夜宴'] = {
    index='455_1',
    gold='800',
    desc1='忘却生活的烦恼，与她一起沉浸在夏夜的美景中。',
    desc2='在烟火的照耀下，欣赏最美的她。',
    }

ships['海上猎心大作战'] = {
    index='244_1',
    gold='800',
    desc1='我收到了您心中传来的“求救”信号，接下来的事就交给我吧。',
    desc2='抱紧我，准备出发！',
    }

ships['曦光流虹'] = {
    index='23_2',
    gold='800',
    desc1='这风铃一响，必是有贵人到。您，也想与我共饮一盏吗？',
    desc2='呵呵，不必推辞。这酒壶里装着的，是桦树汁。',
    }

ships['海天奇境'] = {
    index='258_2',
    gold='800',
    desc1='虽然营业时间还没到，但你可以先进来坐会儿——不要期待有人为你服务就行。',
    desc2='想吃什么自己去柜台后面拿，吃完了记得放回去就行。',
    }

ships['夏日的问候'] = {
    index='483_3',
    gold='800',
    desc1='说到夏天，当然少不了阳光、沙滩和她。',
    desc2='最好的夏天，就是有她的夏天。',
    }

ships['晴夏空语'] = {
    index='280_2',
    gold='800',
    desc1='海风捎来香甜的气味。伸个懒腰，开始今天的大冒险。',
    desc2='循着那气味，找到了绿荫之下的她。冒险的意义，就在眼前。',
    }

ships['一点点回忆'] = {
    index='456_2',
    gold='800',
    desc1='站在这不清晰的路口，冥冥之中看到你。无法抑制，想你越来越多。',
    desc2='时间变水流，围绕着你我。向前走，很久很久，爱你越来越多。',
    }

ships['大祸时'] = {
    index='613_1',
    gold='',
    desc1='魑魅魍魉，罪无可恕。以彼之道，还施彼身。',
    desc2='魑魅魍魉，罪无可恕。以彼之道，还施彼身。',
    }

ships['空寂星月夜'] = {
    index='586_1',
    gold='800',
    desc1='是谁的声音，唤醒了沉寂的夜。随着那流星，前往有你在的地方。',
    desc2='挽着你的手，漫步在星河之下。心跳的回忆，全都因为你。',
    }

ships['清凉之影'] = {
    index='332_1',
    gold='800',
    desc1='你在这么热的天还要到处跑真是辛苦了，快来口冰激凌缓一缓吧。',
    desc2='其他口味的也有，你可以自己去柜台挑。',
    }

ships['特拉韦明德之日'] = {
    index='517_2',
    gold='800',
    desc1='诶~还要拍吗，老师？你再多拍两张照片的话太阳可都要下山了呀。',
    desc2='那就再拍一张吧，让我再换个新姿势。',
    }

ships['纯白之誓'] = {
    index='239_2',
    gold='800',
    desc1='等待，是最痴情的守候。迈出脚步，将心爱的人拥入怀中。',
    desc2='再也不必压抑心中的情愫，与相爱的人互诉衷肠。',
    }

ships['向着无尽的爱'] = {
    index='277_3',
    gold='800',
    desc1='越过四季，聆听时之沙的细语。呢喃的音节，奏鸣爱的乐章。',
    desc2='将琉璃色的画笔紧握手中，为你我的世界添上色彩。',
    }

ships['冰蓝之花'] = {
    index='183_2',
    gold='800',
    desc1='司令官你看到了吗？拉菲今天最开心了！',
    desc2='要是没有那么多条条框框的话就更好了！',
    }

ships['甜蜜誓约'] = {
    index='94_2',
    gold='800',
    desc1='今天的糖果大部分都是甜的，但也有一些酸的，具体拿到哪个就要看你的运气如何了，嘿嘿！',
    desc2='给你个提示：最上面的糖都是甜的哦。',
    }

ships['金丝雀之歌'] = {
    index='238_3',
    gold='800',
    desc1='牵挂的人呀，请你留步。听，这为你而作的颂爱之诗。',
    desc2='来吧，一同起舞。将那狂热的情愫，融入舞步中，许下不变的誓言。',
    }

ships['在有你的假期'] = {
    index='583_1',
    gold='800',
    desc1='整理行装，踏上新的世界。和你在一起，留下宝贵的回忆。',
    desc2='满册的相片，是满载的甜蜜。你的笑容，便是晴天。',
    }

ships['亲爱的你'] = {
    index='430_1',
    gold='800',
    desc1='用爱你的心，击退这炎热。谁说不想你，我的心中全是你。',
    desc2='喝一口用爱情酿成的酒，亲爱的你，请你不要忘记。全部的我，给了全部的你。',
    }

ships['福音·降临'] = {
    index='380_2',
    gold='1200',
    desc1='于光芒中降临，谨以此剑，许下永恒之誓，缔结不破之约。',
    desc2='一旦品尝过幸福的滋味，便再也不会放手。',
    }

ships['予你以爱'] = {
    index='380_3',
    gold='',
    desc1='与勇气同行，踏出足以改变未来的一步。',
    desc2='一旦品尝过幸福的滋味，便再也不会放手。',
    }

ships['照红妆'] = {
    index='162_4',
    gold='800',
    desc1='月倚轻云，星枕天河，执扇盼睐君归。',
    desc2='看芍药、新妆娇媚。转罗裙、欲语还休。',
    }

ships['烟火下的邀约'] = {
    index='502_2',
    gold='800',
    desc1='突如其来的声响，唤醒了夜。朝着光的方向，找到你。',
    desc2='看似漫不经心的话语，却是心底…想要告诉你。',
    }

ships['爱，冠以荣光'] = {
    index='209_6',
    gold='800',
    desc1='致以辉煌的人啊，为你献上爱的花束。这份情，只为你一人而存在。',
    desc2='请允许我与你同行，传承荣光，开辟新的道路。',
    }

ships['仙子，还是妖精？'] = {
    index='503_2',
    gold='800',
    desc1='蝴蝶，在空中划出爱的尾迹。明媚的笑容，俘获了谁的心？',
    desc2='这份爱，注定不会是风平浪静。和她一起，驶向未来的大冒险。',
    }

ships['月夜魅影'] = {
    index='552_1',
    gold='800',
    desc1='云想衣裳花想容，会向瑶台月下逢。',
    desc2='名花倾国两相欢，云雨巫山枉断肠。',
    }

ships['哪里都是你'] = {
    index='93_4',
    gold='800',
    desc1='在有欢笑的晴天里，哪里都是你。拥抱让彼此无距离，把爱献给你。',
    desc2='相信你是属于我的奇迹，在这无忧无虑的新天地里，铭刻爱的回忆。',
    }

ships['兔子小姐的秘密“作战”'] = {
    index='469_2',
    gold='800',
    desc1='兔子小姐，已经锁定了目标。',
    desc2='祝你好运，客人。你可是，第一个被选中的人。',
    }

ships['秋日余辉'] = {
    index='585_1',
    gold='800',
    desc1='那么早就要出发吗？再等我一下，五分钟就好！',
    desc2='来了来了，你看是不是刚好五分钟？',
    }

ships['绵软倦意'] = {
    index='56_2',
    gold='800',
    desc1='这么久了还分不出胜负……我看就算是平手吧，好想睡觉……一起吗？',
    desc2='哈哈，这是“缓兵之计”！到加赛时间了！',
    }

ships['心锁魔堡'] = {
    index='609_1',
    gold='800',
    desc1='是谁这么不小心~迷路的代价，可能超乎你的想象哦~',
    desc2='点上蜡烛，开始我们的宴会吧。今晚，是属于你和我的。',
    }

ships['星之呼唤'] = {
    index='149_3',
    gold='800',
    desc1='印记在发光——！出发，该去惩戒坏蛋了！',
    desc2='住手！有我在，绝不允许你们欺凌弱小！',
    }

ships['古堡倩影'] = {
    index='499_1',
    gold='800',
    desc1='在被遗忘的古堡中，隐藏着不为人知的财富。',
    desc2='凡人，你惊扰了我！',
    }

ships['古老者之夜'] = {
    index='305_1',
    gold='800',
    desc1='在血色的夜晚中，古老者正在寻找下一个猎物。',
    desc2='即便你能躲到天涯海角，也逃不出我的掌心。',
    }

ships['幽夜翩舞'] = {
    index='590_1',
    gold='800',
    desc1='漫天星辰，都在为你献上无声的喝彩。',
    desc2='沐浴星光，与你同行。蜿蜒的路上，不再凄清。',
    }

ships['秋日茶歇'] = {
    index='205_2',
    gold='800',
    desc1='这样的下午茶我还是第一次摆……应该没弄错什么吧，吾主？',
    desc2='这种泡茶的方式，还真是有趣呢。',
    }

ships['清音迎晓月'] = {
    index='617_1',
    gold='800',
    desc1='远行的人哪，不要忘记，身后有着你所眷恋的山河。',
    desc2='是谁在歌唱，将那乡愁与泪水，一并挥洒。欢迎回家，我们的英雄。',
    }

ships['巴伐利亚醺风'] = {
    index='606_1',
    gold='800',
    desc1='特调酵母小麦啤，一口气喝完一杯可以免单哦，要来试试吗？',
    desc2='喝不完也没关系，这一杯我请~',
    }

ships['赛道天使'] = {
    index='120_1',
    gold='800',
    desc1='今天的比赛很激烈呢。司令官，你看好谁？',
    desc2='赛车很刺激吧？嘿嘿。',
    }

ships['队伍里的治愈使有些奇怪'] = {
    index='267_2',
    gold='800',
    desc1='你们好~能让我加入队伍吗？这个呀~是之后会用上的“治疗”法杖哦~',
    desc2='哎呀，不用害怕~只会疼一下下啦~',
    }

ships['错失好礼？！'] = {
    index='294_2',
    gold='800',
    desc1='精心准备的礼物盒里，闯入了“不得了”的家伙。趁现在！是英雄登场的时候了——',
    desc2='司令官！这边也拜托您了！',
    }

ships['福运响叮当'] = {
    index='89_3',
    gold='800',
    desc1='对那份惊喜满怀期待，叩响门扉。门的后面，会有什么在等待着呢？',
    desc2='总…总要说点什么吧！这样我很尴尬耶……',
    }

ships['向雪花，许下心愿'] = {
    index='207_3',
    gold='800',
    desc1='纷飞的雪花，宛如降临凡间的明星。那么，许下愿望吧。此刻，属于你和我。',
    desc2='掌心的温度，是愿望成真的见证。',
    }

ships['雪夜心风景'] = {
    index='232_2',
    gold='800',
    desc1='想要告诉你，一直以来怀揣的心情。就在这里，就现在——',
    desc2='雪花，是今夜抒情的旋律。',
    }

ships['温热暖冬'] = {
    index='290_1',
    gold='800',
    desc1='唔……水温好像调的太高了……总感觉有点头晕呢。',
    desc2='没事，可以再泡一会儿。',
    }

ships['纯白之天命'] = {
    index='215_2',
    gold='800',
    desc1='别站在那里看着了，这么好的天气里不过来跟我一起坐一会儿吗？',
    desc2='你手上拿着的是什么，下午茶吗？',
    }

ships['特别授课'] = {
    index='291_2',
    gold='800',
    desc1='所以我刚才说了那么久你一点都没听进去吗？唉，为什么我还会觉得意外呢……',
    desc2='认真听课，别摸我腿！',
    }

ships['黄金大劫案'] = {
    index='27_1',
    gold='800',
    desc1='想在我的眼皮底下犯事——你，有自信快过子弹吗？',
    desc2='萝卜，再加把劲！醇美的小麦汁和干草就在眼前了！',
    }

ships['于废墟之中，呼唤爱'] = {
    index='613_2',
    gold='1000',
    desc1='爱是守候。以这羽翼为你遮风避雨，哪怕残缺也不改初心。愿你回想起，从前的我们……',
    desc2='爱，是我们行走过的轨迹。你，就是我的全世界。',
    }

ships['于残垣之上，燃心火'] = {
    index='613_3',
    gold='',
    desc1='爱是守候。以这羽翼为你遮风避雨，哪怕残缺也不改初心。愿你回想起，从前的我们……',
    desc2='你和我，都已无路可退。在这“摇篮”中，沉睡吧。',
    }

ships['寒梅染腮红'] = {
    index='222_1',
    gold='800',
    desc1='您亲口答应的事，可不许反悔。这是……最后一杯了。',
    desc2='好热……一定是您搞的鬼……',
    }

ships['海蓝之心'] = {
    index='311_2',
    gold='800',
    desc1='这个场面可真是大大的出乎了我的意料啊。不过不管怎么说，今天最高兴了。',
    desc2='我们的未来，从今天开始。',
    }

ships['小兔乱撞'] = {
    index='269_4',
    gold='800',
    desc1='悸动的心，向着有你的地方。啊~这一定是坠入爱河的信号。',
    desc2='在海畔的花园，拥你入怀。嗯~这就是“自投罗网”的傻瓜~',
    }

ships['星之回响'] = {
    index='534_1',
    gold='800',
    desc1='爸爸~我偷偷跑出来了！一起玩游戏吧！',
    desc2='啊……！妈妈在靠近！紧急撤退！爸爸，下次再见~',
    }

ships['盛宴、主角与明星'] = {
    index='1_5',
    gold='800',
    desc1='喜欢这里的布置吗？都是为你准备的——我们的主角，港区的明星。',
    desc2='因为有你，我们才能在这里欢聚节日。所以，尽情享受吧。在今天，做自己。',
    }

ships['夜来香'] = {
    index='581_2',
    gold='800',
    desc1='这衣服……是这样穿的吧？虽然感觉有点奇怪……但你喜欢就好。',
    desc2='月下的花儿都入梦，只有那夜来香吐露着芬芳。',
    }

ships['静寂之声'] = {
    index='6_3',
    gold='800',
    desc1='升腾的烟火，奏响新春的乐章。另一面的她，却有着别样的思绪。',
    desc2='捉摸不透的性格，正是“猫”的本质。',
    }

ships['爱恋相交线'] = {
    index='363_1',
    gold='800',
    desc1='心中的小小火苗，在爱的滋养下，绽放出炽热的火光。',
    desc2='甜蜜的爱，献给炽热的你。',
    }

ships['情系缘结'] = {
    index='273_3',
    gold='800',
    desc1='哈啰~我来还礼啦。要挑哪一个呢？我手里的？这边的？还是，我呢~？',
    desc2='这些全都归您了~当然，我也一样！',
    }

ships['夜里寻你千百度'] = {
    index='401_2',
    gold='800',
    desc1='哇——飞起来了！不对！同志，我不会让你跑掉的。',
    desc2='这边！也不在……哇，变得有点吓人了！',
    }

ships['非你莫属'] = {
    index='426_2',
    gold='800',
    desc1='今天的心动挑战，谁才会是最终赢家呢？',
    desc2='您赢得干脆利落~接下来，是“不心动”挑战。',
    }

ships['灯火生明月'] = {
    index='601_1',
    gold='800',
    desc1='万家灯火百家宴，火树银花不夜天。',
    desc2='送你三百六十五个祝福~和大大的拥抱！',
    }

ships['赛道皇后'] = {
    index='300_2',
    gold='800',
    desc1='哎呦，今天你亲自出马啊~加油哦，千万别刚发车就撞退赛了~',
    desc2='首先，需不需要我教你怎么启动引擎？',
    }

ships['方寸之间'] = {
    index='79_1',
    gold='800',
    desc1='围棋也没有想象中的那么难嘛~那么这一步应该下在……',
    desc2='映竹无人见，时闻下子声。',
    }

ships['让导弹飞一会儿'] = {
    index='596_1',
    gold='800',
    desc1='在房间里和亲爱的人吃着糖果唱着歌，突然响起了一阵铃声……',
    desc2='——逃跑也要算时间哦。',
    }

ships['元气补给站'] = {
    index='480_1',
    gold='800',
    desc1='真香…要不要尝一口……啊，早上好。我没打算偷吃，没有哦。',
    desc2='美拉德反应……至福……',
    }

ships['偷心直播进行时！'] = {
    index='538_2',
    gold='800',
    desc1='走在潮流的最前线！解答你的所有疑惑~我们直播见！',
    desc2='谢谢老板的打赏~',
    }

ships['微醺暖春'] = {
    index='285_1',
    gold='800',
    desc1='啊，终于起风了吗。别着急，再陪我喝一杯。',
    desc2='淡淡胭脂遮住了思绪，小酌几杯却有醉意。',
    }

ships['零时迷情'] = {
    index='282_1',
    gold='800',
    desc1='特别的爱，给特别的你。',
    desc2='心灵的碰撞，爱情的结晶。',
    }

ships['幽静私语'] = {
    index='283_1',
    gold='800',
    desc1='想要告诉你，充盈胸口的心情。',
    desc2='爱你的心，从不是秘密。',
    }

ships['飞云之上'] = {
    index='509_1',
    gold='800',
    desc1='会当凌绝顶，一览众山小',
    desc2='出发，迈向星辰大海。',
    }

ships['雪月风花'] = {
    index='64_6',
    gold='800',
    desc1='言语，是爱的代行。风吹来的，是对你的眷恋。',
    desc2='每一天，都是新的开始。每一天，都爱你多一点。',
    }

ships['悠长诗篇'] = {
    index='97_6',
    gold='1200',
    desc1='以轻快的脚步，奔向你。每一步，恰似跃动的音符。牵起你的手，将爱的乐章推向高潮。',
    desc2='以爱之名，铭刻寰宇。',
    }

ships['春宵月明醉人心'] = {
    index='97_7',
    gold='',
    desc1='怜春意，烛影摇红合卺酳。',
    desc2='长相守，玉水明沙逍遥游。',
    }

ships['Pin-up Girl'] = {
    index='278_1',
    gold='800',
    desc1='啊，这就要拍了吗？等我摆个姿势——！',
    desc2='真好玩，要不我们再拍一张？',
    }

ships['相遇天使'] = {
    index='590_2',
    gold='800',
    desc1='因为你，这个平凡的假期镀上了金色光辉。',
    desc2='晚霞，是无声的告白。',
    }

ships['晨间惊喜'] = {
    index='123_1',
    gold='800',
    desc1='哇，你是什么时候进来的，吓我一跳……',
    desc2='别盯着我看啦，快换衣服去。',
    }

ships['飙风女王'] = {
    index='408_3',
    gold='800',
    desc1='那么，是谁想来体验速度与激情？',
    desc2='一会儿记得把耳朵堵上哦~',
    }

ships['海岛奇遇记'] = {
    index='496_2',
    gold='800',
    desc1='耶~到达地图上不存在的小岛！就由我来命……哪来的遮阳伞！？',
    desc2='您竟然预判了我的预判！看来我们拥有相同的“能力”啊！',
    }

ships['小小大冒险'] = {
    index='10_3',
    gold='800',
    desc1='小的们，都看到目标了吧？跟我一起上！',
    desc2='别动，给我回来！',
    }

ships['皇家女仆营业中'] = {
    index='105_4',
    gold='800',
    desc1='呃……指挥官？那个，你先坐，我马上就来！',
    desc2='马上来，马上来！',
    }

ships['芝芝燃烧中'] = {
    index='197_2',
    gold='800',
    desc1='消耗的卡路里是……开玩笑的吧！？才这么点！？',
    desc2='任重而道远……冲刺！',
    }

ships['风铃迎春'] = {
    index='372_2',
    gold='800',
    desc1='试营业期间，希望您能多提一些意见。这个……怎么样？',
    desc2='这是专属于您的……“反馈”意见。',
    }

ships['赛道丽影'] = {
    index='26_1',
    gold='800',
    desc1='比赛就要开始了，祝你好运。',
    desc2='如果扛不住了不要硬撑，随时都可以来换人。',
    }

ships['暗夜幽影'] = {
    index='205_3',
    gold='800',
    desc1='谁？——原来是你啊……正好，来陪我喝一杯。',
    desc2='别急着走，夜还很长。',
    }

ships['六月如歌'] = {
    index='248_3',
    gold='800',
    desc1='在想你的季节，与你一同乘上摩天轮。触摸天空，留下七彩的光晕。',
    desc2='流星划过天际，你我的愿望，已然实现。',
    }
    
ships['淑女的万全准备'] = { 
    index='119_2',
    gold='800',
    desc1='稍微花了点时间，希望您不会介意。那么，开始享受我们的假期吧。',
    desc2='阳光……有这么炽热吗……？',
    }

ships['惬意一夏'] = { 
    index='293_2',
    gold='800',
    desc1='你迟到了~惩罚就是——你的那份我也吃掉了~',
    desc2='哇呀我的脸不是果冻啦——',
    }

ships['迅流突袭'] = { 
    index='589_1',
    gold='800',
    desc1='喂，我还没准备好，你这是偷袭！',
    desc2='可恶，别以为我不会还手啊！',
    }

ships['沙滩之星'] = { 
    index='618_1',
    gold='800',
    desc1='这一球接住的话，就算你赢！',
    desc2='来吧，一决胜负！',
    }

ships['忙里偷闲趣多多'] = { 
    index='307_1',
    gold='800',
    desc1='哈哈，需求堆得越多，可乐喝起来才越美味~',
    desc2='……这不是自暴自弃，真的。',
    }

ships['充电进行时'] = { 
    index='640_1',
    gold='800',
    desc1='嗯，有不少可以改进的地方。我记下了。',
    desc2='敬请见证，全新的改良口味！快尝一口~',
    }

ships['栖梦之渊'] = { 
    index='519_2',
    gold='800',
    desc1='欢迎来到“梦”的起点。故事，由你书写。',
    desc2='欢迎拥入“梦”的怀抱。结局，由你决定。',
    }

ships['往事回声'] = {
    index='648_1',
    gold='',
    desc1='旧梦，新生。',
    desc2='旧梦，新生。',
    }

ships['夏、予你的花火'] = { 
    index='266_1',
    gold='800',
    desc1='听，“花”开的声音。',
    desc2='夜空下，最闪耀的“星”。',
    }
    
ships['揽星河'] = { 
    index='583_2',
    gold='800',
    desc1='你我的相遇是奇迹。那么，就以奇迹奏响乐曲，敲开新世界的门扉。',
    desc2='我已洞悉爱的真谛。',
    }

ships['冰蓝之心'] = { 
    index='517_3',
    gold='800',
    desc1='时间终于到了，老师。那么，我们走吧？',
    desc2='从这里，走向未来。',
    }

ships['心跳！女仆见习中'] = { 
    index='429_1',
    gold='800',
    desc1='只是杂务的话……我也能做到！还能近距离……好机会！',
    desc2='我没盯着看……！是玻璃还没擦干净……',
    }

ships['恋语花开'] = { 
    index='232_3',
    gold='800',
    desc1='花儿啊花儿，告诉我——我爱的人，现在到哪了？',
    desc2='时间掐的好准。您依旧……从不让人失望。',
    }

ships['O\'zapft is'] = { 
    index='74_2',
    gold='800',
    desc1='阳光、沙滩、海浪、椰子树，还有一杯冰啤酒。',
    desc2='不要着急，喝完还有。',
    }

ships['普利茅斯之秋'] = { 
    index='9_3',
    gold='800',
    desc1='这个角度怎么样，应该还不错吧？',
    desc2='看起来这个角度确实不错嘛~',
    }
----------------------------------------------------------------------------------------------------

return { ships=ships, stats=stats }