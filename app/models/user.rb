class User < ApplicationRecord
  validates_presence_of :email

  before_create :assign_api_key

  def assign_api_key
    self.api_key = SecureRandom.base64(10).tr('+/=', 'Agr')
  end
end
