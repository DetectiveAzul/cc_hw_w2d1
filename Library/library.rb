class Library
  attr_reader :books
  def initialize(books)
    @books = books
  end

  def get_book_information_by_title(book_title)
    for book in @books
      return book if book[:title] == book_title
    end
    return nil
  end

  def get_book_rental_details_by_title(book_title)
    book = get_book_information_by_title(book_title)
    return book[:rental_details] if book != nil
  end

  def add_book(new_book)
    @books << {
      title: new_book,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

  def rent_book(book_title, student_name, due_date)
    rental_details = get_book_rental_details_by_title(book_title)
    rental_details[:student_name] = student_name
    rental_details[:date] = due_date
  end
end
