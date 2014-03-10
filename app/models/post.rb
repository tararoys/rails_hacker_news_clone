class Post < ActiveRecord::Base
   belongs_to :author, class_name: "User", foreign_key: "author"
   has_many :comments
end
