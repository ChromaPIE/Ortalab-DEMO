local voucher_loc_txt = {
	["name"] = "走马观花",
	["text"] = {
		"每次商店可额外",
	    "免费{C:green}重掷{}1次",
		"{C:green}重掷{}花费{C:red}+$1",
		"{C:inactive}（卡面作者：Flare）"
	}
}

local window_shopping = SMODS.Voucher({
	name = "Window Shopping", --name
	key = "window_shopping", --slug
	config = {free_rerolls = 1}, --config
	pos = {x = 0, y = 2}, --spritePos
	loc_txt = voucher_loc_txt, --loc_txt
	cost = 10, --cost
	unlocked = true, --unlocked
	discovered = true, --discovered
	available = true, --available
	atlas = "Ortalab_Vouchers", --atlas
	register = function(self, order)
		if order and order == self.order then
			SMODS.Center.register(self)
		end
	end,
})

window_shopping.order = 7

function window_shopping.redeem(self)
	G.E_MANAGER:add_event(Event({func = function()
		G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
		G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost + 1
		G.GAME.current_round.reroll_cost = math.max(0, G.GAME.current_round.reroll_cost + 1)
		G.GAME.current_round["olab_free_rerolls"] = G.GAME.current_round["olab_free_rerolls"] + 1
		calculate_reroll_cost(true)
		return true 
	end }))
end

return window_shopping