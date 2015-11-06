class TablePageController < ApplicationController
  def index
    rows = params[:number_of_rows] ? params[:number_of_rows][:rows].to_i : 2
    @number_of_rows = NumberOfRows.new(rows: rows)

    # @numbers = []
    # rows.times do
    #   @numbers.push NumberTable.new(col1: rand100, col2: rand100,
    #                                 col3: rand100, col4: rand100)
    # end
  end

  private

  def rand100
    rand(100)
  end
end
