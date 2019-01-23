require 'rails_helper'

RSpec.describe User, type: :model do
    it "should have valid fname, email and password" do
      user = User.new({fname: "Scoop", email: "scoop@gmail.com"})
   end


end
