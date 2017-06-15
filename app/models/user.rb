class User < ApplicationRecord
	has_secure_password
    validates(:password, presence:true, allow_nil: true)
    validates(:name, presence:true)
    validates(:email, presence:true)
end
