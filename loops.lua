
--dice roll game
print("Hello")

local dice1 = game.Workspace.Game.Dice_Parts.dice_1
local dice2 = game.Workspace.Game.Dice_Parts.dice_2
local randRot = math.random(1,10)
local randPos = math.random(-11, 11)

--dice.dice_1.Position = Vector3.new(-11, 150, 8)
--dice.dice_2.Position = Vector3.new(-11, 120.578, 8)

dice1.BrickColor = BrickColor.new("Bright bluish green")
dice2.BrickColor = BrickColor.new("Bright blue")

dice1.Position = Vector3.new(randPos, 150, randPos)
dice2.Position = Vector3.new(randPos, 120.578, randPos)

dice1.RotVelocity = Vector3.new(randRot,randRot,randRot)
dice2.RotVelocity = Vector3.new(randRot,randRot,randRot)

dice1.Anchored = false
wait(0.5)
dice2.Anchored = false

--part w mouseClick()

local part = game.Workspace.Part_1
local clickDetector = game.Workspace.Game.ClickDetector

part.BrickColor = BrickColor.new("Alder")


function diceRoll(part)
	part.Position = Vector3.new(randPos,randPos,randPos)
end

function onMouseClick()
	diceRoll()
end

clickDetector.MouseClick:connect(onMouseClick)


--local clickDetector = game.Workspace.Game.ClickDetector

--function onMouseClick()
--	print("You clicked me!")
--end

--clickDetector.MouseClick:connect(onMouseClick)


-- loops

local text = "I love Roblox"

for i=1,10 do print(text) end

--


--for i=1,20 do Instance.new("Part", game.Workspace)
		
--	game.Workspace.Part.Anchored = true
--	game.Workspace.Part.Position = Vector3.new(randPos,randPos,randPos)
--	print('part',i)
--end

--function makePart()
--	local randomPart = Instance.new("Part")
--	randomPart.Anchored = true
--	randomPart.Position = Vector3.new(randPos,randPos, randPos)
--	randomPart.Parent = game.Workspace
--	return randomPart
--end


--for i=1, 20 do makePart()
--end

--local randomPart = Instance.new("Part",game.Workspace)
--randomPart.Anchored = true
--randomPart.Position = Vector3(randPos,randPos, randPos)

--local i=0
--while i<100 do
--	print('part', i)
--	local randomPart = Instance.new("Part")
--	randomPart.Anchored = true
--	randomPart.Position = Vector3.new(randPos,randPos, randPos)
--	randomPart.Parent = game.Workspace
--	i=i+1
--end

	

function generatePart()
	local randomPart = Instance.new("Part")
	local newRandPos = math.random(-10,10)
	randomPart.Anchored = false
	randomPart.Position = Vector3.new(newRandPos,newRandPos, newRandPos)
	randomPart.Parent = game.Workspace
end

generatePart()

for i=0, 100 do generatePart()
	wait(0.5)
	print('part',i)
end
	
