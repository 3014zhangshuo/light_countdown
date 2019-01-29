class User < ApplicationRecord
  has_many :identities

  class << self
    def find_with_omniauth(auth)
      user = self.find_or_create_by(name: auth['name'])
      user.identities.find_with_omniauth(auth)
      user
    end
  end
end
