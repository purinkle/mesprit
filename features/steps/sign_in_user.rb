class SignInUser < Spinach::FeatureSteps
  include Actors
  include Paths

  Then 'the sign in page is shown' do
    should have_selector 'title', text: 'Sign In'
  end

  And 'there is an email field' do
    should have_selector '#user_email'
  end

  And 'there is a password field' do
    should have_selector '#user_password'
  end

  And 'there is a "Sign In" button' do
    should have_button 'Sign In'
  end
end
