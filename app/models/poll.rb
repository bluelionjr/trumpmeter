class Poll < ApplicationRecord
  belongs_to :user

  enum vote: [:approve, :disapprove, :novote]

  before_save { self.vote ||= :novote }

end
