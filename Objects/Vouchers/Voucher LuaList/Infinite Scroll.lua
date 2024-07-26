local voucher_loc_txt = {
	["name"] = "琳琅满目",
	["text"] = {
	    "每次商店可额外",
	    "免费{C:green}重掷{}2次",
		"{C:green}重掷{}花费{C:red}+$2",
		"{C:inactive}（卡面作者：Flare）"
	}
}

local infinite_scroll = SMODS.Voucher({
	name = "Infinite Scroll", --name
	key = "infinite_scroll", --slug
	config = {free_rerolls = 2}, --config
	pos = {x = 0, y = 3}, --spritePos
	loc_txt = voucher_loc_txt, --loc_txt
	cost = 10, --cost
	unlocked = true, --unlocked
	discovered = true, --discovered
	available = false, --available
	requires = {'v_olab_window_shopping'}, --requires
	atlas = "Ortalab_Vouchers", --atlas
	register = function(self, order)
		if order and order == self.order then
			self.super.register(self)
		end
	end,
})

infinite_scroll.order = 8

function infinite_scroll.redeem(self)
	G.E_MANAGER:add_event(Event({func = function()
		G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 2
		G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost + 2
		G.GAME.current_round.reroll_cost = math.max(0, G.GAME.current_round.reroll_cost + 2)
		G.GAME.current_round["olab_free_rerolls"] = G.GAME.current_round["olab_free_rerolls"] + 2
		calculate_reroll_cost(true)
		return true 
	end }))
end

return infinite_scroll