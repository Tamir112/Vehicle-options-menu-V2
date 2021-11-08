-----------------------------------------------------------
----             Vehicle Options menu                  ----
----             Made by Tamir112#5345                 ----
----        For more scripts and updates Join:         ----
----              discord.gg/bDPaRDeBKJ                ----
----                                                   ----
-----------------------------------------------------------




-- DO NOT EDIT BELOW THIS IF YOU DO NOT KNOW WHAT YOU ARE DOING !! -- 
-- DO NOT EDIT BELOW THIS IF YOU DO NOT KNOW WHAT YOU ARE DOING !! -- 
-- DO NOT EDIT BELOW THIS IF YOU DO NOT KNOW WHAT YOU ARE DOING !! -- 
-- DO NOT EDIT BELOW THIS IF YOU DO NOT KNOW WHAT YOU ARE DOING !! -- 

local cooldown = false

Citizen.CreateThread(function ()
  while true do
       Citizen.Wait(0)
       if cooldown == true then
       Citizen.Wait(5000)
cooldown = false
       end
  end
end)

_menuPool = NativeUI.CreatePool()


function seatrs(menu)
  local seats = _menuPool:AddSubMenu(menu, "~b~→ ~s~Vehicle seats", "Change vehicle seats",true, true, true)
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped)
  local hash = GetEntityModel(veh)
  local max = GetVehicleModelNumberOfSeats(hash)


  if max >= 4 then
local dr = NativeUI.CreateItem("Driver Seat", "move into the Driver seat")
local pass = NativeUI.CreateItem("Passanger Seat", "move into the Passanger seat")
local rl = NativeUI.CreateItem("Rear left seat", "move into the Rear left seat")
local rr = NativeUI.CreateItem("Rear right seat", "move into the Rear right seat")
seats:AddItem(dr)
seats:AddItem(pass)
seats:AddItem(rl)
seats:AddItem(rr)

  
seats.OnItemSelect = function(sender, item, index)
  if item == dr then
  TaskWarpPedIntoVehicle(ped, veh, -1)
end
if item == pass then
  TaskWarpPedIntoVehicle(ped, veh, 0)

end
if item == rl then
  TaskWarpPedIntoVehicle(ped, veh, 1)
end
if item == rr then
  TaskWarpPedIntoVehicle(ped, veh, 2)
end
end

else if max < 4 then
  local dr = NativeUI.CreateItem("Driver Seat", "move into the Driver seat")
  local pass = NativeUI.CreateItem("Passanger Seat", "move into the Passanger seat")
  seats:AddItem(dr)
  seats:AddItem(pass)
  seats.OnItemSelect = function(sender, item, index)
        if item == dr then
      TaskWarpPedIntoVehicle(ped, veh, -1)
    end
    if item == pass then
    TaskWarpPedIntoVehicle(ped, veh, 0)
    

  end
end
end
end
end


function doors(menu)
  local doors = _menuPool:AddSubMenu(menu, "~b~→ ~s~Door options","Manage the vehicles doors",1420,0)
local frontleft = NativeUI.CreateItem("Front Left Door", "Open Front Left Door")
local frontright = NativeUI.CreateItem("Front Right Door", "Open Front Right Door")
local backLeft = NativeUI.CreateItem("Back Left Door", "Open Back Left Door")
local backright = NativeUI.CreateItem("Back Right Door", "Open Back Right Door")
local trunk = NativeUI.CreateItem("Trunk", "Open trunk")
local hood = NativeUI.CreateItem("Hood", "Open hood")


doors:AddItem(frontleft)
doors:AddItem(frontright)
doors:AddItem(backLeft)
doors:AddItem(backright)
doors:AddItem(trunk)
doors:AddItem(hood)




doors.OnItemSelect = function(sender, item, index)

if item == frontleft then
local ped = GetPlayerPed(-1)
local veh = GetVehiclePedIsIn(ped, false)
local isopen = GetVehicleDoorAngleRatio(veh,0)


if isopen  == 0 then
SetVehicleDoorOpen(veh, 0, false, false )
else 
  SetVehicleDoorShut(veh, 0, false)
end
end

if item == frontright then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  local isopen = GetVehicleDoorAngleRatio(veh,1)
  
  
  if isopen  == 0 then
  SetVehicleDoorOpen(veh, 1, false, false )
  else 
  SetVehicleDoorShut(veh, 1, false)
  end
  end
  if item == backLeft then
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
    local isopen = GetVehicleDoorAngleRatio(veh,2)
    
    
    if isopen  == 0 then
    SetVehicleDoorOpen(veh, 2, false, false )
    else 
    SetVehicleDoorShut(veh, 2, false)
    end
    end

    if item == backright then
      local ped = GetPlayerPed(-1)
      local veh = GetVehiclePedIsIn(ped, false)
      local isopen = GetVehicleDoorAngleRatio(veh,3)
      
      
      if isopen  == 0 then
      SetVehicleDoorOpen(veh, 3, false, false )
      else 
      SetVehicleDoorShut(veh, 3, false)
      end
      end
  
if item == trunk then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  local isopen = GetVehicleDoorAngleRatio(veh,5)
  
  
  if isopen  == 0 then
  SetVehicleDoorOpen(veh, 5, false, false )
  else 
  SetVehicleDoorShut(veh, 5, false)
  end
  end

  if item == hood then
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
    local isopen = GetVehicleDoorAngleRatio(veh,4)
    
    
    if isopen  == 0 then
    SetVehicleDoorOpen(veh, 4, false, false )
    else 
    SetVehicleDoorShut(veh, 4, false)
    end
    end
  

end
end



function windows(menu)
local windows = _menuPool:AddSubMenu(menu, "~b~→ ~s~Window options","Manage vehicles windows",1420,0)
local frontup = NativeUI.CreateItem("Front Windows Down", "Roll Down The Front Windows")
local frontdown = NativeUI.CreateItem("Front Windows Up", "Roll Up The Front Windows")
local backtup = NativeUI.CreateItem("Back Windows Down", "Roll Down The Back Windows")
local backdown = NativeUI.CreateItem("Back Windows Up", "Roll Up The Back Windows")

windows:AddItem(frontup)
windows:AddItem(frontdown)
windows:AddItem(backtup)
windows:AddItem(backdown)
windows.OnItemSelect = function(sender, item, index)

if item == frontup then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  RollDownWindow(veh, 0)
  RollDownWindow(veh,1)
  ShowNotification("~g~Front Windows Rolled Down")
end

if item == frontdown then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  RollUpWindow(veh, 0)
  RollUpWindow(veh, 1)
  ShowNotification("~r~Front Windows Rolled Up")
end

if item == backdown then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  RollUpWindow(veh, 2)
  RollUpWindow(veh, 3)
  ShowNotification("~r~Back Windows Rolled Up")
end

if item == backtup then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  RollDownWindow(veh, 2)
  RollDownWindow(veh, 3)
  ShowNotification("~g~Back Windows Rolled Down")
end
end
end

function Extras(menu)
  local extras = _menuPool:AddSubMenu(menu, "~b~→ ~s~Vehicle Extras","Manage the vehicles extras",1420,0)
  local AvailableExtras = {['VehicleExtras'] = {}}
  local Items = {['Vehicle'] = {}}
  local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
  local GotVehicleExtras = false
  for ExtraID = 0, 20 do
          if DoesExtraExist(Vehicle, ExtraID) then
                  AvailableExtras.VehicleExtras[ExtraID] = (IsVehicleExtraTurnedOn(Vehicle, ExtraID) == 1)
                  GotVehicleExtras = true
          end
  end
  if GotVehicleExtras then

          for Key, Value in pairs(AvailableExtras.VehicleExtras) do
                  local ExtraItem = NativeUI.CreateCheckboxItem('Extra ' .. Key, AvailableExtras.VehicleExtras[Key],"Enable or Disable Extras")
                  extras:AddItem(ExtraItem)
                  Items.Vehicle[Key] = ExtraItem
          end
          extras.OnCheckboxChange = function(Sender, Item, Checked)
                  for Key, Value in pairs(Items.Vehicle) do
                          if Item == Value then
                                  AvailableExtras.VehicleExtras[Key] = Checked
                                  if AvailableExtras.VehicleExtras[Key] then
                                          SetVehicleExtra(Vehicle, Key, 0)
                                  else
                                          SetVehicleExtra(Vehicle, Key, 1)
                                  end
                          end
                  end
          end
        else 
          local ExtraItem = NativeUI.CreateItem("This vehicle has no extras to add :(","")
          extras:AddItem(ExtraItem)
end
end


function liverys(menu)
  local livery = _menuPool:AddSubMenu(menu, "~b~→ ~s~Liverys","Change your livery",1420,0)
local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
local liverycount = GetVehicleLiveryCount(veh)
if liverycount > 0 then
  local liverys2 = {}
  local s = 1
  for i=1, liverycount do
table.insert(liverys2, s, i )
end
 local liverys = NativeUI.CreateListItem("Livery number",liverys2, 1 )

 livery:AddItem(liverys)

 livery.OnListChange = function(sender, item, index)
  if item == liverys then
    liv = item:IndexToItem(index)
  SetVehicleLivery(veh, liv)
  end
  end

else
  local non = NativeUI.CreateItem("This vehicle has no liverys to choose from :(","")
  livery:AddItem(non)
end
local mad = NativeUI.CreateItem("~b~Made by Tamir112 Modifications", "")
menu:AddItem(mad)

end


function licenses(menu)
local license = _menuPool:AddSubMenu(menu, "~b~→ ~s~License Plate", "manage your vehicles license plate", 1420 , 0)
local change = NativeUI.CreateItem("Random license plate", "Stole a vehicle? set a different license.")
local set = NativeUI.CreateItem("Customize your license plate", "set a custom license plate of your choice")
local let = {
"K",
"L",
"Q",
"R",
"Z",
"N"
}

license:AddItem(change)
license:AddItem(set)
license.OnItemSelect = function(sender, item, index)
  if item == change  then
    if cooldown == false then
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped, false)
a = math.random(1, 9)
b = math.random(1, 9)
c = math.random(1, 9)
d = math.random(1, 9)
e = math.random(1, 9)



test1 = math.random(1, 6)
test = math.random(1, 6)
test2 = math.random(1, 6)
 plate =  a..b..let[test]..c..let[test1]..d..e..let[test2]

    SetVehicleNumberPlateText(veh, plate)
    ShowNotification("~g~License plate changed to "..plate)
    cooldown = true
 
else do 
  ShowNotification("~r~Please wait 5 seconds before using this function again")
end
end
end
if item == set then
  local ped = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(ped, false)
  DisplayOnscreenKeyboard(1, "", "", "", "", "", "", 30)
  while (UpdateOnscreenKeyboard() == 0) do
      DisableAllControlActions(0);
      Wait(0);
  end
  if (GetOnscreenKeyboardResult()) then
       local plate = GetOnscreenKeyboardResult() 
       set:RightLabel(plate)  
       SetVehicleNumberPlateText(veh, plate)
       ShowNotification("~g~License plate changed to "..plate)
    end
end
end
end

function lights(menu)
  local light = _menuPool:AddSubMenu(menu, "~b~→ ~s~Lights","Manage your vehicles lights",1420,0)
local left = NativeUI.CreateItem("Left Indicator","toggle your left indicator")
local right = NativeUI.CreateItem("Right Indicator","toggle your Right indicator")
local hazard = NativeUI.CreateItem("Hazard Lights","toggle your Hazard lights")

light:AddItem(left)
light:AddItem(right)
light:AddItem(hazard)
light.OnItemSelect = function(sender, item, index)
if item == left then
local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
if GetVehicleIndicatorLights(veh) ~= 1 then
  SetVehicleIndicatorLights(veh, 1, true)
  SetVehicleIndicatorLights(veh, 0, false)
  ShowNotification("~g~Left indicator activated")
else
  SetVehicleIndicatorLights(veh, 1, false)
  ShowNotification("~r~Left indicator deactivated")
end
end

if item == right then
  local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
  if GetVehicleIndicatorLights(veh) ~= 2 then
    SetVehicleIndicatorLights(veh, 0, true)
    SetVehicleIndicatorLights(veh, 1, false)
    ShowNotification("~g~Right indicator activated")
  else
    SetVehicleIndicatorLights(veh, 0, false)
    ShowNotification("~r~Right indicator deactivated")
  end
  end
  if item == hazard then
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
    if GetVehicleIndicatorLights(veh) ~= 3 then
      SetVehicleIndicatorLights(veh, 0, true)
      SetVehicleIndicatorLights(veh, 1, true)
      ShowNotification("~g~Hazards activated")
    else
      SetVehicleIndicatorLights(veh, 0, false)
      SetVehicleIndicatorLights(veh, 1, false)
      ShowNotification("~r~Hazards deactivated")
    end
    end
end
local engine1 = NativeUI.CreateItem("~b~→ ~s~Toggle Engine", "Engine On/Off")
if Config.menus.engine then
menu:AddItem(engine1)
end
menu.OnItemSelect = function(sender, item, index)
  if item == engine1 then
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)
    local mod = GetIsVehicleEngineRunning(veh)


      if mod == 1 then
        SetVehicleEngineOn(veh, false, false, true)
        ShowNotification("~r~Engine shut down")
else 
  SetVehicleEngineOn(veh, true, false, true)
  ShowNotification("~g~Engine Started")

end
end
end
end

function Openmenu()
  _menuPool:Remove()
	if vehMenu ~= nil and vehMenu:Visible() then
		vehMenu:Visible(false)
		return
	end
  mainMenu = NativeUI.CreateMenu("", "~b~Vehicle options menu", 1430, 0)
  _menuPool:Add(mainMenu)
  mainMenu.SetMenuWidthOffset(50);
  if Config.menus.doors then           
    doors(mainMenu)
     end
     if Config.menus.windows then
    windows(mainMenu)
     end
     if Config.menus.extras then
    Extras(mainMenu)
     end
     if Config.menus.license then
    licenses(mainMenu)
     end
     if Config.menus.seats then
    seatrs(mainMenu)
     end
     if Config.menus.lights then
    lights(mainMenu)
     end
     if Config.menus.livery then
      liverys(mainMenu)
       end

  _menuPool:RefreshIndex() 
  _menuPool:MouseControlsEnabled (false)
  _menuPool:MouseEdgeEnabled (false)
  _menuPool:ControlDisablingEnabled(false)
  
      end

  
  
   Citizen.CreateThread(function()
      while true do
          Citizen.Wait(0)
          _menuPool:ProcessMenus()
          local ped = GetPlayerPed(-1)
          local veh = GetVehiclePedIsIn(ped)
         if IsControlJustPressed(1, Config.keybind) then
          if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(veh, -1) == ped then
            Openmenu()
           mainMenu:Visible(not mainMenu:Visible())                     
        else 
          ShowNotification("~r~You need to be in a vehicle in order to use this menu")
      end
    end
    end
  end) 


if Config.command ~= "" then
RegisterCommand(Config.command, function()
  Citizen.Wait(0)
   local ped = GetPlayerPed(-1)
   local veh = GetVehiclePedIsIn(ped)
   if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(veh, -1) == ped then
    mainMenu:Visible(not mainMenu:Visible())
else 
  ShowNotification("~r~You need to be in a vehicle to use this menu")
end
end
)
end

---------------------------------------------------




  function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end




