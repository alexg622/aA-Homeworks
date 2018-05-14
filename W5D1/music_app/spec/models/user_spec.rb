require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user,
      email: "jonathan@fakesite.com",
      password: "good_password")
  end
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}
  it do
    should validate_length_of(:password).is_at_least(6).on(:create)
  end
  it "tests for password" do
    expect(BCrypt::Password.new(user.password_digest).is_password?("good_password")).to eq(true)
  end
  it "changes session token" do
    token = user.session_token
    expect(user.reset_session_token!).not_to eq(token)
  end
  it "finds by credentials" do
    expect(User.find_by_credentials("jonathan@fakesite.com", "good_ord")).to eq(nil)
  end
end
