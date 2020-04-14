-- mod by prool: anti-griffer: disable buckets with water
local def = {}
for k,v in pairs(minetest.registered_items["default:water_source"]) do
	def[k]=v
end

local old_on_place = def.on_place
def.on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing and pointed_thing.above then
			return itemstack
	end
end

minetest.register_item(":default:water_source", def)
