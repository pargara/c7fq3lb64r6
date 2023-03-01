class Expense < ActiveRecord::Base
  belongs_to :category
  scope :by_category, -> (category_id) { where(category_id: category_id) if category_id.present? }
  belongs_to :user
end
