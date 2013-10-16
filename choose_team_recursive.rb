def choose_team(n,k)
  return n if k == 1 || n == 0
  choose_team(n-1,k-1) + choose_team(n-1, k)
end
 
 
choose_team 6, 2  # => 15
choose_team 6, 3  # => 20
choose_team 24, 4 # => 10626