FactoryBot.define do
  factory :image do
    avatar { File.new(Rails.root.join('app', 'assets', 'images', 'rails.png')) }
    user { User.first || association(:user) }
  end
end
