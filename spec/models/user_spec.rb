require "rails_helper"

describe ("valid_password?") do
  it("does this") do
    testuser = User.create(email: "test@test.com", password: "test", password_confirmation: "test")
    expect(testuser.valid_password?("test")).to be_truthy
  end
end
