class Contact < ApplicationRecord
has_many :contact_groups
has_many :groups, through: :contact_groups

validates :first_name, presence: true
validates :last_name, presence: true
validates :email, presence: true
validates :email, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "There's a 99.99% chance that that's not an email"}

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

end