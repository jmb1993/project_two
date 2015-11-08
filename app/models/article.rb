class Article < ActiveRecord::Base
  belongs_to :user
  has_many :list
end
