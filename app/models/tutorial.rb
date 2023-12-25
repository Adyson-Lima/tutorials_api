class Tutorial < ApplicationRecord
  validates :subject, :author, presence: true
end
