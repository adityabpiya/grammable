FactoryBot.define do
  factory :user do
    sequence :email do |n|
    	"ayu@gmail.com" 
    end
    password { "qwerty" }
    password_confirmation { "qwerty" }
  end

  factory :gram do
  	message { "hello" }
  	association :user
  end
end