FactoryGirl.define do

  factory :user do
    first_name "Alice"
    last_name "Smith"
    display_name "valid"
    email "alica@email.com"
    about_me "I am Alice"
    password "password"
  end
end
