require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:projects) }
  end

  describe 'name' do
    it 'should return first name and last name of user' do
      user = User.new(first_name: "John", last_name: "cena")
      expect(user.name).to eq("John cena")
    end
  end
end
