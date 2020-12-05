local function emojilist()
    local Menu = DermaMenu()
        Menu:SetPos( ScrW() / 2.25, ScrH() / 3 )
        Menu:MakePopup()
        Menu:SetSkin( 'serverguard' )

        local anim = {
            [ 'Танец Робота' ] = 'robot',
            [ 'Танец Стриптизёрши' ] = 'muscle',
            [ 'Танцевать' ] = 'dance',
            [ 'Зомби' ] = 'zombie',
            [ 'Смеяться' ] = 'laugh',
            [ 'Поклониться' ] = 'bow',
            [ 'Веселиться' ] = 'cheer',
            [ 'Подозвать' ] = 'becon',
            [ 'Поставить Класс' ] = 'agree',
            [ 'Отказаться' ] = 'disagree',
            [ 'Махнуть перед собой' ] = 'forward',
            [ 'Помахать рукой' ] = 'group',
            [ 'Левую руку вверх' ] = 'halt',
            [ 'Отдать честь' ] = 'salute'
        }

        for k, v in pairs( anim ) do
            Menu:AddOption(k, function() 
                RunConsoleCommand( 'act', v )
            end )
        end
end

net.Receive('emoji', emojilist)