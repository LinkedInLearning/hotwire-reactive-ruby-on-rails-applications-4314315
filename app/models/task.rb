class Task < ApplicationRecord
  enum status: { todo: 0, done: 1 }
  validates :name, presence: true

  scope :todo, -> { where(status: :todo).order(:updated_at) }
  scope :done, -> { where(status: :done).order(updated_at: :desc) }
end
