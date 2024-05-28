namespace :group_element do
  task exec: :environment do
    Group.destroy_all
    Element.destroy_all

    parent_group = Group.new(name: 'Parent Group')
    child_group = Group.create!(name: 'Child Group')
    element = Element.create!(name: 'Element')

    parent_group.child_groups << child_group
    parent_group.child_elements << element

    parent_group.save!
  end
end
