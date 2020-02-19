-- first prool's mod ;-)
local def = {}
for k,v in pairs(minetest.registered_items["default:lava_source"]) do
	def[k]=v
end

local old_on_place = def.on_place
def.on_place = function(itemstack, placer, pointed_thing)
	if pointed_thing and pointed_thing.above then
		if pointed_thing.above.y <= 0 then
			return old_on_place(itemstack, placer, pointed_thing)
		else
			return itemstack
		end
	end
end

minetest.register_item(":default:lava_source", def)