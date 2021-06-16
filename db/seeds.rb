models = [Role, Audition]

models.each { |model| model.destroy_all }

role_data = [
  ({ character_name: "Cordelia" }),
  ({ character_name: "King Lear" }),
  ({ character_name: "Regan" }),
]

roles = role_data.map { |attributes| Role.create(attributes) }

audition_data = [
  ({ actor: "Nicholas",
    location: "NYC",
    phone: 555 - 5555,
    hired: false,
    role: Role.first }),
  ({ actor: "Jerry",
    location: "Brooklyn",
    phone: 666 - 6666,
    hired: false,
    role: Role.second }),
  ({ actor: "Larry",
    location: "Bronx",
    phone: 777 - 7777,
    hired: false,
    role: Role.third }),
]

auditions = audition_data.map { |attributes| Audition.create(attributes) }
