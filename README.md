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

# Using the site

You can create an account using the link in the top right of the page on the navbar, or you can use one of the seeded accounts with

email:
```
john@gmail.com
```
password:
```
topsecret
```

You can create a post after signing in by clicking on 'Posts' in the navbar and then clicking on the 'Create new post' button.

Unsigned users can view posts but cannot create them.
