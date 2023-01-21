class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :image do |attachable|
          attachable.variant :thumb, resize_to_limit: [100, 50]
         end
         
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
  end

  def company
    "test company"
  end
end
