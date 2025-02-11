require "test_helper"

class TestDocument < ApplicationDocument; end

class ApplicationDocumentTest < ActiveSupport::TestCase
  test "TestDocument is a collection and ApplicationDocument is not" do
    assert_equal :test_documents, TestDocument.collection_name
    assert_raises(ApplicationDocument::InvalidCollection) { ApplicationDocument.collection_name }
  end
end
