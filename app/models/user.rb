class User < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, uniqueness: {
    messsage: "nom déjà pris"
  }

  validates :name, format: { with: /\A[a-zA-Z0-9]+\Z/ }
end
