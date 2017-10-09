# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Article.delete_all
Comment.delete_all

(1..10).each do |user_num|
  user = User.create!(name:Faker::Name.name)
  (1..10).each do |article_num|
    article = user.articles.create!(title: Faker::Lorem.sentence, body:Faker::Lorem.paragraph(10), user_id: 1)
    (1..5).each do |cmt_num|
      article.comments.create!(body: Faker::Lorem.paragraph, user_id: user.id)
    end
  end
end
