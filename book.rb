require './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_rentals(person, date)
    Rental.new(date, person, self)
  end
end
