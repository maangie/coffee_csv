require 'rails_helper'

RSpec.describe NumberOfRows, type: :model do
  it { should validate_numericality_of(:rows).is_greater_than 0 }
end
