class User < ApplicationRecord
	before_create :create_uuid
	
	protected

	def self.create_user(auth_hash)
    User.create(
    username: auth_hash.info.email
    )
  	end

  	private

	def create_uuid
	    begin
	      self.uuid = SecureRandom.uuid
	    end while self.class.exists?(:uuid => uuid)
    end

end
 