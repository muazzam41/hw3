class Entry < ApplicationRecord
  # talks to the "posts" table
  belongs_to :place

  attribute :posted_on, :date
end
