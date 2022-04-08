require 'rails_helper'

describe Country do
  context 'when create a ' do
    subject(:country) { build_stubbed(:country) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    it { is_expected.to have_many :users }

    # == Validations ==============================================================================

    it { is_expected.to be_valid }
  end
end

