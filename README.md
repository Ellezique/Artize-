# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# T2A2 - Marketplace Project 
#### Artize: an online gallery for users to buy and sell art.
###### By Gizelle v.Z
-------
## SETUP ##
Please ensure that you:
- have Ruby on Rails and PostgreSQL installed and setup on your computer;
- are familiar with command line (terminal); and
- Have a default text editor (e.g. Visual Studio Code) installed and setup.
####Clone from Github Repositry
- Clone to your local development environment:
    - Go to this application's github repository. Select the green "Code" button, which will then display a drop down menu. From the drop down menu, select "Download ZIP".
    - PC: Once the zip folder has downloaded, right click on the zip folder and select "Extract All" from the dropdown menu. You may then choose where you would like to save the extracted folder on your PC, but keep all these files together because they contain everything from the repository. Mac: You can unzip the folder from Finder. Click the unzip button and select "unzip" from the dropdown menu and select where you would like to extract the folder to. A Finder window will open. Select "unzip the entire zip file".
####Command Line
- Open your command line (terminal) and navigate to the directory where you saved the clone in your local environment.
- Install dependencies by running the following in your command line terminal:
       $  `bundle install`
- Check node dependencies:
        $ `yarn install --check-files`
- Open the directory in your default text editor:
        $ `code .`
####PostgreSQL database setup
- Open your database.yml file and customise the following to your specifications, e.g:

        username: postgres    
        password: xxxxxxxx
        host: localhost
        port: 5432
- Setup the database and populate presetdata from the seeds file by running the following commands in terminal:
    $`rails db:reset` 

    $`rails db:migrate` 

    $`rails db:seed`

#### Confirm proper installation and setup
- Start your server by running:
    $ `rails s`
- Open the following url in your browser: http://localhost:3000/
- The page should load without error.

#### Admin credentials for authorization
- In the application, sign up as a new user by submitting your email and password.
- In terminal, run rails consol:
    `rails c`
- You can see all users by running:
    `User.all`
- You created the last user. Assign an admin roll to the last user.
    `User.last.add_role :admin`


## R7:	Identification of the problem solved by building this particular marketplace app. ##
buy and sell
commission

Show all artworks - more buyers and sellers might join the site 
By requiring log in first, a user must go to the effort of signing up before proceeding. Whilst exclusivity is in no way a driving force of this web application, it is hoped that the log in requirement will offer some copyright protection for artists whose artworks are being sold on this web app.
## R8:	Why is it a problem that needs solving? ##
Difficult to capitalise on creativity. Need to protect artist's IP.
Galleries (online and physical) take a lot of commission from artists.
Direct purchase and sale.

## R9:	A link (URL) to the deployed app (i.e. website) ##

## R10	A link to the GitHub repository (repo).##

## R11:	Description of your marketplace app (website), including: ##
### Purpose ###
Buy and sell art direct wihtout commission.
### Functionality / features ### 
"Only admin can edit or delete an artist. A user can create an artist but cannot edit or delete. Deleting an artist deletes all work by that artist."

Proposed additions:
- A user can edit an artwork - but this shoule be restricted to only artworks added by them
- The Style and Media data tables allow for integration of a search and sort feature in future.

### Sitemap ### 
![Sitemap](/app/assets/images/sitemap.png)
### Screenshots ### 
![Home](/app/assets/images/home.PNG)
![Sign Up Page](/app/assets/images/signup.PNG)
![Login Page](/app/assets/images/loginpage.PNG)
![Login](/app/assets/images/homelogin.PNG)
![Artwork](/app/assets/images/artwork.PNG)
![Artists](/app/assets/images/artists.PNG)
![Artist Show](/app/assets/images/artistshow.PNG)
![Art Show](/app/assets/images/artshow.PNG)
![Order](/app/assets/images/order.PNG)
![Stripe](/app/assets/images/stripe.PNG)
![New Art](/app/assets/images/newart.PNG)
![Styles](/app/assets/images/styles.PNG)
![Show](/app/assets/images/show.PNG)
![Edit](/app/assets/images/editing.PNG)
![Destroy](/app/assets/images/destroy.PNG)
![Artmedia](/app/assets/images/artmedia.PNG)

###  Target audience ### 
###  Tech stack ### 

##### Project Management, Planning and Software ##### 
- Trello Board to track tasks and progress during planning and development
- Draw.io used to create Entity Realationship Diagram
- Balsamiq used to create Wireframes
- PGAdmin to view database 
##### Development & Database ##### 
- Ruby on Rails (including HTML and SCSS)
- PostgreSQL 
##### Gems ##### 
- Bootstrap (Front-end styling)
- Devise (Authentication)
- Rolify (Authorisation)
- Simple Form
##### Image Upload ##### 
- Cloudinary 
- Rails Active Storage
##### Repository ##### 
- GitHub
##### Deployment ####
- Heroku

### R12:	User stories for your app ### 
### R13:	Wireframes for your app ### 
![Wireframes](/app/assets/images/artizewireframes.png)

### R14:	An ERD for your app ### 
The original draft ERD included tables for users to be an artist or customer. This design became problematic when dealing with associations and was abandoned to project time constraints. Draft ERD:
![Original ERD](/app/assets/images/ARTscaffoldREVISED.png)

The final ERD has a much simpler design. Devise was used to create Users. Stripe manages the Order. Cloudinary is used to add images to Artworks. The Artist and Customer distinction was removed. The Style and Artmedia tables allow for addition of a search bar feature in future. The profile table can easily be incorporated in future.
![ERD](/app/assets/images/artizeerdfinal.png)

### R15:	Explain the different high-level components (abstractions) in your app ### 
### R16:	Detail any third party services that your app will use ###
### R17:	Describe your projects models in terms of the relationships (active record associations) they have with each other ### 
### R18:	Discuss the database relations to be implemented in your application ###
### R19	Provide your database schema design ###
### R20	Describe the way tasks are allocated and tracked in your project ###
Trello Board was utilised to track tasks and progress during planning and development. The board can be accessed online here: 
https://trello.com/b/dkOuEH0Y/artize-marketplace-erd

![Trello board](/app/assets/images/Trello.PNG)
![New app card](/app/assets/images/newapp.PNG)
![Database card](/app/assets/images/postgresqldb.PNG)
![Style and media card](/app/assets/images/styleandmedia.PNG)
![Cloudinary card](/app/assets/images/cloudinary.PNG)
![Art and Artist card](/app/assets/images/artandartist.PNG)
![Queries card](/app/assets/images/queries.PNG)
![Styling card](/app/assets/images/styling.PNG)
![Stripe](/app/assets/images/stripetrello.PNG)
![Deployment](/app/assets/images/deployment.PNG)