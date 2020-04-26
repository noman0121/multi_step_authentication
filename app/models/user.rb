class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum gender: [:unknown, :male, :female]


  def self.gender_for_select
	 genders.keys.map{ |x| [x.humanize, x] }
  end
end
