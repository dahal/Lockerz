FactoryGirl.define do
  factory :locker do
    name %w(S M L).sample + (1..1000).to_a.sample.to_s
    size %w(Small Medium Large).sample
    available true
  end
end