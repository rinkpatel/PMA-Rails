require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tasks) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end
end
