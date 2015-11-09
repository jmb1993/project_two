class List < ActiveRecord::Base
  belongs_to :user
  attr_reader :title, :entry1, :entry2, :entry3
  validates :title, :entry1, :entry2, :entry3, presence: true, length: {minimum: 6}
end
