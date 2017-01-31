class Group < ActiveRecord::Base
  validates :title, presence: true #限制title 的内容不能为空
  #validates :description, presence: true #限制description 的内容不能为空 使用simple_form 这个gem后，直接在这里设置需要限制的内容，然后在修改控制，在html页面不用修改的情况下就可以提示错误（不知道这个观察对不对）
  belongs_to :user
  has_many :posts
  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
end
