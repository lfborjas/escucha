require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "that the presence of author and title are enforced" do
    book = Book.create
    assert_equal 1, book.errors.size
  end

  test "that the title is normalized" do
    book = Book.create :title => "AZUL...    ", :author => "Dario, Ruben"
    assert_equal "Azul...", book.title
  end
end
