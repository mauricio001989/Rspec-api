class Country < ApplicationRecord
  # == Attributes =================================================================================

  # == Constants ==================================================================================

  # == Class Methods ==============================================================================

  # == Extensions =================================================================================

  # == Instance Methods ===========================================================================

  self.primary_key = 'code'
  self.implicit_order_column = 'created_at'

  # == Relationships ==============================================================================

  has_many :users

  # == Scopes =====================================================================================

  # == Validations ================================================================================

  validates :name, :code, presence: true, uniqueness: { case_sensitive: false }

  # == Raise errors  ==============================================================================
end
