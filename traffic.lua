-- CMob Dev Brasil 2025
-- Os seguintes valores devem satisfazer as condições (Considere x a frequência) 
-- x = 0.0
-- x Deve ser uma variavel flutuante

local config = {
    pedFrequency = 5.0,
    trafficFrequency = 0.1,
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency) 
        --[[ 
        Valores:  
        ? 0.0 = Nenhum pedestre nas ruas  
        ? 1.0 = Índice padrão  
        ]]
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end 
end)