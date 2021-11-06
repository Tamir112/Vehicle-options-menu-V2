-----------------------------------------------------------
----             Vehicle Options menu                  ----
----             Made by Tamir112#5345                 ----
----        For more scripts and updates Join:         ----
----              discord.gg/bDPaRDeBKJ                ----
----                                                   ----
-----------------------------------------------------------


Config = {

keybind = 170, -- default keybind is F3, to choose a different one get the ID you want from https://docs.fivem.net/docs/game-references/controls/
-- To disable the keybind set it to 360

command = "carmenu", -- This is the command to open the menu.
-- To disable the command set it to nothing

menus = { -- Here you can disable/enable all the different functions that the menu has to offer
-- True = enabled
-- False = disabled

    seats = true, -- Change seats within vehicle.
    doors = true, -- Open/Close vehicle doors.
    windows = true, -- Raise/Lower your windows.
    extras = true, -- Allow player to enable/disable vehicle extras
    livery = true, -- Allow player to change vehicles liverys
    license = false, -- Allow player to change the license plate of the vehicle.
    lights = true, -- Manage vehicles lights
    engine = true, -- Allow user to toggle engine on and off
}
}
