puts "Cleaning database 🧼"
sleep 1

Race.destroy_all
HistoricalFigure.destroy_all
User.destroy_all

frederic = User.create!(name: "Frederic Marchal", username: "fmarchal03", email: "fmarchal03@test.com", password: "123456")
daniel = User.create!(name: "Daniel Felipe Vanegas", username: "dfvanegas1", email: "dfvanegas1@test.com", password: "123456")
franchesca = User.create!(name: "Franchesca Correa", username: "frnpcc", email: "frnpcc@test.com", password: "123456")
michalis = User.create!(name: "Michalis Ioannides", username: "1567ds", email: "1567ds@test.com", password: "123456")
emma = User.create!(name: "Emma A. A. Rünzel", username: "emmvs", email: "emmvs@test.com", password: "123456")
gonzo = User.create!(name: "Gonzalo Guerra", username: "Gonz44", email: "gonz44@test.com", password: "123456")

puts "#{User.count} Users created 🤦🏻‍♂️ 👱🏼‍♀️ 🤷🏻‍♀️ 👲🏻"

queen = HistoricalFigure.create!(
  name: 'Queen Elizabeth II',
  bio: "Queen Elizabeth II, born on April 21, 1926, ascended to the throne in 1952, becoming the longest-reigning monarch in British history. Her reign has witnessed remarkable socio-political changes, including the decolonization of Africa and the Caribbean, the transition of the British Empire into the Commonwealth of Nations, and numerous technological advancements. Elizabeth's leadership and dedication to her duties have made her a symbol of stability and continuity in the modern era. Her reign has also been marked by a modernization of the monarchy and its role in public and charitable service.",
  era: '20th-21st century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709228114/queen_neutral-Photoroom.png-Photoroom_ykvsnj.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 100_000,
  strength: 4,
  car_compatibility: {
    "bmw_m4_competition" => 3,
    "ford_mustang" => 2,
    "vw_bus" => 4,
    "mini_cooper" => 5,
    "porsche911" => 1,
    "ferrari458" => 0
  }
)

lincoln = HistoricalFigure.create!(
  name: 'Abraham Lincoln',
  bio: "Abraham Lincoln, the 16th President of the United States (1861-1865), is celebrated for leading the country through its Civil War, preserving the Union, and abolishing slavery through the issuance of the Emancipation Proclamation in 1863. His leadership during one of America's most tumultuous periods is noted for his commitment to principles of liberty and equality. Lincoln's eloquence, embodied in speeches such as the Gettysburg Address, and his assassination in 1865 have cemented his legacy as a symbol of American ideals.",
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044279/DALL_E_2024-02-26_20.20.03_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_a_generic_figure_reminiscent_of_Abraham_-Photoroom.png-Photoroom_l3qwyl.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 50_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 2,
    ford_mustang: 5,
    vw_bus: 4,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 3
  }
)

cleo = HistoricalFigure.create!(
  name: 'Cleopatra',
  bio: "Cleopatra VII Philopator (69-30 BC), the last active ruler of the Ptolemaic Kingdom of Egypt, was known for her intelligence, political acumen, and for being a lover of Julius Caesar and later companion to Mark Antony. Cleopatra's reign was marked by efforts to defend Egypt from the expanding Roman Empire. Her life and reign have been immortalized in various works of art and literature, reflecting her complex legacy as both a powerful leader and a woman of great allure.",
  era: '1st century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044193/DALL_E_2024-02-26_20.28.10_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_a_generic_figure_reminiscent_of_Cleopatr-Photoroom.png-Photoroom_d7zgtq.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 80_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 1,
    ford_mustang: 0,
    vw_bus: 5,
    mini_cooper: 4,
    porsche911: 3,
    ferrari458: 2
  }
)

napoleon = HistoricalFigure.create!(
  name: 'Napoleon',
  bio: "Napoleon Bonaparte, a Corsican-born military and political leader, rose to prominence during the French Revolution and led several successful campaigns during the Revolutionary Wars. As Emperor of the French from 1804 to 1815, he implemented a wide array of liberal reforms across Europe, including the Napoleonic Code, which has influenced legal systems worldwide. Despite his ultimate defeat, Napoleon is remembered for his strategic brilliance, his role in spreading the principles of the French Revolution, and his impact on the structure of modern states.",
  era: '18th-19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044269/DALL_E_2024-02-26_20.14.17_-_Create_a_close-up_image_of_a_character_s_head_in_a_playful_and_historically_themed_cartoon-style_inspired_by_Napoleon_Bonaparte._The_character_should-Photoroom.png-Photoroom_dj4vgv.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 30_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 3,
    ford_mustang: 1,
    vw_bus: 0,
    mini_cooper: 5,
    porsche911: 4,
    ferrari458: 2
  }
)

marie = HistoricalFigure.create!(
  name: 'Marie Curie',
  bio: "Marie Curie, born Maria Sklodowska in Poland in 1867, was a pioneering physicist and chemist who became the first woman to win a Nobel Prize and the only person to win in two different sciences (Physics in 1903, for her work on radioactivity, and Chemistry in 1911, for the discovery of radium and polonium). Her work laid the foundation for the development of X-rays in surgery and has had lasting impacts on the fields of physics and chemistry. Curie's dedication to science, despite the personal health risks she faced working with radioactive materials, marks her as one of the most influential scientists in history.",
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044220/DALL_E_2024-02-26_20.11.58_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_Marie_Curie_set_within_the_playful_and_histori-Photoroom.png-Photoroom_brdfpj.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 15_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 3,
    vw_bus: 2,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 5
  }
)

albert = HistoricalFigure.create!(
  name: 'Albert Einstein',
  bio: "Albert Einstein (1879-1955) was a theoretical physicist renowned for developing the theory of relativity, one of the two pillars of modern physics alongside quantum mechanics. His equation E=mc², which articulates the relationship between energy and mass, has become one of the most famous equations in the world. Einstein's work had profound implications for the study of the universe, leading to significant advancements in the fields of cosmology, atomic energy, and quantum mechanics. Beyond his scientific genius, Einstein was also a notable advocate for peace and civil rights throughout his life.",
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709044214/DALL_E_2024-02-26_20.08.04_-_Create_a_close-up_image_of_a_character_s_head_that_embodies_a_whimsical_generic_scientist_inspired_by_the_playful_and_historically_themed_cartoon-st-Photoroom.png-Photoroom_gcrvpn.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 65_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 2,
    vw_bus: 1,
    mini_cooper: 3,
    porsche911: 5,
    ferrari458: 4
  }
)

rosalind = HistoricalFigure.create!(
  name: 'Rosalind Franklin',
  bio: "Rosalind Franklin (1920-1958) was an English chemist whose work on X-ray diffraction was critical in the understanding of DNA. Franklin's photographs of DNA allowed Watson and Crick to create their famous model of DNA. Despite her pivotal role, her contributions were not fully recognized until after her death. Franklin's work extends beyond DNA to RNA, viruses, coal, and graphite. Her dedication to science and her pioneering techniques have left a lasting legacy in the field of molecular biology.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709281374/DALL_E_2024-03-01_09.20.35_-_Create_a_cartoon_portrait_of_a_woman_with_dark_short_wavy_hair_dark_eyebrows_and_a_gentle_smile-Photoroom_1_-Photoroom.png-Photoroom_lzv8ad.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 20_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 2,
    ford_mustang: 4,
    vw_bus: 3,
    mini_cooper: 5,
    porsche911: 1,
    ferrari458: 0
  }
)

mansa = HistoricalFigure.create!(
  name: 'Mansa Musa',
  bio: "Mansa Musa (1280-1337) was the Emperor of the Mali Empire during its golden age. Known as the richest person in history, his wealth came from Mali's vast gold resources. Mansa Musa is celebrated for his pilgrimage to Mecca, during which he distributed gold, affecting the economies of the regions through which he passed. His reign is noted for its cultural and scholarly investment, significantly contributing to the Islamic Golden Age. Under his rule, the legendary city of Timbuktu became a center of trade, education, and Islam.",
  era: '14th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227034/DALL_E_2024-02-29_18.07.20_-_Visualize_a_character_inspired_by_Mansa_Musa_emphasizing_his_African_heritage_in_a_whimsical_historically_themed_style_focusing_on_his_head._The_ch-Photoroom.png-Photoroom_pgaehp.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 40_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 2,
    ford_mustang: 4,
    vw_bus: 3,
    mini_cooper: 5,
    porsche911: 1,
    ferrari458: 0
  }
)

ada = HistoricalFigure.create!(
  name: 'Ada Lovelace',
  bio: "Ada Lovelace (1815-1852), the daughter of Lord Byron, is considered the world's first computer programmer. She is known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine. Lovelace's notes on the engine include what is recognized as the first algorithm intended to be processed by a machine, making her the first to recognize the machine's potential beyond mere calculation to the execution of complex instructions. Her vision of computing's possibilities marks her as a pioneer in the field.",
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709228113/ada_lovelace_neutral-Photoroom-Photoroom_1_1_-Photoroom.png-Photoroom_ci2ki0.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 25_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 1,
    ford_mustang: 5,
    vw_bus: 4,
    mini_cooper: 0,
    porsche911: 2,
    ferrari458: 3
  }
)

genghis = HistoricalFigure.create!(
  name: 'Genghis Khan',
  bio: "Genghis Khan (1162-1227), the founder of the Mongol Empire, became one of the most feared and respected conquerors of all time. Born as Temujin, he united the Mongolian steppe's tribes and forged an empire that at its peak stretched from Eastern Europe to the Sea of Japan. Genghis Khan's leadership, military strategies, and understanding of administration led to the creation of a legacy that lived far beyond his years, influencing numerous aspects of civilization from governance to warfare.",
  era: '12th-13th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227033/DALL_E_2024-02-29_18.04.23_-_Envision_a_whimsical_character_s_head_inspired_by_Genghis_Khan_focusing_solely_on_the_facial_features_and_headwear._This_character_has_a_playful_expr-Photoroom.png-Photoroom_x5e10c.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 50_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 2,
    vw_bus: 1,
    mini_cooper: 0,
    porsche911: 3,
    ferrari458: 5
  }
)

joan = HistoricalFigure.create!(
  name: 'Joan of Arc',
  bio: "Joan of Arc (1412-1431), also known as the Maid of Orléans, was a peasant girl who, claiming divine guidance, led the French army to several important victories during the Hundred Years' War, which paved the way for the coronation of Charles VII. She was captured by the English and burned at the stake as a heretic at the age of 19. Canonized as a saint in 1920, Joan of Arc has become a symbol of French unity and nationalism, and a figure of inspiration for people fighting for their beliefs.",
  era: '15th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227035/DALL_E_2024-02-29_18.08.38_-_Create_a_whimsical_historically_themed_portrayal_of_Joan_of_Arc_focusing_on_her_head._This_interpretation_captures_her_as_a_figure_of_strength_and_d-Photoroom.png-Photoroom-Photoroom.png-Photoroom-Photoro_1_ls60bh.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 35_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 3,
    vw_bus: 5,
    mini_cooper: 4,
    porsche911: 2,
    ferrari458: 1
  }
)

rosa = HistoricalFigure.create!(
  name: 'Rosa Parks',
  bio: "Rosa Parks (1913-2005) was an American activist in the civil rights movement best known for her pivotal role in the Montgomery Bus Boycott. Her refusal to give up her seat to a white man on a Montgomery, Alabama bus in 1955 became a symbol of the fight against racial segregation. Parks' act of defiance and the subsequent boycott became important symbols of the modern Civil Rights Movement, and she is known as 'the first lady of civil rights' and 'the mother of the freedom movement'.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230069/image-Photoroom.png-Photoroom_hzuhty.jpg?_s=public-apps',
  category: 'Activist',
  price: 45_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 3,
    ford_mustang: 0,
    vw_bus: 1,
    mini_cooper: 5,
    porsche911: 4,
    ferrari458: 2
  }
)

leonardo = HistoricalFigure.create!(
  name: 'Leonardo da Vinci',
  bio: "Leonardo da Vinci (1452-1519), an Italian polymath of the Renaissance, was a master of art, science, engineering, anatomy, and architecture. Known for his unparalleled genius, da Vinci created some of the most famous works in art history, including 'The Last Supper' and 'Mona Lisa'. His notebooks, filled with scientific diagrams, anatomical sketches, and engineering designs, reveal a mind centuries ahead of his time, making him a symbol of the Renaissance humanist ideal.",
  era: 'Renaissance',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227034/DALL_E_2024-02-29_18.13.50_-_Visualize_a_whimsical_character_inspired_by_Leonardo_da_Vinci_focusing_on_the_head._This_character_combines_elements_of_historical_accuracy_with_imag-Photoroom.png-Photoroom_ubjt1b.jpg?_s=public-apps',
  category: 'Artist and Scientist',
  price: 200_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 5,
    vw_bus: 2,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 3
  }
)

wilhelm = HistoricalFigure.create!(
  name: 'Wilhelm Tell',
  bio: "Wilhelm Tell is a legendary figure from the early 14th century in Switzerland, celebrated as a national hero for his role in the country's foundational myth. According to legend, Tell was an expert marksman with the crossbow who assassinated Albrecht Gessler, a tyrannical reeve of the Austrian dukes, in defiance against the Habsburg rule. His act of rebellion is said to have sparked the rebellion leading to the formation of the Swiss Confederation. Tell's story is a symbol of Swiss independence and resistance against tyranny, immortalized in Friedrich Schiller's play 'Wilhelm Tell' (1804) and Rossini's opera 'Guillaume Tell'.",
  era: '14th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235091/DALL_E_2024-02-29_20.28.28_-_Create_a_more_playful_and_cartoon-styled_portrait_of_Wilhelm_Tell_focusing_closely_on_his_head_and_a_bit_of_his_shoulders-Photoroom_1_-Photoroom.png-Photoroom_vx2yei.jpg?_s=public-apps',
  category: 'National Hero',
  price: 95_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 5,
    vw_bus: 2,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 3
  }
)

amelia = HistoricalFigure.create!(
  name: 'Amelia Earhart',
  bio: "Amelia Earhart (1897-1937) was an American aviation pioneer and author. Earhart was the first female aviator to fly solo across the Atlantic Ocean. She received the U.S. Distinguished Flying Cross for this accomplishment. She set many other records, wrote best-selling books about her flying experiences, and was instrumental in the formation of The Ninety-Nines, an organization for female pilots. Earhart's disappearance in 1937 over the Pacific Ocean remains one of the greatest unsolved mysteries of the 20th century.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227034/DALL_E_2024-02-29_18.14.56_-_Create_a_whimsical_historically_themed_portrayal_of_Amelia_Earhart_focusing_on_her_head._This_interpretation_captures_her_as_a_figure_of_boldness_an-Photoroom.png-Photoroom_oxlrgz.jpg?_s=public-apps',
  category: 'Aviator',
  price: 55_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 5,
    ford_mustang: 4,
    vw_bus: 3,
    mini_cooper: 0,
    porsche911: 2,
    ferrari458: 1
  }
)

harriet = HistoricalFigure.create!(
  name: 'Harriet Tubman',
  bio: "Harriet Tubman (1822-1913) was an American abolitionist and political activist. Born into slavery, Tubman escaped and subsequently made some thirteen missions to rescue approximately seventy enslaved people, family and friends, using the network of antislavery activists and safe houses known as the Underground Railroad. She later helped John Brown recruit men for his raid on Harpers Ferry and in the post-war era was an active participant in the struggle for women's suffrage.",
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709227034/DALL_E_2024-02-29_18.15.54_-_Create_a_whimsical_historically_themed_portrayal_of_Harriet_Tubman_focusing_on_her_head._This_interpretation_captures_her_as_a_figure_of_courage_and-Photoroom.png-Photoroom_gevbqr.jpg?_s=public-apps',
  category: 'Activist',
  price: 60_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 1,
    ford_mustang: 2,
    vw_bus: 4,
    mini_cooper: 5,
    porsche911: 3,
    ferrari458: 0
  }
)

jfk = HistoricalFigure.create!(
  name: 'John F. Kennedy',
  bio: "John Fitzgerald Kennedy (1917-1963), commonly referred to as JFK, was the 35th President of the United States, serving from January 1961 until his assassination in November 1963. Kennedy served at the height of the Cold War, and much of his presidency focused on managing relations with the Soviet Union. He also presided over the establishment of the Peace Corps, the advancement of the Space Race, and the beginning stages of the Vietnam War. Kennedy's time in office was marked by high tensions with communist states in the Cuban Missile Crisis. His assassination in Dallas, Texas, and the subsequent theories surrounding it, have made him a subject of fascination and controversy.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235092/DALL_E_2024-02-29_20.21.42_-_Create_a_playful_and_cartoon-styled_portrait_of_John_F._Kennedy_emphasizing_his_charismatic_and_visionary_leadership-Photoroom_1_-Photoroom.png-Photoroom_k7apa8.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 110_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 3,
    vw_bus: 1,
    mini_cooper: 2,
    porsche911: 4,
    ferrari458: 5
  }

)

frida = HistoricalFigure.create!(
  name: 'Frida Kahlo',
  bio: "Frida Kahlo (1907-1954) was a Mexican painter known for her many portraits, self-portraits, and works inspired by the nature and artifacts of Mexico. Drawing on her personal experiences, including her marriage, her miscarriages, and her numerous operations, Kahlo's works are often characterized by their stark portrayal of pain. Kahlo's unique style has been celebrated internationally as emblematic of Mexican national and Indigenous traditions, and by feminists for its uncompromising depiction of the female experience and form.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709228114/frida_kahlo_neutral-Photoroom.png-Photoroom_xtisud.jpg?_s=public-apps',
  category: 'Artist',
  price: 85_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 5,
    vw_bus: 3,
    mini_cooper: 2,
    porsche911: 0,
    ferrari458: 1
  }
)

nikola = HistoricalFigure.create!(
  name: 'Nikola Tesla',
  bio: "Nikola Tesla (1856-1943) was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist best known for his contributions to the design of the modern alternating current (AC) electricity supply system. Tesla's work on the AC motor and transformer helped pave the way for the electric age, revolutionizing the way electricity was distributed and used. He also made significant contributions to the fields of electromagnetic field theory, wireless communication, and radio.",
  era: '19th-20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230013/image_1_-Photoroom.png-Photoroom_inrjny.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 95_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 2,
    ford_mustang: 0,
    vw_bus: 5,
    mini_cooper: 3,
    porsche911: 1,
    ferrari458: 4
  }

)

george = HistoricalFigure.create!(
  name: 'George Washington',
  bio: "George Washington (1732-1799) was an American political leader, military general, statesman, and Founding Father who served as the first president of the United States from 1789 to 1797. He led Patriot forces to victory in the nation's War for Independence and presided at the Constitutional Convention of 1787, which established the new federal government. Washington has been hailed as the 'Father of His Country' for his manifold leadership in the formative days of the new nation.",
  era: '18th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230010/image_2_-Photoroom_1_-Photoroom.png-Photoroom_auatnj.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 100_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 3,
    ford_mustang: 1,
    vw_bus: 0,
    mini_cooper: 4,
    porsche911: 2,
    ferrari458: 5
  }
)

hatshepsut = HistoricalFigure.create!(
  name: 'Hatshepsut',
  bio: "Hatshepsut (1507-1458 BC) was the fifth pharaoh of the Eighteenth Dynasty of Egypt. She is generally regarded by Egyptologists as one of the most successful pharaohs, reigning longer than any other woman of an indigenous Egyptian dynasty. Hatshepsut was the second historically confirmed female pharaoh, her reign was marked by ambitious building projects and expeditions to the Land of Punt.",
  era: '15th century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230011/image_3_-Photoroom-Photoroom.png-Photoroom_cxsrtl.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 90_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 5,
    ford_mustang: 3,
    vw_bus: 1,
    mini_cooper: 2,
    porsche911: 0,
    ferrari458: 4
  }
)

isaac = HistoricalFigure.create!(
  name: 'Sir Isaac Newton',
  bio: "Sir Isaac Newton (1643-1727) was an English mathematician, physicist, astronomer, alchemist, and author who is widely recognized as one of the most influential scientists of all time, and a key figure in the scientific revolution. His book 'Philosophiæ Naturalis Principia Mathematica' laid the foundations for classical mechanics, and he made seminal contributions to optics, and with his development of calculus, Newton provided a powerful mathematical tool for physics and engineering.",
  era: '17th-18th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235102/DALL_E_2024-02-29_20.17.14_-_Create_a_whimsical_yet_respectful_portrait_of_Sir_Isaac_Newton_focusing_on_his_head._The_portrait_should_capture_Newton_s_essence_as_a_pioneering_sci-Photoroom.png-Photoroom_rmrrsq.jpg?_s=public-apps',
  category: 'Scientist and Inventor',
  price: 110_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 1,
    ford_mustang: 4,
    vw_bus: 2,
    mini_cooper: 5,
    porsche911: 3,
    ferrari458: 0
  }
)

gandhi = HistoricalFigure.create!(
  name: 'Mahatma Gandhi',
  bio: "Mahatma Gandhi (1869-1948) was an Indian lawyer, anti-colonial nationalist, and political ethicist who employed nonviolent resistance to lead the successful campaign for India's independence from British Rule, and in turn inspire movements for civil rights and freedom across the world. Known for his ascetic lifestyle–he often dressed only in a loincloth and shawl–and devout Hindu faith, Gandhi's philosophy of nonviolence and his passion for social justice have made him a timeless icon of peace.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235105/DALL_E_2024-02-29_20.16.23_-_Create_a_whimsical_yet_respectful_portrait_of_Mahatma_Gandhi_focusing_on_his_head._The_portrait_should_capture_Gandhi_s_essence_as_a_symbol_of_peace_-Photoroom.png-Photoroom_qk34ty.jpg?_s=public-apps',
  category: 'Activist',
  price: 120_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 2,
    ford_mustang: 0,
    vw_bus: 4,
    mini_cooper: 1,
    porsche911: 5,
    ferrari458: 3
  }
)

marie_antoinette = HistoricalFigure.create!(
  name: 'Marie Antoinette',
  bio: "Marie Antoinette (1755-1793) was the last Queen of France before the French Revolution. She was born an Archduchess of Austria, and her marriage to Louis XVI, the future king of France, was meant to cement a peace agreement between two rival nations. Marie Antoinette's lavish lifestyle and political interference were widely criticized; she became a symbol of the monarchy's decadence and disregard for the poor, leading to her execution during the revolution.",
  era: '18th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230070/image_7_-Photoroom.png-Photoroom_hgsgp3.jpg?_s=public-apps',
  category: 'Political Leader',
  price: 65_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 2,
    vw_bus: 5,
    mini_cooper: 3,
    porsche911: 4,
    ferrari458: 1
  }
)

confucius = HistoricalFigure.create!(
  name: 'Confucius',
  bio: "Confucius (551-479 BC) was a Chinese philosopher and politician of the Spring and Autumn period. The philosophy of Confucius emphasized personal and governmental morality, correctness of social relationships, justice, kindness, and sincerity. His teachings, preserved in the 'Analects', became the foundation of much of subsequent Chinese speculation on the education and comportment of the ideal man, shaping the moral fabric of Chinese civilization for centuries to come.",
  era: '5th century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230016/image_6_-Photoroom.png-Photoroom_i0oesi.jpg?_s=public-apps',
  category: 'Philosopher',
  price: 75_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 3,
    ford_mustang: 5,
    vw_bus: 0,
    mini_cooper: 2,
    porsche911: 1,
    ferrari458: 4
  }
)

alexander = HistoricalFigure.create!(
  name: 'Alexander the Great',
  bio: "Alexander the Great (356-323 BC) was a king of the ancient Greek kingdom of Macedon and a member of the Argead dynasty. He spent most of his ruling years on an unprecedented military campaign through Asia and northeast Africa, and by the age of thirty, he had created one of the largest empires in history, stretching from Greece to northwestern India. He is often ranked among the most influential people in history.",
  era: '4th century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230014/image_5_-Photoroom.png-Photoroom_qtdpmv.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 130_000,
  strength: 4,
  car_compatibility: {
    bmw_m4_competition: 5,
    ford_mustang: 1,
    vw_bus: 2,
    mini_cooper: 0,
    porsche911: 3,
    ferrari458: 4
  }
)

florence = HistoricalFigure.create!(
  name: 'Florence Nightingale',
  bio: "Florence Nightingale (1820-1910), known as 'The Lady with the Lamp', was an English social reformer, statistician, and the founder of modern nursing. She came to prominence while serving as a manager and trainer of nurses during the Crimean War, in which she organised care for wounded soldiers. She gave nursing a favourable reputation and became an icon of Victorian culture, especially in the persona of a ministering angel.",
  era: '19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235099/DALL_E_2024-02-29_20.18.10_-_Create_a_whimsical_yet_respectful_portrait_of_Florence_Nightingale_focusing_on_her_head._This_interpretation_captures_Nightingale_s_essence_as_the_fo-Photoroom.png-Photoroom_mr047y.jpg?_s=public-apps',
  category: 'Medical Pioneer',
  price: 80_000,
  strength: 3,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 2,
    vw_bus: 3,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 5
  }
)

caesar = HistoricalFigure.create!(
  name: 'Julius Caesar',
  bio: "Julius Caesar (100-44 BC) was a Roman general and statesman who played a critical role in the events that led to the demise of the Roman Republic and the rise of the Roman Empire. He is known for his military genius and political acumen, as well as being a central figure in the history of Rome. Caesar's conquest of Gaul, completed by 51 BC, extended Rome's territory to the English Channel and the Rhine, and his crossing of the Rubicon river sparked a civil war from which he emerged as the unrivaled leader of Rome.",
  era: '1st century BC',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709230011/image_4_-Photoroom_1_-Photoroom.png-Photoroom_vzfqvb.jpg?_s=public-apps',
  category: 'Military Leader',
  price: 100_000,
  strength: 2,
  car_compatibility: {
    bmw_m4_competition: 4,
    ford_mustang: 2,
    vw_bus: 3,
    mini_cooper: 1,
    porsche911: 0,
    ferrari458: 5
  }
)

austen = HistoricalFigure.create!(
  name: 'Jane Austen',
  bio: "Jane Austen (1775-1817) was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century. Austen's plots often explore the dependence of women on marriage in the pursuit of favourable social standing and economic security. Her use of biting irony, along with her realism and social commentary, have earned her acclaim among critics and scholars.",
  era: '18th-19th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235097/DALL_E_2024-02-29_20.19.49_-_Create_a_playful_and_cartoon-styled_portrait_of_Jane_Austen_emphasizing_her_whimsical_side-Photoroom_1_-Photoroom.png-Photoroom_lyrjm8.jpg?_s=public-apps',
  category: 'Author',
  price: 55_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 4,
    vw_bus: 2,
    mini_cooper: 1,
    porsche911: 5,
    ferrari458: 3
  }
)

wright = HistoricalFigure.create!(
  name: 'Wright Brothers',
  bio: "Orville (1871-1948) and Wilbur Wright (1867-1912), known as the Wright Brothers, were American aviation pioneers generally credited with inventing, building, and flying the world's first successful motor-operated airplane. They made the first controlled, sustained flight of a powered, heavier-than-air aircraft with the Wright Flyer on December 17, 1903. The brothers' invention of three-axis control enabled reliable flight and thus changed the course of history.",
  era: '20th century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709235094/DALL_E_2024-02-29_20.20.29_-_Create_a_playful_and_cartoon-styled_portrait_of_the_Wright_Brothers_emphasizing_their_inventive_and_pioneering_spirit._This_cartoon_version_features_-Photoroom.png-Photoroom_xpdvhu.jpg?_s=public-apps',
  category: 'Aviator and Inventor',
  price: 90_000,
  strength: 2,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 5,
    vw_bus: 4,
    mini_cooper: 3,
    porsche911: 2,
    ferrari458: 1
  }
)

gonzo = HistoricalFigure.create!(
  name: 'Gonzalo Guerra Figueroa',
  bio: "I used to be a teacher and before that a bartender. I want to learn to code to make my new career something that is in continuous evolution and try to find my spot in an ever growing market. I want to work in teams and help bring projects or whatever it is I end up doing, to people everywhere.",
  era: '21st century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709304981/DALL_E_2024-03-01_15.55.51_-_Create_a_cartoon_version_of_a_man_with_a_medium_build_larger_than_the_first_image_but_not_as_large_as_the_second._He_has_short_brown_hair_a_full_bea-Photoroom.png-Photoroom_xcu2ra.jpg?_s=public-apps',
  category: 'Batch Manager, Maintenance & Cleaning Lady',
  price: 90_000,
  strength: 2,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 5,
    vw_bus: 4,
    mini_cooper: 3,
    porsche911: 2,
    ferrari458: 1
  }
)

tamara = HistoricalFigure.create!(
  name: 'Tamara Torrecillas Gutierrez',
  bio: "Digital entrepreneur, Translator and Influencer Marketing expert! I launched my own company three years ago. Excited about taking on new challenges!",
  era: '21st century',
  image_url: 'https://res.cloudinary.com/dswjgd3a4/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1709304720/tamara_neutral-Photoroom.png-Photoroom_okiyul.jpg?_s=public-apps',
  category: 'Teacher & Star',
  price: 90_000,
  strength: 5,
  car_compatibility: {
    bmw_m4_competition: 0,
    ford_mustang: 5,
    vw_bus: 4,
    mini_cooper: 3,
    porsche911: 2,
    ferrari458: 1
  }
)

puts "#{HistoricalFigure.count} Historical Figures created 🏆"

Race.create!(
  user_id: daniel.id,
  historical_figure_id: tamara.id,
  result: 'win',
  location: "Rome, Italy",
  location_enum: 0
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: queen.id,
  result: 'win',
  location: "Caracas, Venezuela",
  location_enum: 0
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: lincoln.id,
  result: 'win',
  location: "Berlin, Germany"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: cleo.id,
  result: 'win',
  location: "Milan, Italy"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: gonzo.id,
  result: 'win',
  location: "Madrid, Spain"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: cleo.id,
  result: 'win',
  location: "Cyprus, Greece"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: tamara.id,
  result: 'win',
  location: "Valencia, Spain"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: cleo.id,
  result: 'loss',
  location: "Casablanca, Morocco",
  location_enum: 1
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: albert.id,
  result: 'loss',
  location: "Paris, France"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: rosa.id,
  result: 'loss',
  location: "Basel, Switzerland"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: cleo.id,
  result: 'win',
  location: "Basel, Switzerland"
)

Race.create!(
  user_id: emma.id,
  historical_figure_id: napoleon.id,
  result: 'loss',
  location: "Paris, France"
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: gandhi.id,
  result: 'win',
  location: "Zurich, Switzerland"
)

Race.create!(
  user_id: emma.id,
  historical_figure_id: rosalind.id,
  result: 'win',
  location: "Munich, Germany"
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: alexander.id,
  result: 'loss',
  location: "Geneva, Switzerland"
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: hatshepsut.id,
  result: 'win',
  location: "Lucerne, Switzerland"
)

Race.create!(
  user_id: emma.id,
  historical_figure_id: isaac.id,
  result: 'win',
  location: "Hamburg, Germany"
)

Race.create!(
  user_id: frederic.id,
  historical_figure_id: florence.id,
  result: 'loss',
  location: "Lausanne, Switzerland"
  result: 'loss',
  location: "Casablanca, Morocco",
  location_enum: 1
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: gonzo.id,
  result: 'loss',
  location: "Bogota, Colombia"
)

Race.create!(
  user_id: daniel.id,
  historical_figure_id: marie.id,
  result: 'loss',
  location: "Stockholm, Sweden"
)

puts "#{Race.count} Races created 🏎️💨 🏁 🏁 🏁"
sleep 1

puts "Done ✅"
