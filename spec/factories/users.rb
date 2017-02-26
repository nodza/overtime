FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    first_name 'Jaimie'
    last_name 'Lannister'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Tywin'
    last_name 'Lannister'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end