require 'rails_helper'
require 'active_attr/rspec'

RSpec.describe NumberTable, type: :model do
  it { should have_attribute(:col1).of_type(Integer) }
  it { should have_attribute(:col2).of_type(Integer) }
  it { should have_attribute(:col3).of_type(Integer) }
  it { should have_attribute(:col4).of_type(Integer) }
end
