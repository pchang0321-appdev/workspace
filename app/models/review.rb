class Review < ApplicationRecord
  # Direct associations

  belongs_to :space,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :user_id, :uniqueness => { :scope => [:space_id] }

end
