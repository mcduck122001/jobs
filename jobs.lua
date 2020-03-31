--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_SWAT = DarkRP.createJob("SWAT", {
    color = Color(0, 28, 255, 255),
    model = {"models/player/swat.mdl"},
    description = [[As S.W.A.T it is your job to bust the drug dealers and make sure nothing seriously illegal is going on.]],
    weapons = {"m9k_spas12", "m9k_m16a4_acog"},
    command = "swat",
    max = 0,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
        ply:SetArmor(100)
    end
})
TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(145, 145, 145, 255),
    model = {
        "models/player/Group03/male_01.mdl",
        "models/player/Group03/male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/male_04.mdl",
        "models/player/Group03/male_05.mdl",
        "models/player/Group03/male_06.mdl",
        "models/player/Group03/male_07.mdl",
        "models/player/Group03/male_08.mdl",
        "models/player/Group03/male_09.mdl"
    },
    description = [[The lowest person of crime.
        A gangster generally works for the Mobboss who runs the crime family.
        The Mob boss sets your agenda and you follow it or you might be punished.]],
    weapons = {"m9k_colt1911"},
    command = "gangster",
    max = 5,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Criminals"
})
TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(1, 28, 207, 255),
    model = {
        "models/player/police.mdl",
        "models/player/police_fem.mdl"
    },
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"m9k_glock"},
    command = "police",
	category = "Government",
    max = 5,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true
})
TEAM_MOB = DarkRP.createJob("Mob boss", {
    color = Color(28, 25, 25, 255),
    model = {"models/player/gman_high.mdl"},
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick", "m9k_deagle"},
    command = "mobboss",
    max = 1,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = true,
    category = "Criminals"
})
TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 138, 0, 255),
    model = {"models/player/monk.mdl"},
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "Citizens"
})
TEAM_CHIEF = DarkRP.createJob("Police Chief", {
    color = Color(19, 28, 255, 255),
    model = {"models/player/combine_soldier_prisonguard.mdl"},
    description = [[The Chief is the leader of the Civil Protection unit.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "m9k_deagle", "m9k_m4a1"},
    command = "chief",
    max = 1,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    chief = true,
    ammo = {
        ["pistol"] = 60
    }
})
TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = {"models/player/breen.mdl"},
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {"m9k_glock"},
    command = "mayor",
    max = 1,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    mayor = true
})
TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(82, 44, 0, 255),
    model = {"models/player/corpse1.mdl"},
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
    hobo = true
})
TEAM_GUARD = DarkRP.createJob("Security Guard", {
    color = Color(17, 0, 119, 255),
    model = {"models/player/barney.mdl"},
    description = [[As a security guard it is your job to be hired and sell yourself to companies to protect their assets.]],
    weapons = {"m9k_scar"},
    command = "guard",
    max = 2,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Citizens",
    ammo = {
        ["ar2"] = 60
    },
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(100)
        ply:SetHealth(100)
        ply:SetArmor(100)
    end
})
TEAM_HIT = DarkRP.createJob("Hitman", {
    color = Color(153, 152, 152, 255),
    model = {"models/player/leet.mdl"},
    description = [[You "whack off" those un wanted guests...for a price.]],
    weapons = {"m9k_dragunov"},
    command = "hitman",
    max = 3,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = true,
    category = "Criminals",
    ammo = {
        ["SniperPenetratedRound"] = 100,
        ["pistol"] =  100
    },
    PlayerSpawn = function(ply)
        ply:SetArmor(15)
    end
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HIT)
