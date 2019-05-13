
#Graham Cowan CC wk2d1 - library class


# class Library_Books
#
#   attr_accessor :title, :student, :due_date
#
#   def initialize(book)
#     @title = book[:title]
#     @student = book[:rental_details][:student_name]
#     @due_date = book[:rental_details][:date]
#   end
#
#   def all_book_details(title)
#     return "Book Title: #{@title}, Borrowed by #{@student} on the #{@due_date}"
#   end
#
#   def add_new_book(title)
#     return {
#       title: title,
#       rental_details: {
#         student_name: nil,
#         date: nil}
#       }
#     end
#
#
#   end


class Library

  attr_accessor :library, :book

  def initialize(library, book)
    @library = library
    @book = book
  end

  class Book

    attr_accessor :title, :student, :date

    def initialize(title, student, date)
      @title = book[:title]
      @student = book[:rental_details][:student_name]
      @date =  book[:rental_details][:date]
    end

    def all_book_details(title)
        return "Book Title: #{@title}, Borrowed by #{@student} on the #{@due_date}"
    end

    def add_new_book(title)
      return {
        title: title,
        rental_details: {
          student_name: nil,
          date: nil}
        }
      end

    end

  end
