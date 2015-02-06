# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


























cities = [
["أبها", "Abha"],
["","Al-Baha"],
["","Al-Hasa"],
["","Al-Kharj"],
["","Arar"],
["","Buraidah"],
["","Dammam"],
["","Dhahran"],
["","Hafar Al-Batin"],
["","Hail"],
["","Jeddah"],
["","Jizan"],
["","Jubail"],
["","Khafji"],
["","Khobar"],
["","Madinah"],
["","Makkah"],
["","Rabigh"],
["","Ras Tanura"],
["","Riyadh"],
["","Tabouk"],
["","Taif"],
["","Yanbu"]
]




# Kuwait
# Oman
# Qatar
# Saudi Arabia
# UAE


categories = [
	["ألعاب الكونسول", "Video Games"],
	["أجهزة","Appliances"],
	["قطع غيار","Auto Parts"],
	["مستلزمات الأطفال","Baby & Kid Stuff"],
	["الدراجات","Bicycles"],
	["القوارب","Boats"],
	["الكتب","Books"],
	["الملابس والاكسسوارات","Clothing & Accessories"],
	["","Collectibles"],
	["كومبيوتر","Computers"],
	["الكترونيات","Electronics"],
	["مجانية","Free Items"],
	["أثاث","Furniture"],
	["الصحة والجمال","Health & Beauty"],
	["أدوات منزلية","Household Items"],
	["مجوهرات","Jewelry"],
	["مواد","Materials"],
	["جوالات","Mobile Phones"],
	["دراجات نارية","Motorcycles"],
	["أدوات موسيقية","Musical Instruments"],
	["صور و فيديو","Photo & Video"],
	["رياضة","Sports"],
	["أجهزة لوحية","Tablets"],
	["تذاكر","Tickets"],
	["أدوات عدة","Tools"],
	["ألعاب أطفال","Toys & Games"],
	["مركبات","Vehicles"],
	]

# categories.each do |arabic_name, english_name|
# 	Category.create(arabic_name: arabic_name, english_name: english_name)
# end

# cities.each do |arabic_name, english_name|
# 	City.create(arabic_name: arabic_name, english_name: english_name)
# end

Country.create(arabic_name: "السعودية", english_name:"Saudi Arabia")