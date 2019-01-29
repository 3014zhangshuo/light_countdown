class Identity < ApplicationRecord
  belongs_to :user, optional: true

  class << self
    def find_with_omniauth(auth)
      find_or_create_by(uid: auth['uid'], provider: auth['provider'])
    rescue ActiveRecord::RecordNotUnique
      retry
    end
  end
end
