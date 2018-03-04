class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  validates :title, presence: true

  #has_ancestry

end
