class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :secure_validatable,
         :password_archivable,
         :confirmable

  # Keeping this for testing only
  before_create :skip_confirmation_notification!

  validates :email, uniqueness: true
end
