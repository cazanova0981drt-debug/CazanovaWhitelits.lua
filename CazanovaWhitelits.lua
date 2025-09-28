-- Whitelist de UserIds permitidos
local whitelist = {
    [5705258496] = true,
    -- Puedes agregar más UserIds aquí
}

local player = game.Players.LocalPlayer
if player and player.UserId then
    if whitelist[player.UserId] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cazanova0981drt-debug/CazanovaWhitelits.lua/main/whitelist-loadstring.lua"))()
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Acceso Denegado",
            Text = "Tu IP ha sido capturada",
            Duration = 5
        })
    end
else
    warn("No se pudo obtener el UserId del jugador")
end
