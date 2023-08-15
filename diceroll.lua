-- Seed the random number generation
math.randomseed(os.time())

-- Define a function to roll a dice with the user-defined number of faces
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