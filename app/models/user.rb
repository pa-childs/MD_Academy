# frozen_string_literal: true

# Defines User model
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :lockable, :registerable, :recoverable,
         :rememberable, :validatable

  validates :first_name,  presence: true
  validates :last_name,  presence: true

end
