local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4 - Best & Secured script by Fahri")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Server Manipulator")
local T3 = wndw:Tab("Fight - BETA")

local fight = {
  af = "Start",
  a = 0,
  b = 0,
  c = nil
}

T1:Toggle("Auto click",false,function(value)
    _G.beam = value
    while wait() do
      if _G.beam == false then break end
      game:GetService("ReplicatedStorage")["Power"]["GivePower"]:FireServer()
      game:GetService("ReplicatedStorage")["Power"]["FightUpdater"]:FireServer()
    end
end)

T1:Toggle("Auto rebirth",false,function(value)
    _G.r = value
    while wait() do
      if _G.r == false then break end
      game:GetService("ReplicatedStorage")["Power"]["Rebirth"]:FireServer()
    end
end)

T3:Toggle("Start fight [ Fight the enemy first ]",false,function(value)
    _G.fe = value
    while wait() do
      if _G.fe == false then break end
      game:GetService("ReplicatedStorage")["Power"]["StartFight"]:FireServer(fight.af,fight.a,fight.b,fight.c)
    end
end)

T2:Button("Infinite Spins",function()
    game:GetService("ReplicatedStorage")["Events"]["AddValue"]:FireServer("Spins",math.huge)
end)

T2:Button("OP Pet giver",function()
    game:GetService("ReplicatedStorage")["Boosts"]["PlaytimeReward"]:FireServer("Pet",1)
end)

T2:Button("2X Power giver [ X10 ]",function()
    game:GetService("ReplicatedStorage")["Boosts"]["SpinRewards"]:FireServer("2x Power",10)
end)

T2:Button("2X Wins giver [ X10 ]",function()
    game:GetService("ReplicatedStorage")["Boosts"]["SpinRewards"]:FireServer("2x Win",10)
end)

T2:Button("2X Luck giver [ X10 ]",function()
    game:GetService("ReplicatedStorage")["Boosts"]["SpinRewards"]:FireServer("2x Luck",10)
end)

T2:Toggle("Wins giver [ X50 ]",false,function(value)
    _G.wg1 = value
    while wait() do
      if _G.wg1 == false then break end
      game:GetService("ReplicatedStorage")["Boosts"]["PlaytimeReward"]:FireServer("Wins",50)
    end
end)

T2:Toggle("Wins giver [ X100 ]",false,function(value)
    _G.wg2 = value
    while wait() do
      if _G.wg2 == false then break end
      game:GetService("ReplicatedStorage")["Boosts"]["PlaytimeReward"]:FireServer("Wins",100)
    end
end)

T2:Toggle("Power giver [ X500 ]",false,function(value)
    _G.pg1 = value
    while wait() do
      if _G.pg1 == false then break end
      game:GetService("ReplicatedStorage")["Boosts"]["PlaytimeReward"]:FireServer("Power",500)
    end
end)

T2:Toggle("Power giver [ X1000 ]",false,function(value)
    _G.pg2 = value
    while wait() do
      if _G.pg2 == false then break end
      game:GetService("ReplicatedStorage")["Boosts"]["PlaytimeReward"]:FireServer("Power",1000)
    end
end)

lib:HookFunction(function(method,self,args) -- Script to get server caller
    fight.a = args[2]
    fight.b = args[3]
    fight.c = args[4]
end)
