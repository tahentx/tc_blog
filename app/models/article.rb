class Article < ApplicationRecord
	before_create :create_uuid
	has_many  :comments, dependent: :destroy
	validates :title, presence: true,
	                    length: { minimum: 5 }
	  private                    
	  def create_uuid
	    begin
	      self.uuid = SecureRandom.uuid
	    end while self.class.exists?(:uuid => uuid)
	  end
end
