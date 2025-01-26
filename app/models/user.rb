class User < ApplicationRecord
  # enum role: { general: 0, admin: 1 }
  enum :role, { general: 0, admin: 1 }

  validates :role, presence: true, inclusion: { in: roles.keys }
end
