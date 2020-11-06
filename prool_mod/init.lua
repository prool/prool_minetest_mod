--test mod for Minetest by prool
--by spawn mod by VanessaE (I think), rewritten by cheapie
--GPL

minetest.register_chatcommand("prool", {
	params = "",
	description = "Prool test mod",
	func = function(name, param)
			print ("hello world")
			return true, "Prool mod end!"
	end,
})
