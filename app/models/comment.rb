class Comment < ApplicationRecord
  acts_as_votable
  belongs_to :user
  belongs_to :sub_discussion
end
