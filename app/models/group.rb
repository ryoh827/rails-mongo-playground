class Group
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_and_belongs_to_many :child_groups, class_name: 'Group', inverse_of: :parents
  has_and_belongs_to_many :child_elements, class_name: 'Element', inverse_of: :parents
  has_and_belongs_to_many :parents, class_name: 'Group', inverse_of: :child_groups

  def children
    child_groups + child_elements
  end
end
