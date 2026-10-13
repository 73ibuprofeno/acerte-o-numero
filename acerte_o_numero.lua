
print("==========================================")
print("ADIVINHE O NÚMERO!!!")
print("==========================================")
print("")
print("Estou pensando em um número de 1 a 10")
print("")

local numero_pensante = math.random(1, 10)
local tentativas = 0
local palpite = 0

while palpite ~= numero_pensante do
    print("Qual é o seu palpite?")
    print("")

    local entrada = tonumber(io.read())

    if entrada ~= nil then
        palpite = entrada
        tentativas = tentativas + 1

        print("")
        print("Você chutou o número " .. palpite)

        if palpite == numero_pensante then
            print("ACERTOU!!! Você conseguiu acertar o número em " .. tentativas .. " tentativas!")
        elseif palpite < numero_pensante then
            print("Bem, não é esse número que estou pensando... ele é MAIOR!")
        else
            print("Bem, não é esse número que estou pensando... ele é MENOR!")
        end
    else
        print("Digite um número válido!")
    end

    print("")
end
