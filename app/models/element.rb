class Element
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_and_belongs_to_many :parents, class_name: 'Group', inverse_of: :child_elements
end
