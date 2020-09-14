require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'associations' do
    it { should belong_to(:project) }
    it { should define_enum_for(:status).with_values([ :todo, :in_progress, :ready_for_qa, :completed ]) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:status) }
  end
end
