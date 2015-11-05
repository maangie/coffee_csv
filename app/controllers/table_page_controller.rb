class TablePageController < ApplicationController
  def index
    @number_of_rows = NumberOfRows.new(rows: 2)

    @numbers = [
      NumberTable.new(col1: 2, col2: 1, col3: 4, col4: 3),
      NumberTable.new(col1: 1, col2: 2, col3: 3, col4: 4)
    ]
  end
end
