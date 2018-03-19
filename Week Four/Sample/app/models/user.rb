class User < ApplicationRecord
	has_many :registers , dependent: :destroy
	has_secure_password
end
