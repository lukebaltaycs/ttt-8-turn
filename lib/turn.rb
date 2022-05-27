def valid_move? (board, index)
    if index >= 0 && index <= 8 && position_taken?(board, index) == false
        return true
    else
        false
    end
end

def position_taken? (board, index)
    if board[index] == nil || board[index] == " " || board[index] == ""
        false
    else
        true
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
  return array
end

def turn(board)
    loop do
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
        if valid_move?(board, index) == true
            move(board, index)
            display_board(board)
            break
        end
    end
end