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
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044208/DALL_E_2024-02-26_20.42.38_-_Create_a_3D-style_rendered_illustration_of_an_elderly_woman_with_a_warm_smile_wearing_a_light_blue_dress_with_a_floral_pattern_a_pearl_necklace_and-Photoroom.png-Photoroom_aeujr1.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 100_000
)

lincoln = HistoricalFigure.create!(
  name: 'Abraham Lincoln',
  bio: '16th President of the United States, led the nation through the Civil War.',
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044279/DALL_E_2024-02-26_20.20.03_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_a_generic_figure_reminiscent_of_Abraham_-Photoroom.png-Photoroom_l3qwyl.jpg?_s=public-apps',
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
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044269/DALL_E_2024-02-26_20.14.17_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_Napoleon_Bonaparte._The_character_should-Photoroom.png-Photoroom_dj4vgv.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 30_000
)

marie = HistoricalFigure.create!(
  name: 'Marie Curie',
  bio: 'Pioneering physicist and chemist who conducted groundbreaking research on radioactivity.',
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044220/DALL_E_2024-02-26_20.11.58_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_Marie_Curie_set_within_the_playful_and_histori-Photoroom.png-Photoroom_brdfpj.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 15_000
)

HistoricalFigure.create!(
  name: 'Albert Einstein',
  bio: 'Theoretical physicist, developed the theory of relativity, one of the two pillars of modern physics.',
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044214/DALL_E_2024-02-26_20.08.04_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_the_playful_and_historically_themed_cartoon-st-Photoroom.png-Photoroom_gcrvpn.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 65_000
)

puts "#{HistoricalFigure.count} Historical Figures created 🏆"

Race.create!(user_id: emma.id, historical_figure_id: queen.id, result: 'win')
Race.create!(user_id: emma.id, historical_figure_id: lincoln.id, result: 'win')
Race.create!(user_id: frederic.id, historical_figure_id: cleo.id, result: 'loss')
Race.create!(user_id: frederic.id, historical_figure_id: marie.id, result: 'loss')

puts "#{Race.count} Races created 🏎️💨 🏁 🏁 🏁"
sleep 1

puts "Done ✅"
