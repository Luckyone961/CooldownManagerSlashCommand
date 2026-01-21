local _G = _G

local IsAddOnLoaded = C_AddOns.IsAddOnLoaded

if IsAddOnLoaded('WeakAuras') then
	print('Cooldown Manager Slash Command: WeakAuras AddOn detected, not loading slash commands...')
	return
end

local CooldownViewerSettings = _G.CooldownViewerSettings

local function ShowCooldownViewerSettings()
	if InCombatLockdown() then return end

	if not CooldownViewerSettings:IsShown() then
		CooldownViewerSettings:Show()
	else
		CooldownViewerSettings:Hide()
	end
end

SLASH_CDMSC1, SLASH_CDMSC2 = '/cd', '/wa'
function SlashCmdList.CDMSC(msg, editbox)
	ShowCooldownViewerSettings()
end
