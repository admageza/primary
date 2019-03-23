# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example1.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

  Test.delete_all

  Test.create!(firstname: 'Rwanda', lastname: 'Gasabo', body: 'Here is the test of ransack')
  Test.create!(firstname: 'Burundi', lastname: 'Bujumbura', body: 'Let go with ransak test')
  Test.create!(firstname: 'Tanzania', lastname: 'Dodoma', body: 'not easy to learn ransack')
  Test.create!(firstname: 'Japan', lastname: 'Tokyo', body: 'the best way to learn ransack')
  Test.create!(firstname: 'America', lastname: 'New York', body: 'it is helpful to know ransack')
  Test.create!(firstname: 'Uganda', lastname: 'Kampala', body: 'this application includes ransack')
  Test.create!(firstname: 'Angola', lastname: '', body: 'ransack is gem used to create search engine')
  Test.create!(firstname: 'Nigeria', lastname: 'Abuja', body: 'Let do it because ransack did all job')
  Test.create!(firstname: 'France', lastname: 'Paris', body: 'Connaitre cette facon de cree search engine est bonne')
  Test.create!(firstname: 'England', lastname: 'London', body: 'its amazing to use ransack')
  Test.create!(firstname: 'China', lastname: 'Beijing', body: 'Ruby on rails using ransack is fun')
  Test.create!(firstname: 'German', lastname: 'Berlin', body: 'successful test of ransack')
  Test.create!(firstname: 'Italy', lastname: 'Roma', body: 'Here is the test of ransack')
  Test.create!(firstname: 'Ghana', lastname: 'Accra', body: 'Enjoy the use of ransack in my app')
  Test.create!(firstname: 'Tunisia', lastname: 'Tunis', body: 'Here is the test of ransack')


ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  # ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end