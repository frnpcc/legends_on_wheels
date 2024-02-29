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
  bio: "Queen Elizabeth II, born on April 21, 1926, ascended to the throne in 1952, becoming the longest-reigning monarch in British history. Her reign has witnessed remarkable socio-political changes, including the decolonization of Africa and the Caribbean, the transition of the British Empire into the Commonwealth of Nations, and numerous technological advancements. Elizabeth's leadership and dedication to her duties have made her a symbol of stability and continuity in the modern era. Her reign has also been marked by a modernization of the monarchy and its role in public and charitable service.",
  era: '20th-21st century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044208/DALL_E_2024-02-26_20.42.38_-_Create_a_3D-style_rendered_illustration_of_an_elderly_woman_with_a_warm_smile_wearing_a_light_blue_dress_with_a_floral_pattern_a_pearl_necklace_and-Photoroom.png-Photoroom_aeujr1.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 100_000
)

lincoln = HistoricalFigure.create!(
  name: 'Abraham Lincoln',
  bio: "Abraham Lincoln, the 16th President of the United States (1861-1865), is celebrated for leading the country through its Civil War, preserving the Union, and abolishing slavery through the issuance of the Emancipation Proclamation in 1863. His leadership during one of America's most tumultuous periods is noted for his commitment to principles of liberty and equality. Lincoln's eloquence, embodied in speeches such as the Gettysburg Address, and his assassination in 1865 have cemented his legacy as a symbol of American ideals.",
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044279/DALL_E_2024-02-26_20.20.03_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_a_generic_figure_reminiscent_of_Abraham_-Photoroom.png-Photoroom_l3qwyl.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 50_000
)

cleo = HistoricalFigure.create!(
  name: 'Cleopatra',
  bio: "Cleopatra VII Philopator (69-30 BC), the last active ruler of the Ptolemaic Kingdom of Egypt, was known for her intelligence, political acumen, and for being a lover of Julius Caesar and later companion to Mark Antony. Cleopatra's reign was marked by efforts to defend Egypt from the expanding Roman Empire. Her life and reign have been immortalized in various works of art and literature, reflecting her complex legacy as both a powerful leader and a woman of great allure.",
  era: '1st century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044193/DALL_E_2024-02-26_20.28.10_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_a_generic_figure_reminiscent_of_Cleopatr-Photoroom.png-Photoroom_d7zgtq.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 80_000
)

HistoricalFigure.create!(
  name: 'Napoleon',
  bio: "Napoleon Bonaparte, a Corsican-born military and political leader, rose to prominence during the French Revolution and led several successful campaigns during the Revolutionary Wars. As Emperor of the French from 1804 to 1815, he implemented a wide array of liberal reforms across Europe, including the Napoleonic Code, which has influenced legal systems worldwide. Despite his ultimate defeat, Napoleon is remembered for his strategic brilliance, his role in spreading the principles of the French Revolution, and his impact on the structure of modern states.",
  era: '18th-19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044269/DALL_E_2024-02-26_20.14.17_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_Napoleon_Bonaparte._The_character_should-Photoroom.png-Photoroom_dj4vgv.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 30_000
)

marie = HistoricalFigure.create!(
  name: 'Marie Curie',
  bio: "Marie Curie, born Maria Sklodowska in Poland in 1867, was a pioneering physicist and chemist who became the first woman to win a Nobel Prize and the only person to win in two different sciences (Physics in 1903, for her work on radioactivity, and Chemistry in 1911, for the discovery of radium and polonium). Her work laid the foundation for the development of X-rays in surgery and has had lasting impacts on the fields of physics and chemistry. Curie's dedication to science, despite the personal health risks she faced working with radioactive materials, marks her as one of the most influential scientists in history.",
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044220/DALL_E_2024-02-26_20.11.58_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_Marie_Curie_set_within_the_playful_and_histori-Photoroom.png-Photoroom_brdfpj.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 15_000
)

HistoricalFigure.create!(
  name: 'Albert Einstein',
  bio: "Albert Einstein (1879-1955) was a theoretical physicist renowned for developing the theory of relativity, one of the two pillars of modern physics alongside quantum mechanics. His equation E=mc², which articulates the relationship between energy and mass, has become one of the most famous equations in the world. Einstein's work had profound implications for the study of the universe, leading to significant advancements in the fields of cosmology, atomic energy, and quantum mechanics. Beyond his scientific genius, Einstein was also a notable advocate for peace and civil rights throughout his life.",
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044214/DALL_E_2024-02-26_20.08.04_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_the_playful_and_historically_themed_cartoon-st-Photoroom.png-Photoroom_gcrvpn.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 65_000
)

puts "#{HistoricalFigure.count} Historical Figures created 🏆"

Race.create!(
  user_id: emma.id,
  historical_figure_id: queen.id,
  result: 'win',
  location: "Berlin, Germany",
  location_enum: 0
)

Race.create!(
  user_id: emma.id,
  historical_figure_id: lincoln.id,
  result: 'win',
  location: "Berlin, Germany",
  location_enum: 2
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: cleo.id,
  result: 'loss',
  location: "Basel, Switzerland",
  location_enum: 1
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: marie.id,
  result: 'loss',
  location: "Basel, Switzerland",
  location_enum: 0
)

puts "#{Race.count} Races created 🏎️💨 🏁 🏁 🏁"
sleep 1

puts "Done ✅"
