-- Seed the random number generation
math.randomseed(os.time())

-- Define a function to roll a dice with the user-defined number of faces
function rollDice(faces)
    return math.random(1, faces)
end

