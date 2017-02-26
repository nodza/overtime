FactoryGirl.define do
factory :user do
  first_name 'Jaimie'
  last_name 'Lannister'
  email "user@example.com"
  password "asdfasdf"
  password_confirmation "asdfasdf"
end

factory :admin_user, class: "AdminUser" do
  first_name 'Tywin'
  last_name 'Lannister'
  email "adminuser@example.com"
  password "asdfasdf"
  password_confirmation "asdfasdf"
end
end