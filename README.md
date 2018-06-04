# Profile - web app

This is my personal project to design a web app with :

* Users and Profile pages

* Discussions and the ability to post

# Getting started

Clone down the repo 

```
git clone https://github.com/Sykander/profile.git
```
install ruby, if not already installed,
```
ruby -v
ruby 2.3.1p112
```
now set up the database with PostgreSQL with,
```
rails db:create db:migrate db:seed
```
and now you can run the server with,
```
rails s
```
finally, connect to the web page at 
```
http://0.0.0.0:3000/
```
