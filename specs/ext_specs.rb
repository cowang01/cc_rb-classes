# Extension:
#
# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
#
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.



require('minitest/autorun')
require('minitest/rg')
require_relative('../ext')


class Test_Library_Books < MiniTest::Test

  def setup
    #
    #   @book_test1 = Library_Books.new({
    #     title: "The Hour Glass",
    #     rental_details: {
    #         student_name: "Martin",
    #         date: "01/05/2019"}
    #     })
    #
    #   @book_test2 = Library_Books.new({
    #     title: "Lost in Code",
    #     rental_details: {
    #         student_name: "Graham",
    #         date: "13/05/2019"}
    #     })
    #
    #   @library_test = [@book_test1, @book_test2]
    #
    # end


    @library = Library.new("Test_Library", [
    @book1 = Library::Book.new("The Hour Glass", "Martin", "01/05/2019")
    @book2 = Library::Book.new("Lost in Code", "Graham", "13/05/2019")
  ])


  end


  def test_all_book_details
    book = @book1.all_book_details("The Hour Glass")
    assert_equal("Book Title: The Hour Glass, Borrowed by Martin on the 01/05/2019", book)
  end


  # def test_all_book_details
  #   book = @book_test1.all_book_details("The Hour Glass")
  #   assert_equal("Book Title: The Hour Glass, Borrowed by Martin on the 01/05/2019", book)
  # end


  def test_get_rental_date
    book = @book2.date
    assert_equal("13/05/2019", book)
  end

  # def test_get_rental_date
  #   book = @book_test2.due_date
  #   assert_equal("13/05/2019", book)
  # end

  def test_add_new_book
    @library.add_new_book("Empty Pages")
    assert_equal(3, @library_test.length())
  end


  # def test_add_new_book
  #   new_book = @library_test.add_new_book("Empty Pages")
  #   @library_test.push(new_book)
  #   assert_equal(3, @library_test.length())
  # end





  # def test_update_retal_details
  #   @library_test.update_rental_details("Lost in Code", "David", "30/05/2019")
  #   assert_equal("Lost in Code", @book_test2[:title])
  #   assert_equal("David", @book_test2[:rental_details][:student_name])
  #   assert_equal('30/05/2019', @book_test2[:rental_details][:date])
  # end


end
