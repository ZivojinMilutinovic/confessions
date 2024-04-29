# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# 30.times do
#   confession = Confession.new
#   confession.title = Faker::Movie.title
#   confession.body = Faker::Movie.quote
#   confession.save!
# end

  # confession = Confession.new
  # confession.title = Faker::Movie.title
  # confession.body = Faker::Movie.quote
  # confession.save!
  # 1000.times do
  #   comment = Comment.new
  #   comment.confession_id = confession.id
  #   comment.body = Faker::Movie.quote
  #   comment.save!
  # end

  # User.create!({:email => "halkatran@gmail.com", :role => 1, :password => "Kaladontar123!", :password_confirmation => "Kaladontar123!" })

  # CAtegory creation
 categories = [
  "Relationships",
  "Family",
  "Work",
  "School/education",
  "Secrets",
  "Regrets",
  "Love",
  "Friendship",
  "Health",
  "Finances",
  "Addiction",
  "Mental Health",
  "Religion/Spirituality",
  "Travel",
  "Parenting",
  "Crimes",
  "Dreams",
  "Ambitions",
  "Guilt",
  "Forgiveness"
]

if Category.count == 0
  categories.each do |c|
    cat = Category.new
    cat.name = c
    cat.save!
  end
end
