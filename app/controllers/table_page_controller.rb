class TablePageController < ApplicationController
  def index
    @numbers = [
      NumberTable.new(col1: 2, col2: 1, col3: 4, col4: 3),
      NumberTable.new(col1: 1, col2: 2, col3: 3, col4: 4)
    ]
  end
end
