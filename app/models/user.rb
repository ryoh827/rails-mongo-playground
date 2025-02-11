# frozen_string_literal: true

class User < ApplicationDocument
  include Mongoid::Timestamps

  field :name, type: String
  field :age, type: Integer
end
