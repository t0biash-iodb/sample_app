Factory.define :user do |user|
  user.name                  "Tomasz Płonka"
  user.email                 "t0biash-iodb@wp.pl"
  user.password              "123abc---"
  user.password_confirmation "123abc---"
end

Factory.sequence :email do |n|
  "person-#{n}@wp.pl"
end

Factory.sequence :name do |n|
  "Person #{n}"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end