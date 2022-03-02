puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
15.times do
random_name=Array('A'..'Z').sample
random_value=rand(1..20)
c_id=rand(1..Company.all.length)
d_id=rand(1..Dev.all.length)

Freebie.create(item_name: random_name, value: random_value, company_id: c_id, dev_id: d_id )
end
puts "Seeding done!"
