require 'rails_helper'

RSpec.describe Todo, type: :model do
  #ensure association
  it { should have_many(:items).dependent(:destroy) }
  #ensure presence validation
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
