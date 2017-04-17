hook.Add( "PlayerSay", "SoundCmds", function( ply, text, teamChat )
	text = string.lower( text )
	if soundcmds[text] != nil then
		if soundcmd.config.onlyteam && ply:Team() != soundcmd.config.team then return end
		ply:EmitSound( soundcmds[text], soundcmd.config.distance, soundcmd.config.pitch, soundcmd.config.volume, CHAN_VOICE )
	end
end )