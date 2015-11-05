FactoryGirl.define do
  factory :number_table do
    col1 { rand(100) }
    col2 { rand(100) }
    col3 { rand(100) }
    col4 { rand(100) }
  end
end
