class Task < ApplicationRecord
  enum status: { todo: 0, done: 1 }
  validates :name, presence: true
end
