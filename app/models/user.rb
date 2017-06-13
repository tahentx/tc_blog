class User < ApplicationRecord
	# has_many :articles
	
	protected

	def self.create_user(auth_hash)
    User.create(
    username: auth_hash.info.email
    )
  	end

end
 