# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create! :first_name => 'Sykander', :last_name => 'Gul', :email => 'sgul@spartaglobal.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user = User.create! :first_name => 'John', :last_name => 'Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user = User.create! :first_name => 'John', :last_name => 'Doe', :email => 'john2@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user = User.create! :first_name => 'John', :last_name => 'Doe', :email => 'john3@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
Post.create(title: 'Test', body: 'Test', user_id: 1)
Post.create(title: 'Test', body: 'Test', user_id: 2)
Post.create(title: 'Test', body: 'Test', user_id: 3)
