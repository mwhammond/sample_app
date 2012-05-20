FactoryGirl.define do
  factory :user do #by passing this symbol tells factory that the defintion
    # is for the user object
    name "Michael Hartl"
    email "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end