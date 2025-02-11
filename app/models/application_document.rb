# frozen_string_literal: true

class ApplicationDocument
  class InvalidCollection < StandardError; end

  def self.inherited(subclass)
    super
    subclass.include(Mongoid::Document)
  end

  def self.collection_name
    raise ApplicationDocument::InvalidCollection, "ApplicationDocument should not be a collection!"
  end
end
