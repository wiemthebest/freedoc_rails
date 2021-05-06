Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
5.times do
    c = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c)
    d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "foufou", zip_code: Faker::Address.zip_code, city: c)
    rdv = Appointment.new(date: Faker::Date.forward(days: 23))
    rdv.doctor = d
    rdv.patient = p
    rdv.city = c
    rdv.save
  end