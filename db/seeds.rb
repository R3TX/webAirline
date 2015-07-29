User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
                          admin: true,
                          activated: true,
                          activated_at: Time.zone.now,
                          cedula: "1245789633",
                          edad: 15,
                          telefono: "263542",
                          genero: "m")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  cedula =  "1245789633"
  edad =  n%30
  telefono ="#{n*15}"
  genero ="m"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
              activated_at: Time.zone.now,
              cedula: cedula,
              edad: edad,
              telefono: telefono,
              genero: genero)
end

