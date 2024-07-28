# frozen_string_literal: true

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :age, type: Integer
end
