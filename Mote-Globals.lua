-------------------------------------------------------------------------------------------------------------------
-- Tables and functions for commonly-referenced gear that job files may need, but
-- doesn't belong in the global Mote-Include file since they'd get clobbered on each
-- update.
-- Creates the 'gear' table for reference in other files.
--
-- Note: Function and table definitions should be added to user, but references to
-- the contained tables via functions (such as for the obi function, below) use only
-- the 'gear' table.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Modify the sets table.  Any gear sets that are added to the sets table need to
-- be defined within this function, because sets isn't available until after the
-- include is complete.  It is called at the end of basic initialization in Mote-Include.
-------------------------------------------------------------------------------------------------------------------

function define_global_sets()
	-- Special gear info that may be useful across jobs.

	-- Staffs
	gear.Staff = {}
	gear.Staff.HMP = 'Chatoyant Staff'
	gear.Staff.PDT = 'Terra Staff'
	
	-- Default items for utility gear values.
	gear.default.weaponskill_neck = "Asperity Necklace"
	gear.default.weaponskill_waist = "Cetl Belt"
	gear.default.obi_waist = "Witful Belt"
	gear.default.obi_back = "Toro Cape"
	gear.default.obi_ring = "Strendu Ring"
	gear.default.fastcast_staff = "Marin Staff +1"
	gear.default.recast_staff = "Marin Staff +1"
	
------------------------------------------------------------------------------------------------------------------------------------------------
-- Augmented and Abbreviated Gear
------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- WEAPONS --
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
	
	-- Axes
	-- Clubs
	-- Daggers
	-- Great Axes
	-- Great Katana
	-- Great Swords
	
	
	-- Hand-to-Hand
	gear.Condemners						= {name="Condemners", augments={'Weapon Skill Acc.+5','DEX+8','Accuracy+25','Attack+9','DMG:+3',}}
	gear.Fleshcarvers					= {name="Fleshcarvers", augments={'STR+9','DEX+9','"Store TP"+4','DMG:+9',}}
	gear.Hammerfists					= {name="Hammerfists", augments={'DMG:+15','STR+20','Accuracy+15',}}
	gear.Ohtas 							= {name="Ohtas", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}}
	gear.Midnights 						= {name="Midnights", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}}	
	gear.Tinhaspa						= {name="Tinhaspa", augments={'Accuracy+15','DEX+12','DMG:+5',}}

	
	-- Katana
	gear.Aizu1							= {name="Aizushintogo", augments={'DMG:+15','Accuracy+15','Attack+15',}}
    gear.Aizu2							= {name="Aizushintogo", augments={'DMG:+15','Accuracy+15','Attack+15',}}
	
	gear.Kanaria1						= {name="Kanaria", augments={'Weapon skill damage +2%','STR+5','Accuracy+15','Attack+13','DMG:+19',}}
    gear.Kanaria2						= {name="Kanaria", augments={'Crit. hit damage +2%','DEX+1','Accuracy+23','Attack+11','DMG:+16',}}
	gear.Kanaria3						= {name="Kanaria", augments={'Add.eff.:Stun+1','STR+7','Accuracy+18','Attack+4','DMG:+15',}}
    gear.Kanaria4						= {name="Kanaria", augments={'Crit. hit damage +4%','Accuracy+21','Attack+3','DMG:+14',}}
	
	gear.MijinC							= {name="Mijin", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','INT+7',}}
    gear.MijinD							= {name="Mijin", augments={'Evasion+20','Mag. Evasion+20','Enmity+4',}}
	
	gear.Ochu1							= {name="Ochu", augments={'STR+5','DEX+7','DMG:+7',}}
    gear.Ochu2							= {name="Ochu", augments={'STR+2','DEX+2','DMG:+1',}}
	
	gear.Shigi							= {name="Shigi", augments={'Accuracy+50','Rng.Acc.+50','Damage Taken -5%',}}
	
	-- Staves
	gear.Staff.Akademos = {}
	gear.Staff.Akademos.C 				= {name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}}
	gear.Staff.Akademos.D 				= {name="Akademos", augments={'Mag. Acc.+20','Enha.mag. skill +15','Enfb.mag. skill +15',}}
    
	gear.Staff.Grioavolr = {}
	gear.Staff.Grioavolr.Nuke 			= {name="Grioavolr", augments={'"Fast Cast"+3','INT+1','Mag. Acc.+29','"Mag.Atk.Bns."+29','Magic Damage +6',}}
	gear.Staff.Grioavolr.Enf 			= {name="Grioavolr", augments={'Enfb.mag. skill +15','MND+17','Mag. Acc.+22',}}
	gear.Staff.Grioavolr.Enh 			= {name="Grioavolr", augments={'Enh. Mag. eff. dur. +9','Mag. Acc.+25','"Mag.Atk.Bns."+17',}}
	
	gear.Staff.Lathi = {}
    gear.Staff.Lathi.A 					= {name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20'}}
	
	gear.Staff.Serenity = {}
	gear.Staff.Serenity 				= {name="Serenity", augments={'MP+30','Enha.mag. skill +5','"Cure" spellcasting time -7%',}}
	
	-- Swords

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- JOB SPECIFIC EQUIPMENT --
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

	-- BLACK MAGE
		-- Artifact --
		gear.BLMAF = {}
		gear.BLMAF.Head 				= {name="Spae. Petasos +2"}
		gear.BLMAF.Body 				= {name="Spae. Coat +2"}
		gear.BLMAF.Hands 				= {name="Spae. Gloves +2"}
		gear.BLMAF.Legs 				= {name="Spae. Tonban +2"}
		gear.BLMAF.Feet 				= {name="Spae. Sabots +2"}
		
		-- Relic -- 					AMII + Manafont Bonuses
		gear.BLMRelic = {}
		gear.BLMRelic.Head 				= {name="Arch. Petasos +1", augments={'Increases Ancient Magic II damage',}}
		gear.BLMRelic.Body 				= {name="Arch. Coat +1", augments={'Enhances "Manafont" effect',}}
		gear.BLMRelic.Hands 			= {name="Arch. Gloves +1", augments={'Reduces Ancient Magic II casting time',}}
		gear.BLMRelic.Legs 				= {name="Arch. Tonban +1", augments={'Increases Ancient Magic II accuracy',}}
		gear.BLMRelic.Feet 				= {name="Arch. Sabots +1", augments={'Reduces Ancient Magic II MP cost',}}
		
		-- Empyrean --
		gear.BLMEmpy = {}
		gear.BLMEmpy.Head 				= {name="Wicce Petasos +1"}
		gear.BLMEmpy.Body 				= {name="Wicce Coat +1"}
		gear.BLMEmpy.Hands 				= {name="Wicce Gloves +1"}
		gear.BLMEmpy.Legs				= {name="Wicce Chausses +1"}
		gear.BLMEmpy.Feet				= {name="Wicce Sabots +1"}
	
		-- Capes --
		gear.BLMJSE = {}  				-- Shoud only be used for Max MP or Pure Skill builds, Taranus's MACC beats for resist sets
		gear.BLMJSE.MP 					= {name="Bane Cape", augments={'Elem. magic skill +2','Dark magic skill +10','"Fast Cast"+4',}}
	
		gear.Taranus = {}  				-- Nuke cape for INT Enfeebles, FC for MND Enfeebles
		gear.Taranus.Nuke 				= {name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10',}}
		gear.Taranus.FC 				= {name="Taranus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+1','"Fast Cast"+10',}}
		--gear.Taranus.ACC 				= {name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10',}}
		
		
	-- MONK
		-- Artifact --
		gear.MNKAF = {}
		gear.MNKAF.Head 				= {}
		gear.MNKAF.Body 				= {}
		gear.MNKAF.Hands 				= {}
		gear.MNKAF.Legs 				= {}
		gear.MNKAF.Feet 				= {}
		
		-- Relic --
		gear.MNKRelic = {}
		gear.MNKRelic.Head 				= {}
		gear.MNKRelic.Body 				= {}
		gear.MNKRelic.Hands 			= {}
		gear.MNKRelic.Legs 				= {}
		gear.MNKRelic.Feet 				= {}		
		
		-- Empyrean --
		gear.MNKEmpy = {}
		gear.MNKEmpy.Head 				= {}
		gear.MNKEmpy.Body 				= {}
		gear.MNKEmpy.Hands 				= {}
		gear.MNKEmpy.Legs 				= {}
		gear.MNKEmpy.Feet 				= {}	
	
		-- Capes --
		
	
	-- NINJA
		-- Artifact --
		gear.NINAF = {}
		gear.NINAF.Head 				= {name="Hachi. Hatsu. +2",}
		gear.NINAF.Body 				= {name="Hachi. Chain. +1",}
		gear.NINAF.Hands 				= {name="Hachiya Tekko +1",}
		gear.NINAF.Legs 				= {name="Hachi. Hakama +1",}
		gear.NINAF.Feet 				= {name="Hachi. Kyahan +2",}
		
		-- Relic --
		gear.NINRelic = {}
		gear.NINRelic.Head 				= {name="Mochi. Hatsuburi +1", augments={'Increases elem. ninjutsu III damage',}}
		gear.NINRelic.Body 				= {name="Mochi. Chainmail +1", augments={'Enhances "Sange" effect',}}
		gear.NINRelic.Hands 			= {name="Mochizuki Tekko +1", augments={'Enh. "Ninja Tool Expertise" effect',}}
		gear.NINRelic.Legs 				= {name="Mochi. Hakama +1", augments={'Enhances "Mijin Gakure" effect',}}
		gear.NINRelic.Feet 				= {name="Mochi. Kyahan +1", augments={'Reduces elem. ninjutsu III cast time',}}
		
		-- Empyrean --
		gear.NINEmpy = {}
		gear.NINEmpy.Head 				= {name="Hattori Zukin +1",}
		gear.NINEmpy.Body 				= {name="Hattori Ningi +1",}
		gear.NINEmpy.Hands				= {name="Hattori Tekko +1",}
		gear.NINEmpy.Legs 				= {name="Hattori Hakama +1",}
		gear.NINEmpy.Feet 				= {name="Hattori Kyahan +1",}
	
		-- Capes --
		gear.Yokaze = {}
		gear.Yokaze 					= {name="Yokaze Mantle", augments={'STR+2','DEX+2','Sklchn.dmg.+4%','Weapon skill damage +2%',}}		
		
		gear.Andartia = {}
		gear.Andartia.FC 				= {name="Andartia's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}}
		gear.Andartia.TP 				= {name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}
		gear.Andartia.WSD 				= {name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
		gear.Andartia.Nuke 				= {name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}}
	    --gear.Andartia.ACC 			= {name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','CRITHITRATE',}}
		--gear.Andartia.RA 				= {name="Andartia's Mantle", augments={}
		
	-- PUPPET MASTER
		-- Artifact --
		gear.PUPAF = {}
		gear.PUPAF.Head 				= {name="Foire Taj +1"}
		gear.PUPAF.Body 				= {name="Foire Tobe +1"}
		gear.PUPAF.Hands 				= {name="Foire Dastanas +1"}
		gear.PUPAF.Legs 				= {name="Foire Churidars +1"}
		gear.PUPAF.Feet 				= {name="Foire Bab. +1"}
		
		-- Relic -- 					Job Ability + Overdrive Bonuses
		gear.PUPRelic = {}
		gear.PUPRelic.Head 				= {name="Pitre Taj +1", augments={'Enhances "Optimization" effect',}}
		gear.PUPRelic.Body 				= {name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}}
		gear.PUPRelic.Hands 			= {name="Pitre Dastanas +1", augments={'Enhances "Fine-Tuning" effect',}}
		gear.PUPRelic.Legs 				= {name="Pitre Churidars +1", augments={'Enhances "Ventriloquy" effect',}}
		gear.PUPRelic.Feet 				= {name="Pitre Babouches +1", augments={'Enhances "Role Reversal" effect',}}
		
		-- Empyrean --
		gear.PUPEmpy = {}
		gear.PUPEmpy.Head 				= {name="Karagoz Capello +1"}
		gear.PUPEmpy.Body 				= {name="Kara. Farsetto +1"}
		gear.PUPEmpy.Hands				= {name="Karagoz Guanti +1"}
		gear.PUPEmpy.Legs 				= {name="Kara. Pantaloni +1"}
		gear.PUPEmpy.Feet 				= {name="Karagoz Scarpe +1"}
	
		-- Capes --
		gear.PUPJSECape = {}
		gear.PUPJSECape 				= {name="Dispersal Mantle", augments={'STR+2','DEX+1','Pet: TP Bonus+480','"Martial Arts"+17',}}

		gear.Visucius = {}
		gear.Visucius.PetHaste 			= {name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10',}}
		gear.Visucius.PetRegen 			= {name="Visucius's Mantle", augments={'Accuracy+14 Attack+14','Pet: "Regen"+10',}}
	
	-- RED MAGE
		-- Artifact --
		gear.RDMAF = {}
		gear.RDMAF.Head 				= {"Atro. Chapeau +3"}
		gear.RDMAF.Body 				= {"Atrophy Tabard +3"}
		gear.RDMAF.Hands 				= {"Atrophy Gloves +3"}
		gear.RDMAF.Legs 				= {"Atrophy Tights +3"}
		gear.RDMAF.Feet 				= {"Atrophy Boots +3"}
		
		-- Relic -- 					T2 Enfeebles + Chainspell Bonuses
		gear.RDMRelic = {}
		gear.RDMRelic.Head 				= {name="Viti. Chapeau +1", augments={'Enhances "Dia III" effect','Enhances "Slow II" effect',}}
		gear.RDMRelic.Body 				= {name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}}
		gear.RDMRelic.Hands 			= {name="Viti. Gloves +1", augments={'Enhances "Phalanx II" effect',}}
		gear.RDMRelic.Legs 				= {name="Viti. Tights +1", augments={'Enhances "Bio III" effect','Enhances "Blind II" effect',}}
		gear.RDMRelic.Feet 				= {name="Vitivation Boots +1", augments={'Enhances "Paralyze II" effect',}}
		
		-- Empyrean --
		gear.RDMEmpy = {}
		gear.RDMEmpy.Head 				= {"Leth. Chappel +1"}
		gear.RDMEmpy.Body 				= {"Lethargy Sayon +1"}
		gear.RDMEmpy.Hands 				= {"Leth. Gantherots +1"}
		gear.RDMEmpy.Legs 				= {"Leth. Fuseau +1"}
		gear.RDMEmpy.Feet 				= {"Leth. Houseaux +1"}
	
		-- Capes --
		gear.RDMJSECape = {}  
		gear.RDMJSECape.EnhDur 			= {name="Ghostfyre Cape", augments={'Enfb.mag. skill +7','Enha.mag. skill +5','Mag. Acc.+5','Enh. Mag. eff. dur. +15',}}
	
		gear.Sucellos = {}  			-- Nuke cape for INT Enfeebles, Haste for MND Enfeebles
		gear.Sucellos.Haste 			= {name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10',}}
		gear.Sucellos.Nuke				= {name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10',}}
		gear.Sucellos.TP				= {name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
		
	-- SCHOLAR
		-- Artifact --
		gear.SCHAF = {}
		gear.SCHAF.Head 				= {name="Acad. Mortar. +1"}
		gear.SCHAF.Body 				= {name="Acad. Gown +2"}
		gear.SCHAF.Hands				= {name="Acad. Bracers +1"}
		gear.SCHAF.Legs 				= {name="Acad. Pants +2"}
		gear.SCHAF.Feet 				= {name="Acad. Loafers +2"}
		
		-- Relic -- 					Job Ability + Tabula Rasa Bonuses
		gear.SCHRelic = {}
		gear.SCHRelic.Head 				= {name="Peda. M.Board +1", augments={'Enh. "Altruism" and "Focalization"',}}
		gear.SCHRelic.Body 				= {name="Peda. Gown +1", augments={'Enhances "Enlightenment" effect',}}
		gear.SCHRelic.Hands 			= {name="Peda. Bracers +1", augments={'Enh. "Tranquility" and "Equanimity"',}}
		gear.SCHRelic.Legs 				= {name="Peda. Pants +1", augments={'Enhances "Tabula Rasa" effect',}}
		gear.SCHRelic.Feet 				= {name="Peda. Loafers +1", augments={'Enhances "Stormsurge" effect',}}
		
		-- Empyrean -- 
		gear.SCHEmpy = {}
		gear.SCHEmpy.Head 				= {name="Arbatel Bonnet +1"}
		gear.SCHEmpy.Body 				= {name="Arbatel Gown +1"}
		gear.SCHEmpy.Hands 				= {name="Arbatel Bracers +1"}
		gear.SCHEmpy.Legs 				= {name="Arbatel Pants +1"}
		gear.SCHEmpy.Feet 				= {name="Arbatel Loafers +1"}
	
		-- Capes --
		gear.SCHJSECape = {}  
		gear.SCHJSECape.HelDur 			= {name="Bookworm's Cape", augments={'INT+2','MND+2','Helix eff. dur. +19','"Regen" potency+8',}}
	
		gear.Lugh = {}  				-- Nuke cape for INT Enfeebles, FC for MND Enfeebles
		gear.Lugh.Nuke 					= {name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
		gear.Lugh.FC 					= {name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+9','"Fast Cast"+10',}}
		--gear.Lugh.Haste 				= {name="Lugh's Cape", augments={'INT+2','Mag. Acc+2 /Mag. Dmg.+2',}}

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
	-- SHARED ARMOR --
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
	-- Escha-Zitah Armor Sets 
--------------------------------------------------------------------------------------------------------------

	-- Despair
		gear.Despair = {}
		gear.Despair.Body 				= {name="Despair Mail", augments={'STR+12','VIT+7','Haste+2%',}}
		gear.Despair.Hands 				= {name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','Haste+2%',}}
		gear.Despair.Legs 				= {name="Despair Cuisses", augments={'STR+12','VIT+7','Haste+2%',}}
		gear.Despair.Feet 				= {name="Despair Greaves", augments={'DEX+10','STR+7','Phys. dmg. taken -3',}}
	
	-- Eschite
	
	-- Naga
		gear.Naga = {}
		gear.Naga.Head 					= {name="Naga Somen", augments={'Pet: MP+80','Automaton: "Fast Cast"+4','System: 2 ID: 157 Val: 2',}}
		gear.Naga.Body 					= {name="Naga Samue", augments={'Pet: MP+80','Automaton: "Fast Cast"+4','System: 2 ID: 157 Val: 2',}}
		gear.Naga.Hands 				= {name="Naga Tekko", augments={'Pet: MP+80','Automaton: "Fast Cast"+4','System: 2 ID: 157 Val: 2',}}
		gear.Naga.Legs 					= {name="Naga Hakama", augments={'Pet: MP+80','Automaton: "Fast Cast"+4','System: 2 ID: 157 Val: 2',}}
		gear.Naga.Feet 					= {name="Naga Kyahan", augments={'Pet: MP+80','Automaton: "Fast Cast"+4','System: 2 ID: 157 Val: 2',}}

		gear.Naga.Body.WS 				= {name="Naga Samue", augments={'HP+80','DEX+10','Attack+20',}}
		gear.Naga.Hands.PetMacc 		= {name="Naga Tekko", augments={'Pet: MP+80','Pet: Mag. Acc.+20','Pet: "Mag.Atk.Bns."+20',}}
		gear.Naga.Legs.A				= {name="Naga Hakama", augments={'STR+10','Accuracy+15','"Subtle Blow"+7',}}
		gear.Naga.Feet.PetMelee 		= {name="Naga Kyahan", augments={'Pet: HP+100','Pet: Accuracy+25','Pet: Attack+25',}}
		
	-- Psycloth
		gear.Psycloth = {}
		gear.Psycloth.Body 				= {name="Psycloth Vest", augments={'Elem. magic skill +20','INT+7','Enmity-6',}}
		gear.Psycloth.Hands 			= {name="Psycloth Manillas", augments={'Mag. Acc.+10','Spell interruption rate down +15%','MND+7',}}
		gear.Psycloth.Legs 				= {name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7'}}
		gear.Psycloth.Feet 				= {name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}}
	
	-- Pursuers
		gear.Pursuers = {}
		gear.Pursuers.Feet				= {name="Pursuer's Gaiters", augments={'Rng.Acc.+10','"Rapid Shot"+10','"Recycle"+15',}}
	
	-- Rawhide
		gear.Rawhide = {}
		gear.Rawhide.Body 				= {name="Rawhide Vest", augments={'HP+50','"Subtle Blow"+7','"Triple Atk."+2',}}
		gear.Rawhide.Legs 				= {name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}}
		
	-- Vanya
		gear.Vanya = {}
		gear.Vanya.Head 				= {name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}
		gear.Vanya.Body 				= {name="Vanya Robe", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}}
		gear.Vanya.Hands 				= {name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}
		gear.Vanya.Feet 				= {name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}

--------------------------------------------------------------------------------------------------------------
	-- Escha-Ru'Aun Armor Sets 
--------------------------------------------------------------------------------------------------------------

	-- Adhemar
		gear.Adhemar = {}
		gear.Adhemar.Legs				= {name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}}
	
	-- Amalric
		gear.Amalric = {}
		gear.Amalric.Head 				= {}
		gear.Amalric.Head.A 			= {name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15'}}
		gear.Amalric.Body 				= {}
		gear.Amalric.Body.D				= {name="Amalric Doublet", augments={'MP+60','"Mag.Atk.Bns."+20','"Fast Cast"+3'}}
		gear.Amalric.Hands 				= {}
		gear.Amalric.Hands.A 			= {name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}
		gear.Amalric.Hands.D 			= {name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15'}}
		gear.Amalric.Legs 				= {}
		gear.Amalric.Legs.C 			= {name="Amalric Slops", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}}
		gear.Amalric.Legs.D 			= {name="Amalric Slops", augments={'MP+60','"Mag.Atk.Bns."+20','Enmity-5',}}
		gear.Amalric.Feet 				= {}
		gear.Amalric.Feet.A 			= {name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}} 
	
	-- Apogee
	
	-- Argosy
	
	-- Carmine
		gear.Carmine = {}
		gear.Carmine.Head 				= {}
		gear.Carmine.Head 				= {name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}
		gear.Carmine.Body 				= {}
		gear.Carmine.Body 				= {name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}}
		gear.Carmine.Hands 				= {}
		gear.Carmine.Hands 				= {name="Carmine Fin. Ga.", augments={'Accuracy+10','DEX+10','MND+15',}}
		gear.Carmine.Legs 				= {}
		gear.Carmine.Legs 				= {name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}
		gear.Carmine.Feet 				= {}
		gear.Carmine.Feet				= {name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}
		gear.Carmine.Feet.PDT 			= {name="Carmine Greaves", augments={'HP+60','MP+60','Phys. dmg. taken -3',}}
		
	-- Emicho
	
	-- Kaykaus
		gear.Kaykaus = {}
		gear.Kaykaus.Head				= {name="Kaykaus Mitra", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}}
		gear.Kaykaus.Body 				= {name="Kaykaus Bliaut", augments={'MP+60','"Cure" potency +5%','"Conserve MP"+6',}}
		gear.Kaykaus.Hands 				= {name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}}
		gear.Kaykaus.Legs 				= {name="Kaykaus Tights", augments={'MP+60','MND+10','Mag. Acc.+15',}}
		gear.Kaykaus.Feet 				= {name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}}
		
	-- Lustratio
	
	-- Rao
		gear.RaoMaster = {}
		gear.RaoMaster.Head 			= {name="Rao Kabuto", augments={'Accuracy+10','Attack+10','Evasion+15',}}
		gear.RaoMaster.Body 			= {name="Rao Togi", augments={'Accuracy+10','Attack+10','Evasion+15',}}
		gear.RaoMaster.Hands 			= {name="Rao Kote", augments={'STR+10','DEX+10','Attack+15',}}
		gear.RaoMaster.Legs 			= {name="Rao Haidate", augments={'Accuracy+10','Attack+10','Evasion+15',}}
		gear.RaoMaster.Feet 			= {name="Rao Sune-Ate", augments={'Accuracy+10','Attack+10','Evasion+15',}}
		
		gear.RaoPetDT = {}
		gear.RaoPetDT.Head 				= {name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}}
		gear.RaoPetDT.Body 				= {name="Rao Togi", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}}
		gear.RaoPetDT.Hands				= {name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}}
		gear.RaoPetDT.Legs 				= {name="Rao Haidate", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}}
		gear.RaoPetDT.Feet 				= {name="Rao Sune-Ate", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}}

	-- Ryuo
		gear.Ryuo = {}
		gear.Ryuo.Head 					= {name="Ryuo Somen", augments={'STR+10','DEX+10','Accuracy+15',}}
		gear.Ryuo.Body 					= {name="Ryuo Domaru", augments={'STR+10','DEX+10','Accuracy+15',}}
		gear.Ryuo.Hands 				= {name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}}
		gear.Ryuo.Legs 					= {name="Ryuo Hakama", augments={'Accuracy+20','"Store TP"+4','Phys. dmg. taken -3',}}
		gear.Ryuo.Feet 					= {name="Ryuo Sune-Ate", augments={'STR+10','Attack+20','Crit. hit rate+3%',}}
		
	-- Souveran


--------------------------------------------------------------------------------------------------------------
	-- Reisenjima Armor Sets 
--------------------------------------------------------------------------------------------------------------

	-- Chironic
		gear.Chironic = {}
		gear.Chironic.Head 				= {}
		gear.Chironic.Head.DrAsp 		= {name="Chironic Hat", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','"Drain" and "Aspir" potency +8','INT+11','"Mag.Atk.Bns."+3',}}
		gear.Chironic.Body 				= {}
		gear.Chironic.Body.DrAsp 		= {name="Chironic Doublet", augments={'Mag. Acc.+25','"Drain" and "Aspir" potency +10','MND+4','"Mag.Atk.Bns."+3',}}
		gear.Chironic.Hands 			= {}
		gear.Chironic.Hands.Acc			= {name="Chironic Gloves", augments={'Accuracy+20 Attack+20','Accuracy+15','Attack+10',}}
		gear.Chironic.Hands.Macc		= {name="Chironic Gloves", augments={'Mag. Acc.+24','Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+4','Accuracy+1 Attack+1',}}
		gear.Chironic.Legs 				= {}
		gear.Chironic.Legs.Macc 		= {name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Enmity-2','MND+2','Mag. Acc.+13',}}
		gear.Chironic.Feet 				= {}
		gear.Chironic.Feet.Melee 		= {name="Chironic Slippers", augments={'Accuracy+13 Attack+13','"Dbl.Atk."+2','STR+15','Accuracy+11',}}
		
	-- Herculean
		gear.Herc = {}
		gear.Herc.Head 					= {name="Herculean Helm", augments={'Accuracy+17 Attack+17','Weapon skill damage +1%','STR+4','Accuracy+15',}}
		gear.Herc.Body 					= {name="Herculean Vest", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','MND+1','Weapon skill damage +1%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}}
		gear.Herc.Hands 				= {name="Herculean Gloves", augments={'Accuracy+13','Mag. Acc.+6 "Mag.Atk.Bns."+6','Accuracy+20 Attack+20',}}
		gear.Herc.Legs 					= {name="Herculean Trousers", augments={'Phys. dmg. taken -5%',}}
		gear.Herc.Feet 					= {name="Herculean Boots", augments={'INT+6','Pet: Attack+12 Pet: Rng.Atk.+12','Damage taken-2%','Accuracy+13 Attack+13','Mag. Acc.+20 "Mag.Atk.Bns."+20',}}
		
		gear.Herc.Head.PetMacc 			= {name="Herculean Helm", augments={'Pet: Mag. Acc.+30','Pet: "Store TP"+7','Pet: INT+8','Pet: "Mag.Atk.Bns."+12',}}
		gear.Herc.Legs.Acc 				= {name="Herculean Trousers", augments={'"Dual Wield"+3','DEX+12','Accuracy+12','Attack+15',}}
		gear.Herc.Legs.PetDT 			= {name="Herculean Trousers", augments={'Pet: Phys. dmg. taken -3%','Pet: Attack+6 Pet: Rng.Atk.+6',}}
		gear.Herc.Body.Acc 				= {name="Herculean Vest", augments={'Accuracy+23 Attack+23','Weapon skill damage +2%','STR+5','Accuracy+15',}}
		gear.Herc.Body.TA				= {name="Herculean Vest", augments={'Attack+15','"Triple Atk."+3','STR+9','Accuracy+15',}}
		
	-- Merlinic
		gear.Merlinic = {}
		gear.Merlinic.Head 				= {}
		gear.Merlinic.Head.FC 			= {name="Merlinic Hood", augments={'Mag. Acc.+29','"Fast Cast"+6','CHR+8',}}
		gear.Merlinic.Head.DrAsp 		= {name="Merlinic Hood", augments={'Mag. Acc.+7','"Drain" and "Aspir" potency +10','MND+4',}}
		gear.Merlinic.Head.MAB 			= {name="Merlinic Hood", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+9%','CHR+5','Mag. Acc.+11','"Mag.Atk.Bns."+13',}}
		gear.Merlinic.Body 				= {}
		gear.Merlinic.Body.FC 			= {name="Merlinic Jubbah", augments={'"Fast Cast"+7',}}
		gear.Merlinic.Body.MAB 			= {name="Merlinic Jubbah", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Enmity-3','INT+13','"Mag.Atk.Bns."+15',}}
		gear.Merlinic.Body.Burst 		= {name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+30','Magic burst mdg.+11%','CHR+10','Mag. Acc.+13',}}
		gear.Merlinic.Hands 			= {}
		gear.Merlinic.Hands.DrAsp 		= {name="Merlinic Dastanas", augments={'Accuracy+12','"Drain" and "Aspir" potency +10','INT+2','Mag. Acc.+15','"Mag.Atk.Bns."+12',}}
		gear.Merlinic.Hands.FC 			= {name="Merlinic Dastanas", augments={'Mag. Acc.+26','"Fast Cast"+6','INT+1','"Mag.Atk.Bns."+6',}}
		gear.Merlinic.Hands.Ref			= {name="Merlinic Dastanas", augments={'Pet: "Dbl.Atk."+1 Pet: Crit.hit rate +1','Rng.Acc.+27','"Refresh"+1',}}
		gear.Merlinic.Legs 				= {}
		gear.Merlinic.Legs.DrAsp 		= {name="Merlinic Shalwar", augments={'Mag. Acc.+22','"Drain" and "Aspir" potency +11','AGI+10','"Mag.Atk.Bns."+6',}}
		gear.Merlinic.Legs.MAB			= {name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst mdg.+8%','MND+7','Mag. Acc.+15','"Mag.Atk.Bns."+12',}}
		gear.Merlinic.Legs.Macc			= { name="Merlinic Shalwar", augments={'Mag. Acc.+27','"Avatar perpetuation cost" -6','Accuracy+4 Attack+4','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
		gear.Merlinic.Legs.Ref			= {name="Merlinic Shalwar", augments={'"Dual Wield"+1','Pet: Attack+27 Pet: Rng.Atk.+27','"Refresh"+1','Accuracy+11 Attack+11',}}
		gear.Merlinic.Feet 				= {}
		gear.Merlinic.Feet.Burst 		= {name="Merlinic Crackows", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst mdg.+8%','MND+14','Mag. Acc.+15','"Mag.Atk.Bns."+10',}}
		gear.Merlinic.Feet.DrAsp 		= {name="Merlinic Crackows", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +9','INT+4',}}
		gear.Merlinic.Feet.MAB 			= {name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+6','Mag. Acc.+10','"Mag.Atk.Bns."+15',}}
		gear.Merlinic.Feet.FC 			= {name="Merlinic Crackows", augments={'"Fast Cast"+7','INT+2',}}
		gear.Merlinic.Feet.Ref			= {name="Merlinic Crackows", augments={'MND+8','Pet: Mag. Acc.+30','"Refresh"+1','Mag. Acc.+8 "Mag.Atk.Bns."+8',}}
	
	-- Odyssean
	
	-- Valorous

	
--------------------------------------------------------------------------------------------------------------
	-- Sinister Reign Armor
--------------------------------------------------------------------------------------------------------------
		gear.Witching = {}
		gear.Witching 					= {name="Witching Robe", augments={'MP+45','Mag. Acc.+14','"Mag.Atk.Bns."+14',}}
		
		gear.Tam = {}
		gear.Tam 						= {name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}}
		
		gear.Samnuha = {}
		gear.Samnuha.Legs 				= {name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}}
		gear.Samnuha.Body				= {name="Samnuha Coat", augments={'Mag. Acc.+14','"Mag.Atk.Bns."+13','"Fast Cast"+4','"Dual Wield"+3',}}
	
		gear.Mediums = {}
		gear.Mediums 					= {name="Medium's Sabots", augments={'MP+50','MND+10','"Conserve MP"+7','"Cure" potency +5%',}}
	
		gear.Lengo = {}
		gear.Lengo						= {name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}}
		
		gear.Loyalist = {}
		gear.Loyalist					= {name="Loyalist Sabatons", augments={'STR+10','Attack+15','Phys. dmg. taken -3%','Haste+3',}}
		
		gear.Leyline = {}
		gear.Leyline 					= {name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}}
		
		gear.Floral = {}
		gear.Floral						= {name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}}

		gear.Amm = {}
		gear.Amm 						= {name="Amm Greaves", augments={'HP+40','Accuracy+11',}}
		
--------------------------------------------------------------------------------------------------------------
	-- Ambuscade Armor Sets
--------------------------------------------------------------------------------------------------------------
	-- Ayanmo
		gear.Ayanmo = {}
		gear.Ayanmo.Head 				= {name="Aya. Zucchetto +1"}
		gear.Ayanmo.Body				= {name="Ayanmo Corazza +1"}
		gear.Ayanmo.Hands				= {name="Aya. Manopolas +1"}
		gear.Ayanmo.Legs				= {name="Aya. Cosciales +1"}
		gear.Ayanmo.Feet				= {name="Aya. Gambieras +1"}
		
	-- Hizamaru
		gear.Hiza = {}
		gear.Hiza.Head 					= {name="Hizamaru Somen +1"}
		gear.Hiza.Body 					= {name="Hiza. Haramaki +1"}
		gear.Hiza.Hands 				= {name="Hizamaru Kote +1"}
		gear.Hiza.Legs 					= {name="Hiza. Hizayoroi +1"}
		gear.Hiza.Feet 					= {name="Hiza. Sune-Ate +1"}

	-- Jhakri
		gear.Jhakri = {}
		gear.Jhakri.Head		 		= {name="Jhakri Coronal +1"}
		gear.Jhakri.Body	 			= {name="Jhakri Robe +1"}
		gear.Jhakri.Hands	 			= {name="Jhakri Cuffs +1"}
		gear.Jhakri.Legs	 			= {name="Jhakri Slops +1"}
		gear.Jhakri.Feet	 			= {name="Jhakri Pigaches +1"}

--------------------------------------------------------------------------------------------------------------
	-- Aluvion Skirmish Armor 
--------------------------------------------------------------------------------------------------------------

	-- Acro
	
	-- Helios
		gear.HeliosBody = {}
		gear.HeliosBody 				= {name="Helios Jacket", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Drain" and "Aspir" potency +10','Mag. crit. hit dmg. +9%',}}

	
	-- Taeon
		gear.Taeon = {}
		gear.Taeon.Hands 				= {name="Taeon Gloves", augments={'Pet: Accuracy+14 Pet: Rng. Acc.+14','"Fast Cast"+5','STR+7 AGI+7',}}
		
	-- Telchine
		gear.Telchine = {}
		gear.Telchine.Head				= {name="Telchine Cap", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +7',}}
		gear.Telchine.Body 				= {name="Telchine Chas.", augments={'Evasion+14','Spell interruption rate down -9%','Enh. Mag. eff. dur. +2',}}
		gear.Telchine.Hands				= {name="Telchine Gloves", augments={'Mag. Evasion+10','"Cure" spellcasting time -4%','Enh. Mag. eff. dur. +9',}}
		gear.Telchine.Legs				= {name="Telchine Braconi", augments={'Accuracy+10','Enh. Mag. eff. dur. +9',}}
		gear.Telchine.Feet				= {name="Telchine Pigaches", augments={'"Cure" spellcasting time -4%','Enh. Mag. eff. dur. +9',}}
	
	-- Yorium

--------------------------------------------------------------------------------------------------------------
	-- Skirmish Armor 
--------------------------------------------------------------------------------------------------------------

	-- Cizin
	
	-- Gendewitha
	
	-- Hagondes
		gear.Hagondes = {}
		gear.Hagondes.Head 				= {}
		gear.Hagondes.Head 				= {name="Hagondes Hat +1", augments={'Phys. dmg. taken -4%','Magic burst mdg.+5%',}}
		gear.Hagondes.Legs 				= {}
		gear.Hagondes.Legs 				= {name="Hagondes Pants +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','"Mag.Atk.Bns."+28',}}
	
	
	-- Iuitl
	
	-- Otronif


--------------------------------------------------------------------------------------------------------------
	-- Delve Armor 
--------------------------------------------------------------------------------------------------------------
		gear.Otomi = {}
		gear.Otomi 						= {name="Otomi Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}


--------------------------------------------------------------------------------------------------------------
	-- Miscellaneous Gear
--------------------------------------------------------------------------------------------------------------
		gear.Moonshade = {}
		gear.Moonshade 					= {name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}}

		gear.Anwig = {}
		gear.Anwig 						= {name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Attack+3','Pet: "Regen"+1',}}
		
		gear.Desultor = {}
		gear.Desultor 					= {name="Desultor Tassets", augments={'"Repair" potency +10%','Movement speed +8%+2',}}
		

end

-------------------------------------------------------------------------------------------------------------------
-- Functions to set user-specified binds, generally on load and unload.
-- Kept separate from the main include so as to not get clobbered when the main is updated.
-------------------------------------------------------------------------------------------------------------------

-- Function to bind GearSwap binds when loading a GS script.
function global_on_load()
	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind ^f9 gs c cycle HybridMode')
	send_command('bind @f9 gs c cycle RangedMode')
	send_command('bind !f9 gs c cycle WeaponskillMode')
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind ^f12 gs c cycle ResistDefenseMode')
	send_command('bind !f10 gs c toggle Kiting')
	send_command('bind f11 gs c set DefenseMode Magical')
	send_command('bind f12 gs c set DefenseMode Resist')
	send_command('bind ^f11 gs c cycle MagicalDefenseMode')
	send_command('bind @f11 gs c cycle CastingMode')
	send_command('bind pause gs c update user')
	send_command('bind @f12 gs c cycle IdleMode')
	send_command('bind !f12 gs c reset DefenseMode')
	send_command('bind ^@!f12 gs reload')
	send_command('bind ^@!pause gs org')

--	send_command('bind ^- gs c toggle selectnpctargets')
--	send_command('bind ^= gs c cycle pctargetmode')
end

-- Function to revert binds when unloading.
function global_on_unload()
	send_command('unbind f9')
	send_command('unbind ^f9')
	send_command('unbind !f9')
	send_command('unbind @f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind !f10')
	send_command('unbind @f10')
	send_command('unbind f11')
	send_command('unbind ^f11')
	send_command('unbind !f11')
	send_command('unbind @f11')
	send_command('unbind f12')
	send_command('unbind ^f12')
	send_command('unbind !f12')
	send_command('unbind @f12')
	send_command('unbind ^@!pause')
	send_command('unbind ^pause')
	send_command('unbind !pause')
	send_command('unbind @pause')
	send_command('unbind ^@!pause')

	send_command('unbind ^\\\\')
	send_command('unbind @\\\\')
	send_command('unbind !\\\\')
	
	send_command('unbind ^`')
	send_command('unbind !`')
	send_command('unbind @`')
	
	send_command('unbind ^backspace')
	send_command('unbind !backspace')
	send_command('unbind @backspace')
	
	send_command('unbind ^r')
	send_command('unbind !r')
	send_command('unbind @r')
	
	send_command('unbind ^-')
	send_command('unbind !-')
	send_command('unbind @-')
	
	send_command('unbind ^=')
	send_command('unbind !=')
	send_command('unbind @=')
	
	send_command('unbind ^delete')
	send_command('unbind !delete')
	send_command('unbind @delete')
end

-------------------------------------------------------------------------------------------------------------------
-- Global event-handling functions.
-------------------------------------------------------------------------------------------------------------------

-- Global intercept on precast.
function user_precast(spell, action, spellMap, eventArgs)
	--if checkdisable(spell, action, spellMap, eventArgs) then return end
	--if checkdoom(spell, action, spellMap, eventArgs) then return end
	--if checkabilities(spell, action, spellMap, eventArgs) then return end
	--if checkrecast(spell, action, spellMap, eventArgs) then return end
	--if checksilence(spell, action, spellMap, eventArgs) then return end
	--if checkamnesia(spell, action, spellMap, eventArgs) then return end
    cancel_conflicting_buffs(spell, action, spellMap, eventArgs)
    refine_waltz(spell, action, spellMap, eventArgs)
end

-- Global intercept on midcast.
function user_midcast(spell, action, spellMap, eventArgs)
	-- Default base equipment layer of fast recast.
	if spell.action_type == 'Magic' and sets.midcast and sets.midcast.FastRecast then
		equip(sets.midcast.FastRecast)
	end

end

-- Global intercept on buff change.
function user_buff_change(buff, gain, eventArgs)

end

-- Event register to make time variables track.
windower.register_event('time change', time_change)