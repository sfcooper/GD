require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:fname) }
    it { should validate_presence_of(:email) }
  end

end
