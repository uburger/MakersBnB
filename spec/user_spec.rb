require 'user'

describe '.password_match' do
  it 'alerts if passwords do not match' do
    user = User.new('example@example.com', 'password', 'not_password')
    user.password_matches?

    expect(user.password_matches?).to eq 'false'
  end
end