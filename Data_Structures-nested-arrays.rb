# Solution for Challenge: P3: Data Structures - Nested Arrays . Started 2013-08-11T22:49:59+00:00
 
 
roster = [["Number", "Name", "Position", "Points per Game"],
          ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
          ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
          ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ], 
          ["7", "Sally Talls", "Power Forward", [18, 29, 26, 31, 19] ], 
          ["22", "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0] ]]
 
def create_player_hash(key_value_pairs)  
  players = []
  key_value_pairs.each_slice(4) do |player|
    players << Hash[player]
  end
 
  players
end
 
def convert_roster_format(roster)
  keys_values = []
  attributes = roster.delete_at(0)
  roster.each do |row|
    row.each_with_index do |column, index|
       keys_values <<[attributes[index], column] 
    end
  end
 
  create_player_hash keys_values
end
 
 
formatted_roster = convert_roster_format(roster)
 
p formatted_roster[2]
 
p formatted_roster[0]["Name"] == "Joe Schmo" # => true
 
 
 
def generate_board_ratio
  which_board = rand(2)
  five_xs = %w(X X X X X O O O O)
  five_os = %w(O O O O O X X X X)
  which_board == 0 ? five_os.shuffle : five_xs.shuffle
end
 
 
 
def create_tic_tac_toe_board
  Array.new(3) { generate_board_ratio.shift(3) }
end
 
# p create_tic_tac_toe_board.flatten.size == 9  
 
# create_tic_tac_toe_board # => [
#                                 ["O", "X", "O"], 
#                                 ["O", "O", "O"], 
#                                 ["X", "X", "O"]
#
#                               ]
 
# create_tic_tac_toe_board # => [
#                                 ["X", "X", "X"], 
#                                 ["O", "O", "X"], 
#                                 ["X", "X", "O"]
#                               ]