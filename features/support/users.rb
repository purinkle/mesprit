module Users
  include Spinach::DSL

  When 'I sign in with invalid details' do
    click_button 'Sign In'
  end
end