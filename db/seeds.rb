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
  birthday: "January 12, 2097",
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
  favorite_food: "Strawberry ice cream and nachos",
  misc1: "Erin has a little brother who she loves named Oliver who is 7",
  misc2: "Erin's first boyfriend was named Chris, not sure yet if it ,ended well or if he broke her heart...",
  misc3: "Erin's best friend is Gina, they grew up together and fight ,like sisters"
)