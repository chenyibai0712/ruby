class BookType <	ActiveRecord::Base
  validates_presence_of :types_name
  #返回该用户对某文档的访问权限
  def get_authnum_by_document_id(did)
    auth = authorities.find_by_document_id(did)
    auth.nil?? nil : auth.authnum
  end
end
