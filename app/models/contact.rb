class Contact < ApplicationRecord
  before_save {self.email.downcase!}
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 100},
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :subject, presence: true
  validates :message, presence: true
end
