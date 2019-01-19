require 'rails_helper'

RSpec.describe Gin, type: :model do
    context 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:snippet) }
      end
      context 'associations' do
        it { should belong_to(:distillery) }
      end
end

