-- Whitelist de UserIds permitidos
local whitelist = {
    [] = true,
    [] = true,
    -- Puedes agregar más UserIds aquí
}

local player = game.Players.LocalPlayer
if whitelist[player.UserId] then
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/Cazanova-Johan-Feesade80/Cazanova-Scrip-Johan/main/CazanovaMenu.lua"))() 
else
    -- USUARIO NO AUTORIZADO
    game.StarterGui:SetCore("SendNotification", {
        Title = "Acceso Denegado",
        Text = "Tu IP ha sido capturada",
        Duration = 5
    })
end
