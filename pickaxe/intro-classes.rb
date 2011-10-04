#!/usr/local/bin/ruby -w

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  
  def price=(new_price)
    @price=new_price
  end
  
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  
  def price_in_cents
    Integer(price*100+0.5)
  end
  
  def price_in_cents=(cents)
    @price = cents/100
  end
  
end

b1 = BookInStock.new("isbn1", 3)
puts b1
b2 = BookInStock.new("isbn2", 3.14)
puts b2
b3 = BookInStock.new("isbn3", "3.567")
puts b3

book = BookInStock.new("isbn1", 33.8)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"

book.price = book.price * 0.75
puts "25% discount price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"