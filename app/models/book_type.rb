class BookType <	ActiveRecord::Base
  validates_presence_of :types_name
  has_many	:orders
end
