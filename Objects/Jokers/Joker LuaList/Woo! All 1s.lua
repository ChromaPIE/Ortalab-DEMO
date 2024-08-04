local joker_loc_txt = {
	["name"] = "一无所有",
	["text"] = {
		"所有{C:attention}列出{}的{C:green,E:1,S:1.1}几率{}减半",
		"{C:inactive}（例如：{C:green}2/4{C:inactive} -> {C:green}1/4{C:inactive}）",
		"{C:inactive,s:0.8}（卡面作者：Crimson Heart）"
	}
}

local woo_all_1s = SMODS.Joker({
	name = "Woo! All 1s",
	key = "woo_all_1s",
	config = {},
	pos = {x = 5, y = 6},
	loc_txt = joker_loc_txt,
	rarity = 2,
	cost = 6,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	atlas = "Ortalab_Jokers",
	register = function(self, order)
		if order and order == self.order then
			SMODS.Joker.register(self)
		end
	end,
})

woo_all_1s.order = 126

return woo_all_1s