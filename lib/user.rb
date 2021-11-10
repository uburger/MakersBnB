class User
  attr_reader :password, :confirmed_pw

  def initialize(email, password, confirmed_pw)
    @email = email
    @password = password
    @confirmed_pw = confirmed_pw
  end

  # The initial logic for password confirmation error has been started 
  # but not implemented
  def password_matches?
    if @password != @confirmed_pw then
      'false'
    else
      'true'
    end
  end
end