Generic Heroku App
==================

Generic Heroku App is a quick-start app ready for deployment to Heroku. It is set up to include:

-   Devise for user authentication
-   CanCan for user authorisation
-   Rails Admin, limited to admin users
-   SendGrid for mailing, with pre-built AdminMailer and UserMailer models.
-   Twitter Bootstrap for styling
-   JQuery-UI for added styling

The project is still in early phases, and feedback and submissions are welcome.

Setup:
------

Setup process includes:

-   Copy the code folder
-   Delete the git repo
-   Change the database names in 'config/database.yml'
-   Change the 'from' and 'admin' email addresses in 'app/mailers/admin_mailer.rb'
-   $ git init
-   $ heroku create my_app_name
-   $ heroku addons:add sendgrid:starter
-   $ heroku addons:add scheduler:standard
-   $ git push heroku master
-   $ heroku run rake db:migrate

How To:
-------
1. Send daily email:
    - todo
    
2. 
To Do
-----

There’s a lot of setup still required for a full turnkey generic heroku
app, such as:

-   create a single rake task to setup heroku