require 'faker'

50.times do
  url_names = {
    :url => Faker::Internet.url,
    :shortened_url => nil
  }
  Url.new(url_names).save
  puts "seeding urls..."
end