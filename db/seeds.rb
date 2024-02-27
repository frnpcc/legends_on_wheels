Race.destroy_all
HistoricalFigure.destroy_all
User.destroy_all
puts "Cleaning database 🧼"
sleep 1

frederic = User.create!(name: "Frederic Marchal", username: "fmarchal03", email: "fmarchal03@test.com", password: "123456")
User.create!(name: "Daniel Felipe Vanegas", username: "dfvanegas1", email: "dfvanegas1@test.com", password: "123456")
User.create!(name: "Franchesca Correa", username: "frnpcc", email: "frnpcc@test.com", password: "123456")
User.create!(name: "Michalis Ioannides", username: "1567ds", email: "1567ds@test.com", password: "123456")
emma = User.create!(name: "Emma A. A. Rünzel", username: "emmvs", email: "emmvs@test.com", password: "123456")
User.create!(name: "Gonzalo Guerra", username: "Gonz44", email: "gonz44@test.com", password: "123456")

puts "#{User.count} Users created 🤦🏻‍♂️ 👱🏼‍♀️ 🤷🏻‍♀️ 👲🏻"

queen = HistoricalFigure.create!(
  name: 'Queen Elizabeth II',
  bio: 'Longest-reigning current monarch, significant figure in modern history.',
  era: '20th-21st century',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/4f0bba88c7ea38a0e172fe010e775251',
  category: 'Political Leader',
  price: 100_000
)

lincoln = HistoricalFigure.create!(
  name: 'Abraham Lincoln',
  bio: '16th President of the United States, led the nation through the Civil War.',
  era: '19th century',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/f6029e16f86f376bd8f4e928124a98a5',
  category: 'Political Leader',
  price: 50_000
)

cleo = HistoricalFigure.create!(
  name: 'Cleopatra',
  bio: 'The last active ruler of the Ptolemaic Kingdom of Egypt.',
  era: '1st century BC',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/1608ff16186f5566fa1d9a6b673000e4',
  category: 'Political Leader',
  price: 80_000
)

HistoricalFigure.create!(
  name: 'Napoleon',
  bio: 'French military and political leader who rose to prominence during the French Revolution.',
  era: '18th-19th century',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/8dea4e020fb2e083a30d0000a91dae24',
  category: 'Military Leader',
  price: 30_000
)

marie = HistoricalFigure.create!(
  name: 'Marie Curie',
  bio: 'Pioneering physicist and chemist who conducted groundbreaking research on radioactivity.',
  era: '19th-20th century',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/dadb18381a9ea59bfaf543a60b23021b',
  category: 'Scientist and Inventor',
  price: 15_000
)

HistoricalFigure.create!(
  name: 'Albert Einstein',
  bio: 'Theoretical physicist, developed the theory of relativity, one of the two pillars of modern physics.',
  era: '19th-20th century',
  image_url: 'https://asset.cloudinary.com/dswjgd3a4/53ef7a5b487b25f229ae4efc2a02d174',
  category: 'Scientist and Inventor',
  price: 65_000
)

puts "#{HistoricalFigure.count} Historical Figures created 🏆"

Race.create!(user_id: emma.id, historical_figure_id: queen.id, result: 'win')
Race.create!(user_id: emma.id, historical_figure_id: lincoln.id, result: 'win')
Race.create!(user_id: frederic.id, historical_figure_id: cleo.id, result: 'loose')
Race.create!(user_id: frederic.id, historical_figure_id: marie.id, result: 'loose')

puts "#{Race.count} Races created 🏎️💨 🏁 🏁 🏁"
sleep 1

puts "Done ✅"
