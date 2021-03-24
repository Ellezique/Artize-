# README

# T2A2 - Marketplace Project 
#### Artize: an online gallery for users to buy and sell art.
###### By Gizelle v.Z
-------
## SETUP ##
Please ensure that you:
- have Ruby on Rails and PostgreSQL installed and setup on your computer;
- are familiar with command line (terminal); and
- Have a default text editor (e.g. Visual Studio Code) installed and set up.
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
- Setup the database and populate preset data from the seeds file by running the following commands in terminal:
    $`rails db:reset` 

    $`rails db:migrate` 

    $`rails db:seed`

Note that the application seed file does not include images. You need to add these manually in the app but you can edit the artworks entries. 
You may also wish to set up your own cloudinary account and add your credentials to the app.

#### Confirm proper installation and setup
- Start your server by running:
    $ `rails s`
- Open the following url in your browser: http://localhost:3000/
- The page should load without error.

#### Admin credentials for authorization
- The seeds file has created admin user credentials. You may use these credentials to log in and access the full application. 
- Feel free to create your own user credentials with sign up. 
- To assign admin privileges to your last created sign up:

    In the application, sign up as a new user by submitting your email and password.
    - In terminal, run rails consol:
        `rails c`
    - You can see all users by running:
        `User.all`
    - You created the last user. Assign an admin roll to the last user.
        `User.last.add_role :admin`


## R7:	Identification of the problem solved by building this particular marketplace app. ##
This app is competing with the traditional art gallery model. Art galleries (physical and online) charge significant commission fees for selling art. Additionally, there is an exclusivity and discrimination where galleries select a few limited artists to promote and dismiss other talented artists who then have more difficulty selling their work. Resale of art is also encouraged and accordingly, the app is not limited to only artists selling art but is open to anyone wishing to resell art. 

The purpose of this app is to allow artists (and other art sellers) to sell art to customers directly without the additional commission fees.
The ultimate goal is for prominent users to be assigned admin privileges so that an art community can eventually take over and manage the site themselves, thus eliminating the need for traditional gallery models. The app could potentially reduce the cost of art whilst also increasing the profit from sales, simply by eliminating the traditional commission fees.

It is difficult to capitalise on creativity but creative works are also vulnerable to intellectual property rights violations. It is hoped that the log in requirement will offer some copyright protection for artists whose artworks are being sold on this web app. The artworks are not visible unless a user has signed up and logged in. This log in barrier should in theory filter out some users who have no interest in buying or selling art. On the other hand, community involvement will be paramount in generating listings, traffic and sales. 

## R8:	Why is it a problem that needs solving? ##
Artists would benefit from earning a higher income to continue their pursuit of the arts. In traditional gallery models, the profits often accumulate to the galleries that pick a limited few artists to represent and promote. Collectors and galleries sometimes work together to inflate art prices though this is not always to the benefit of the artist themselves. Customers should also have access to a wide range of art, beyond what a traditional model may select to promote. A wider selection of art enables more customers to enjoy it, and more sellers to profit without incurring commission fee charges.

## R9:	A link (URL) to the deployed app (i.e. website) ##

## R10	A link to the GitHub repository (repo). ##
https://github.com/Ellezique/Artize-

## R11:	Description of your marketplace app (website), including: ##
### Purpose ###
An online gallery where users can buy and sell artworks to each other.

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
Cloudinary images:
![Coudinary site](/app/assets/images/cloudinarysite.PNG)
PGAdmin:
![PGAdmin](/app/assets/images/pgadmin.PNG)

###  Target audience ### 
Artists who wish to sell their artworks.
Other sellers who wish to resell artworks.
Customers who wish to buy artworks.

###  Tech stack ### 

##### Project Management, Planning and Software ##### 
- Trello Board to track tasks and progress during planning and development
- Draw.io used to create Entity Realationship Diagram
- Balsamiq used to create Wireframes
- PGAdmin to view database 
##### Development & Database ##### 
- Ruby 2.7.1p83 
- Rails 6.1.3 (including HTML and SCSS)
- PostgreSQL 
##### Gems ##### 
- Bootstrap (Front-end styling)
- Devise (Authentication)
- Rolify (Authorisation)
- Simple Form
![Custom gems](/app/assets/images/customgems.PNG)
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
Explanation of what is happening in rails, what is the framework, what is the database and how do they interact. OR ActiveRecord and ActiveCOntroller. Either of these interpretations are fine. 

### R16:	Detail any third party services that your app will use ###
### R17:	Describe your projects models in terms of the relationships (active record associations) they have with each other ### 
### R18:	Discuss the database relations to be implemented in your application ###
### R19:	Provide your database schema design ###
![Schema 1 of 3](/app/assets/images/schemaone.PNG)
![Schema 2 of 3](/app/assets/images/schematwo.PNG)
![Schema 3 of 3](/app/assets/images/schemathree.PNG)
### R20:	Describe the way tasks are allocated and tracked in your project ###
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