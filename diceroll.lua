-- Seed the random number generation
math.randomseed(os.time())

-- Define a function to roll a die with the user-defined number of faces
function rollDice(faces)
    return math.random(1, faces)
end

-- Define a function to split the user input
function splitInput(input, delimiter)
    local output = {}
    for match in (input..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(output, match)
    end
    return output
end

-- MAIN

-- Take the dice input
local input = arg[1] 
-- Handle incorrect inputs
if not input then
    print("Please input a dice roll as <NdS>.")
    os.exit(1)
end

-- Take the optional roll check input
local check = tonumber(arg[2])

-- Split the input string into the number of dice and number of faces
local die = splitInput(input, "d")
-- Handle incorrect input formatting
if #die ~= 2 then
    print("Please input a dice roll as <NdS>.")
    os.exit(1)
end

-- Set the number of dice and number of faces
local num = tonumber(die[1])
local faces = tonumber(die[2])

-- Validate the numbers
if not num or not faces then
    print("The number of dice or faces is invalid.")
    os.exit(1)
end

-- Roll the dice
local totalRoll = 0
print("Rolls:")
-- Roll the total number of dice
for i = 1, num do
    local roll = rollDice(faces)
    print(roll)
    totalRoll = totalRoll + roll
end

-- Output the final value
print("Total: ", totalRoll)

-- Evaluate roll check
if check then
    if totalRoll >= check then
        print("Successful Roll!")
    else
        print("Failed Roll!")
    end
end