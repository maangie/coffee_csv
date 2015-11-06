require 'rails_helper'

RSpec.describe 'table_page/index.html.erb', type: :view do
  before(:each) do
    assign :number_of_rows, FactoryGirl.build(:number_of_rows)
  end

  it 'render' do
    render
    assert_select 'label', text: /Col1/, count: 2
    assert_select 'label', text: /Col2/, count: 2
    assert_select 'label', text: /Col3/, count: 2
    assert_select 'label', text: /Col4/, count: 2
  end
end
