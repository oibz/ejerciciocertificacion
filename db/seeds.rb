# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creando regiones'

Regione.destroy_all

Regione.create([
  {nombre: 'Tarapacá'},
  {nombre: 'Antofagasta'},
  {nombre: 'Atacama'},
  {nombre: 'Coquimbo'},
  {nombre: 'Valparaíso'},
  {nombre: 'Libertador General Bernardo O’Higgins'},
  {nombre: 'Maule'},
  {nombre: 'Biobío'},
  {nombre: 'La Araucanía'},
  {nombre: 'Los Lagos'},
  {nombre: 'Aysén del General Carlos Ibáñez del Campo'},
  {nombre: 'Magallanes y Antártica Chilena'},
  {nombre: 'Metropolitana de Santiago'},
  {nombre: 'Los Ríos'},
  {nombre: 'Arica y Parinacota'},
  {nombre: 'Ñuble'}
])

puts 'Regiones creadas!!!'


puts 'Creando Tipo de ofertas'

TipoOfertum.destroy_all

TipoOfertum.create([
  {descripcion: 'Remoto'},
  {descripcion: 'Mixto'},
  {descripcion: 'Presencial'}
])

puts 'Tipos creados!!!'

puts 'Creando Usuario Empresa'

UserEmpresa.destroy_all

TipoOfertum.create([
  {email: 'empresa@gmail.com', password: '123456'},
])

puts 'Tipos creados!!!'
