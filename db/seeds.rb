# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Project.create(working_title: "Kian and the Twin Blades", status: "in progress")

Project.create(working_title: "Dawn Hollow Academy, semester 1", status: "in progress")

Character.create(
  project_id: 1,
  name: "Kian Drakou",
  birthday: "January 12, 2297",
  age: "17 years old",
  physical_attributes: "A bodybuilder-like, tan skinned man with dark ,blue eyes, a triangular face, a stubby nose and small lips. He has wavy, orange-gold hair dip-dyed half way with shades of baby blue, has numerous piercings, wears clothes that are loose, has a strange cut on his chest, and he has an adolescent beard that is two shades browner than his hair.",
  likes: "Kian's likes the ocean, learning about old weapons and wars, ,and learning the rules and laws of the fairies who live in the Dark Woods.",
  dislikes: "Kian hates the snow, blackberry seeds, people who don't ,clean up after themselves at restaurants",
  hobbies: "Kians hobbies are: playing the guitar, working out with his ,friend, stargazing",
  favorite_food: "Strawberry ice cream and nachos",
  misc1: "Kian wanted to work as a music teacher when he was little",
  misc2: "Kian's best friend is a fairy named Cal, who is technically a ,fire fairy but has a mixed background and some extra magic",
  misc3: "Kian has a cat named Curtis who always attacks his ankles in ,the morning"
)


Character.create(
  project_id: 2,
  name: "Erin Kincaid",
  birthday: "August 29, 2005",
  age: "18 years old",
  physical_attributes: "A five foot tall, fair skinned woman with ,piercing, light green eyes, smooth cheeks and a flat nose. She has straight, red hair, has wide hips and a narrow waist, a slender neck, and small hands, has a birthmark across the back of her neck, has black painted nails, and she wears gold-rimmed glasses.",
  likes: "Erin likes watching the sun set, driving with the window down",
  dislikes: "Erin hates hard pretzels, walkikg in mud and when her ,friends argue",
  hobbies: "Erins hobbies are writing fan fiction,  reading, taking ,naps, baking (but only cookies)",
  favorite_food: "Erin loves pizza with olives and summer cherries",
  misc1: "Erin has a little brother who she loves named Oliver who is 7",
  misc2: "Erin's first boyfriend was named Chris, not sure yet if it ,ended well or if he broke her heart...",
  misc3: "Erin's best friend is Gina, they grew up together and fight ,like sisters"
)

World.create(
  project_id: 1,
  name: "Avendar",
  time_period: "2314",
  physics: "There are three moons which means that the tides on different parts of the planet are constantly raging and ocean travel is deadly at best. There is a constant wind in Kian's town that has never been adequately explained to him and it means that most people have short hair and wear tight clothes that down whip around.",
  culture: "They are tribe based and their cities while advances are ruled by an over arching coucil who gained power centuries ago when they discovered some secret way to safely navigate the ocean and bring vital resources to the city. They are mostly benevolent, but don't like outsiders and so it is rare to see a traveler in town - only trades men from further inland who have built relationships over the years with the leaders of Kian's tribe.",
  misc1: "The sky is usually purple, but during the lunar solstices it becomes a deep blue with purple streaking across",
  misc2: "The tribe is content and there are often children playing in the common areas while their parents socialize or work on tasks together.",
  misc3: "People are matched by the council when they turn 18 to their life partner, this is becoming a problem as they will not socialize outside the tribe and more and more children are being born with health problems due to having too much common DNA"
)

World.create(
  project_id: 2,
  name: "Earth - a pocket demension called Elaria",
  time_period: "2023  - present day",
  physics: "Same as earth, but at the academy there is magic so some differences there",
  culture: "the school culture is guarded, the teachers are more interested in watching the students struggle and battle to see who has enough grit to succeed rather that supporting them outright. Those with enough power are either bullies or loners, those in the mid tier are you basic power hungry brown nosers, those at the bottom, we try to stay invisible - too bad we make up the majority of the student body.",
  misc1: "Somethins is happening to the magic and it seems to be getting weaker by the generation.",
  misc2: "There is a battle magic class, though for what purpose no has ever told us. Only that it is required - makes a girl wonder what is actually going on in the world beyond Elaira",
  misc3: "The governing body is supposed to be a democratic republic, but the current president elect has been around for a decade at least and there are no term lengths here, feels sketchy but maybe the people like it this way?"
)

Note.create(
  project_id: 1,
  note_title: "duel weild sword research",
  chapter_title: "n/a",
  note: "Dual wielding is the technique of using two weapons, one in each hand for training or combat. It is not a common combat practice. Although historical records of dual wielding in war are limited, there are numerous weapon-based martial arts that involve the use of a pair of weapons. The use of a companion weapon is sometimes employed in European martial arts and fencing, such as a parrying dagger. Miyamoto Musashi, a Japanese swordsman and ronin, was said to have conceived of the idea of a particular style of swordsmanship involving the use of two swords.",
  source_url: "https://en.wikipedia.org/wiki/Dual_wield#:~:text=It%20is%20not%20a%20common,such%20as%20a%20parrying%20dagger."
)

Note.create(
  project_id: 2,
  note_title: "boarding school culture",
  chapter_title: "Day one at Elaria Magic Academy",
  note: "Typical characteristics
  The term boarding school often refers to classic British boarding schools and many boarding schools around the world which are modeled on these.
  A typical boarding school has several separate residential houses, either within the school grounds or in the surrounding area.
  A number of senior teaching staff are appointed as housemasters, housemistresses, dorm parents, prefects, or residential advisors, each of whom takes quasi-parental responsibility (in loco parentis) for anywhere from 5 to 50 students resident in their house or dormitory at all times but particularly outside school hours. Each may be assisted in the domestic management of the house by a housekeeper often known in U.K. or Commonwealth countries as matron, and by a house tutor for academic matters, often providing staff of each gender. In the U.S., boarding schools often have a resident family that lives in the dorm, known as dorm parents. They often have janitorial staff for maintenance and housekeeping, but typically do not have tutors associated with an individual dorm. Nevertheless, older students are often less supervised by staff, and a system of monitors or prefects gives limited authority to senior students. Houses readily develop distinctive characters, and a healthy rivalry between houses is often encouraged in sport.",
  source_url: "https://en.wikipedia.org/wiki/Boarding_school"
)

BetaReader.create(
  user_id: 1,
  first_name: "Jon",
  last_name: "Doe",
  email: "jd@test.com",
  feedback_notes: "What is Lorem Ipsum?
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

BetaReader.create(
  user_id: 1,
  first_name: "Sam",
  last_name: "Smith",
  email: "ss@test.com",
  feedback_notes: "Why do we use Lorem Ipsum?
  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
)