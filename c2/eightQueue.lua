local boardSize = 8
local num = 0

-- n is the nth queue to be placed on the board.
local function canPlace(checkerboard, n, col)
    for i = 1, n - 1 do
        if (checkerboard[i] == col) or (checkerboard[i] - i == col - n) or (checkerboard[i] + i == col + n) then
            return false
        end
    end
    return true
end

local function printBoard(checkerboard)
    for i = 1, boardSize do
        for j = 1, boardSize do
            if checkerboard[i] == j then
                io.write("X ")
            else
                io.write("- ")
            end
        end
        print()
    end
    print()
end

local function addQueue(checkerboard, n)
    if n > boardSize then
        printBoard(checkerboard)
        num = num + 1
    end

    for i = 1, boardSize do
        if canPlace(checkerboard, n, i) then
            checkerboard[n] = i
            addQueue(checkerboard, n + 1)
        end
    end
end

addQueue({}, 1)
print(num)
