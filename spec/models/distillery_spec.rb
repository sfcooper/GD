require 'rails_helper'

RSpec.describe Distillery, type: :model do
    context 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:snippet) }
        it { should validate_presence_of(:description) }
      end

      context 'associations' do
        it { should have_many(:gins) }
      end

end