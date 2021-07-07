class User < ApplicationRecord
	has_many :aritcles
	validates :password, presence: true, length:{ minimum:8 } 
	validates :email, presence: true
end
