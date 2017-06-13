class Comment < ApplicationRecord
  belongs_to :article, dependent: :destroy
  before_create :create_uuid

  private
  def create_uuid
    begin
      self.uuid = SecureRandom.uuid
    end while self.class.exists?(:uuid => uuid)
  end
end
