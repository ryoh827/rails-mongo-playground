class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :unique_array, type: Array

  index({ name: 1 }, { background: true })
  index({ unique_array: 1 }, { partial_filter_expression: { unique_array: { '$type' => 'array' } }, unique: true, background: true })
end
