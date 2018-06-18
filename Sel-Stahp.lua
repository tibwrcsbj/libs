--Requires Gearswap and Motenten includes.

include('Sel-MonsterAbilities.lua')

state.AutoDefenseMode = M(false, 'Auto Defense Mode')
state.AutoStunMode = M(false, 'Auto Stun Mode')

send_command('bind !f8 gs c toggle AutoDefenseMode')
send_command('bind ^f8 gs c toggle AutoStunMode')
					
windower.register_event('action', function(act)

	-- Conserve some processing if we're not using either auto function.
	if not (state.AutoStunMode.value or state.AutoDefenseMode.value) then return end

	--Gather Info
    local curact = T(act)
    local actor = T{}

    actor.id = curact.actor_id
	
	-- Make sure it's a mob.
    if windower.ffxi.get_mob_by_id(actor.id) then
        actor = windower.ffxi.get_mob_by_id(actor.id)
    else
        return
    end

	-- Make sure mob is an NPC.
	if not actor.is_npc then return end

	-- Make sure this is our target. 	send_command('input /echo Actor:'..actor.id..' Target:'..player.target.id..'')
	if not (actor.id == player.target.id) then return end
	
    -- Turn off Defense if needed.
	if (curact.category == 3 or curact.category == 4 or curact.category == 11 or curact.category == 13) and state.AutoDefenseMode.value and state.DefenseMode.value ~= 'None' then
		send_command('gs c reset DefenseMode')
		return
	end

    -- Make sure it's a WS or MA before reacting to it.		
    if curact.category ~= 7 and curact.category ~= 8 then return end

	local autores = require('resources')
	
    -- Get the name of the action.
    if curact.category == 7 then act_info = autores.monster_abilities[curact.targets[1].actions[1].param] end
    if curact.category == 8 then act_info = autores.spells[curact.targets[1].actions[1].param] end
	if act_info == nil then return end

	if state.AutoStunMode.value then
		if curact.param == 24931 then
			if StunAbility:contains(act_info.name) and not midaction() then
				
				if not buffactive.silence then

					local spell_recasts = windower.ffxi.get_spell_recasts()
				
					if player.main_job == 'BLM' or player.sub_job == 'BLM' or player.main_job == 'DRK' or player.sub_job == 'DRK' and spell_recasts[252] == 0 then
						send_command('input /ma "Stun" <t>') return
					elseif player.main_job == 'BLU' and spell_recasts[692] == 0 then
						send_command('input /ma "Sudden Lunge" <t>') return
					elseif player.sub_job == 'BLU' and spell_recasts[623] == 0 then
						send_command('input /ma "Head Butt" <t>') return
					end
				end


				local abil_recasts = windower.ffxi.get_ability_recasts()
				
				if buffactive.amnesia then return
				elseif (player.main_job == 'PLD' or player.sub_job == 'PLD') and abil_recasts[73] == 0 then
					send_command('input /ja "Shield Bash" <t>')
				elseif (player.main_job == 'DRK' or player.sub_job == 'DRK') and abil_recasts[88] == 0 then
					send_command('input /ja "Weapon Bash" <t>')
				elseif player.main_job == 'SMN' and pet.name == "Ramuh" then
					send_command('input /pet "Volt Stike" <t>')
				elseif not player.in_combat then
					add_to_chat(123,'No stuns ready! Good luck!')
					return
				elseif (player.main_job == 'DNC' or player.sub_job == 'DNC') and abil_recasts[221] == 0 then
					send_command('input /ja "Violent Flourish" <t>')
				elseif player.main_job == 'SAM' then
					send_command('input /ws "Tachi: Hobaku" <t>')
				elseif player.main_job == 'MNK' or player.main_job == 'PUP' then
					send_command('input /ws "Shoulder Tackle" <t>')
				elseif (player.main_job == 'PLD' or player.main_job == 'BLU') and player.tp > 999 then
					send_command('input /ws "Flat Blade" <t>')
				elseif player.main_job == 'BST' then
					send_command('input /ws "Smash Axe" <t>')
				else
					add_to_chat(123,'No stuns ready! Good luck!')
				end
				return
			end
		end
	end

	if state.AutoDefenseMode.value then
		if curact.param == 24931 then
			if PhysicalAbility:contains(act_info.name) and state.DefenseMode.value ~= 'Physical' then
				send_command('gs c set DefenseMode Physical')
			elseif MagicalAbility:contains(act_info.name) and state.DefenseMode.value ~= 'Magical'  then
				send_command('gs c set DefenseMode Magical')
			elseif ResistAbility:contains(act_info.name) and state.DefenseMode.value ~= 'Resist'  then
				send_command('gs c set DefenseMode Resist')
			end
		end
	end

end)