util.AddNetworkString( 'emoji' )

hook.Add('ShowTeam', 'f2', function( ply )
    net.Start( 'emoji' )
    net.Send (ply )
end )