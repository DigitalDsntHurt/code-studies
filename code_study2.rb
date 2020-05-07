SIZE = 10
items = [" ","M"]
grid = (0..SIZE).map { (0..SIZE).map { items.sample } }

def print_grid(grid)
  print "\n\n\n"
  puts grid.map { |row| row.join(" ") }.join("\n")
end

def surrounding(grid, x, y)
  items = []
  items << grid[x - 1][y] if x > 0
  items << grid[x + 1][y] if x < (SIZE - 1)
  items << grid[x][y - 1] if y > 0
  items << grid[x][y + 1] if y < (SIZE - 1)
  items
end

def next_grid(grid)
  grid.map.with_index{|row, row_num|
    row.map.with_index{|col, col_num|
      sur = surrounding(grid, row_num, col_num)
      on = sur.count("M")
      [2,3].include?(on) ? "M" : " "
    }
  }
end

100.times {
  print_grid(grid)
  grid = next_grid(grid)

  sleep 0.1
}