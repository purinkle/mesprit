class SignInUser < Spinach::FeatureSteps
  include Actors
  include Paths
  include Users

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

  And 'there is an invalid details flash' do
    should have_selector 'div', text: 'Invalid email or password.'
  end
end
