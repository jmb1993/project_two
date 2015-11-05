class List < ActiveRecord::Base
  belongs_to :user
  validates :entry1, :entry2, :entry3, presence: true, length: {minimum: 6}
end
