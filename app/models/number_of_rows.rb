class NumberOfRows
  include ActiveAttr::Model

  attribute :rows, type: Integer

  validates :rows, numericality: { only_integer: true, greater_than: 0 }
end
