class User < ApplicationRecord
    validates :password, presence: true
    validates :password_confirmation, presence: true
    validates :email, uniqueness: true, presence: true, email: true
    validates :name, presence: {string: true}, length:{minimum: 2}
end
