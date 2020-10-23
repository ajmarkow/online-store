require "rails_helper"

describe Review do
  it { should have_one(:product) }
  it { should validate_presence_of(:rating) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:content_body) }
  it { should allow_value(1,2,3,4,5).for(:rating) }
end
