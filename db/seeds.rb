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

30.times do |n|
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

#Origen.create!(ciudad: "medallo")



10.times do |f|
  ciudad = Faker::Name.name
  idOrigen = "000"
  nAeropuerto = Faker::Address.city
  codCiudad = Faker::Code.isbn
  Origen.create!(idOrigen: idOrigen,
                nAeropuerto: nAeropuerto,
                ciudad: ciudad,
                  codCiudad: codCiudad)
  Destino.create!(idDestino: idOrigen,
                  nAeropuerto: nAeropuerto,
                  ciudad: ciudad,
                  codCiudad: codCiudad)
end
 
10.times do |n|
  idIte=Faker::Name.name
  Itinerario.create!(idItinerario: idIte,
  fechaLlegada: 1.day.from_now,
  fechaSalida: 1.day.from_now,
  horaSalida: 5.hours.from_now,
  horaLlegada: 6.hours.from_now,
  origen_id: Origen.find((n%5)+1).id,
  destino_id: Destino.find((n%5)+1).id
  )
end

      