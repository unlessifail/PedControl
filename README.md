# CMob Dev. PedControl

Este script configura a frequência de pedestres e veículos em um servidor de GTA V usando FiveM. 

## Descrição

O script ajusta a densidade de pedestres e veículos no jogo. A frequência de pedestres é aumentada, enquanto a frequência de veículos é mantida no mínimo, mas não zero.

## Configuração

Você pode ajustar as frequências de pedestres e veículos modificando os valores no objeto `config`.

```lua
local config = {
    pedFrequency = 5.0,  -- Frequência de pedestres aumentada
    trafficFrequency = 0.1,  -- Frequência de tráfego ajustada para um valor mínimo, mas não zero
}
```

## Script

```lua
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
```

## Como Usar

1. Baixe e instale o FiveM em seu servidor GTA V.
2. Crie um novo recurso no diretório `resources` do seu servidor.
3. Adicione o arquivo de script acima ao novo recurso.
4. Adicione o recurso ao arquivo `server.cfg` do seu servidor.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
