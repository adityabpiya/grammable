FactoryBot.define do
  factory :comment do
    
  end

  factory :user do
    sequence :email do |n|
    	"dummyemail#{n}@gmail.com" 
    end
    password { "qwerty" }
    password_confirmation { "qwerty" }
  end

  factory :gram do
  	message { "hello" }
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }

  	association :user
  end
end