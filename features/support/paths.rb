module Paths
  include Spinach::DSL

  When 'I am signing in' do
    visit new_user_session_path
  end
end