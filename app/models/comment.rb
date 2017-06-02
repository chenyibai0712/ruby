class Comment < ApplicationRecord
  def self.findall(id)
    if id.nil?
    find_by_sql("select comments.*,books.name from comments left join books on comments.book_id=books.id ")
    else
      find_by_sql("select comments.*,books.name from comments left join books on comments.book_id=books.id where book_id=#{id}")
      end
  end
  def self.findById(id)
    find_by_sql("select comments.*,books.name from comments left join books on comments.book_id=books.id where comments.id=#{id}")
  end
end
