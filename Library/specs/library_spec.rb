require 'minitest/autorun'
require_relative '../library'

class LibraryTests < MiniTest::Test
  def setup
    @tollcross = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "the_hobbit",
          rental_details: {
              student_name: "Anthony",
              date: "30/01/17"
            }
          },
          {
            title: "harry_potter",
            rental_details: {
                student_name: "Pax Carlton",
                date: "28/02/18"
              }
            },
            {
              title: "learn_ruby",
              rental_details: {
                  student_name: "Pax Carlton",
                  date: "28/03/18"
                }
              },
      ])
  end

  def test_books_getter
    result =  @tollcross.books()
    expected = {
      title: "learn_ruby",
      rental_details: {
          student_name: "Pax Carlton",
          date: "28/03/18"
        }
      }
    assert_equal(expected,result.last)
  end

  def test_get_book_information_by_title()
    result = @tollcross.get_book_information_by_title("lord_of_the_rings")
    expected = {
      title: "lord_of_the_rings",
      rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    assert_equal(expected,result)
  end

  def test_get_book_information_by_title__not_found()
    result = @tollcross.get_book_information_by_title("learn_java")
    assert_nil(result)
  end

  def test_get_book_rental_details_by_title()
    result = @tollcross.get_book_rental_details_by_title("lord_of_the_rings")
    expected = {
      student_name: "Jeff",
      date: "01/12/16"
    }
    assert_equal(expected,result)
  end

  def test_add_book()
    @tollcross.add_book("learn_java")
    expected = {
      title: "learn_java",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    result = @tollcross.get_book_information_by_title("learn_java")
    assert_equal(expected,result)
  end

  def test_rent_book()
    @tollcross.rent_book("harry_potter","Jaime Lopez","12/03/2018")
    expected = {
      student_name: "Jaime Lopez",
      date: "12/03/2018"
    }
    result = @tollcross.get_book_rental_details_by_title("harry_potter")
    assert_equal(expected,result)
  end
end
