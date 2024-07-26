local voucher_loc_txt = {
	["name"] = "非法进口",
	["text"] = {
		"商店内{C:spectral}幻灵牌{}的",
		"出现频率{C:attention}X2",
		"{C:inactive}（卡面作者：Flare）"
	}
}
local illegal_imports = SMODS.Voucher({
	name = "Illegal Imports", --name
	key = "illegal_imports", --slug
	config = {}, --config
	pos = {x = 4, y = 3}, --spritePos
	loc_txt = voucher_loc_txt, --loc_txt
	cost = 10, --cost
	unlocked = true, --unlocked
	discovered = true, --discovered
	available = false, --available
	requires = {'v_olab_shady_trading'}, --requires
	atlas = "Ortalab_Vouchers", --atlas
	register = function(self, order)
		if order and order == self.order then
			SMODS.Center.register(self)
		end
	end,
})

illegal_imports.order = 26

function illegal_imports.redeem(self)
	G.GAME.spectral_rate = 4
end

return illegal_imports