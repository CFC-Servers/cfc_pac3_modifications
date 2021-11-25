hook.Add( "Initialize", "CFC_PACModifications_LoadProjectiles", function()
    local PROJECTILE = scripted_ents.GetStored( "pac_projectile" )

    PROJECTILE._SetData = PROJECTILE.SetData
    PROJECTILE.SetData = function( ply, pos, ang, part )
        part.AddOwnerSpeed = false
        part.Collisions = false
        part.Attract = 0
        part.DamageType = "generic"
        part.DamageRadius = 0
        part.Damage = 0

        return PROJECTILE._SetData( ply, pos, ang, part )
    end
end )
