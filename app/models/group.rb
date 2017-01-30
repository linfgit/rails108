class Group < ActiveRecord::Base
  validates :title, presence: true #限制title 的内容不能为空
end
