class User < ApplicationRecord
  has_many :todos, dependent: :destroy

  has_secure_password
     validate :verify_unique_name , :verify_unique_email
     validates_presence_of :name
     validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
     validates_length_of :password, minimum: 6
     def verify_unique_name
       if User.exists? name: name
         errors.add :name, "has already been taken"
       end
     end

     def verify_unique_email
       if User.exists? name: email
         errors.add :email, "has already been taken"
       end
     end


end
