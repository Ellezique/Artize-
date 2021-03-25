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
#### Clone from Github Repositry
- Clone to your local development environment:
    - Go to this application's github repository. Select the green "Code" button, which will then display a drop down menu. From the drop down menu, select "Download ZIP".
    - PC: Once the zip folder has downloaded, right click on the zip folder and select "Extract All" from the dropdown menu. You may then choose where you would like to save the extracted folder on your PC, but keep all these files together because they contain everything from the repository. Mac: You can unzip the folder from Finder. Click the unzip button and select "unzip" from the dropdown menu and select where you would like to extract the folder to. A Finder window will open. Select "unzip the entire zip file".
#### Command Line
- Open your command line (terminal) and navigate to the directory where you saved the clone in your local environment.
- Install dependencies by running the following in your command line terminal:
       $  `bundle install`
- Check node dependencies:
        $ `yarn install --check-files`
- Open the directory in your default text editor:
        $ `code .`
#### PostgreSQL database setup
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
https://murmuring-atoll-56343.herokuapp.com/

## R10	A link to the GitHub repository (repo). ##
https://github.com/Ellezique/Artize-

## R11:	Description of your marketplace app (website), including: ##
### Purpose ###
An online gallery where users can buy and sell artworks to each other.

### Functionality / features ### 
A seeds file populates an initial admin user, artists, artworks, styles and artmedia.
Bootstrap styling ensures for a responsive design.

Devise manages users and the log in and sign up pages. An alert notifies users that they sign in/up/out was successful.

HOME
The home page has a google font, image from cloudinary (with showdow and hover effects), a jumbotron and a disclaimer section at the bottom of the page which includes links (that open in new tabs) to artists' pages outside the project app. 

The navbar has a links to sign up or log in (or log out if they are signed in), home, artists, artwork and add artwork which are accessible by all logged in users. A user must sign up (and thereafter sign in) to access any webpages other than home and sign up/ log in. Any user can create an artwork. If a corresponding artist does not exist, the artist can be created by following a link in the add artist page.
The user who created an artwork listing can edit or destroy their own listing but they cannot edit or destroy another user's artwork listing. A user with an admin role can edit or destroy anyone's artwork. 
Only an admin user can destroy an artist because destruction of an artist will also destroy all of their artworks regardless of who posted it.

The admin user has access to a style and media page where they can add to the lists. Other users cannot add or delete these entries as this would create a messy database with far too many ill considered listings or result in deletion of a listing that is currently associated with various artworks (which impacts other user's artwork posts).

The home page has buttons to log in/sign up and to see artworks and artists. Only the latter two display for a logged in user.

The Style and Media data tables allow for integration of a search and sort feature in future. Admin can access their seperate pages to edit, show and destroy entries.

ARTISTS
Artists index lists artist names (first and last names joined by a method) and a description.

    def artist_name 
        return "#{artist_first_name} #{artist_last_name}"
    end 

 A new artist link is at the bottom of the page. The artist names link to their show pages that list links to their artworks show pages. Admin can edit and destroy artists.

ARTWORKS
All artwork listings are listed by artist last name so that works of a similar style display together (this is more aesthetically pleasing). The card contains a loop that iterates through each artwork in the database. If an image is attached,it will show. Deletion of an entry must be confirmed to avoid accidental deletion by the listing user or admin. Price appears as a currency. 
![Artwork card](/app/assets/images/artworkcard.PNG)


EDIT and CREATE ARTWORK 
Simple form is used for all forms in this app.
Both edit and create render the same form which shows table associations (styles and artmedia), price enteded as 0 or more, which can count in steps of 5 cents. Artists are ordered by first name. Style and Artmedia lists are ordered alphabetically. Artist is selected from a drop down list. if the artist does not exist, a link to new artist allows for a new artist to be created before linking back to add artwork. Editing a form does not destroy an already attached image, unless the image is intentionally replaced by attaching a new image. Images are managed with active storage and cloudinary. Styles and Media are selected by checkboxes.
![Artwork Form](/app/assets/images/artworkform.PNG)
The following methods allow for listing the style and media selections in a list seperated by commas in the artworks show page.

![Artworks Controller](/app/assets/images/applicationrecordart.PNG)
The above artworks controller is an example of table associations. It also accepts nested attributes for Styles and Artmedia. It allows for attachment of one artwork image. Price is validated as a value between 0 and 999999. The max value is very high to allow for high end sales as the app scales.

QUERY
Artist and Artworks controllers contain include query. Eager load queries took longer to execute and preload did not work. Eager load, preload and includes were tested and at this production size, include appeared to be most efficient whilst eager load seemed to take longer to execute on some runs than having no query at all. The choice can be reassessed as the app scales to ensure best performance.

USERS 
Authentication and Authorisation are handled by Devise and Rolify gems. The Application Controller authenticate before_action is inherited by all pages but skips home page to allow for a landing page where new users can sign up.

STRIPE
Handles checkout and payment. Stripe is PCI compliant so there is no need for the app to be as it never stores or sees credit card information. Payment is by card and is followed by a payment success or cancelled flash message.

CRUD functionality is in most part due to tables being generated by scaffold migrations. 

### Sitemap ### 
![Sitemap](/app/assets/images/sitemap.png)

There are many links (navbar, bottom of cards and pages etc) that assist the user in travelling between pages and backfor a more smooth and improved experience.

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

As an Ann, an artist, I want buyers know a little bit about me and to see my artwork and know what I used to make it so that they feel more connected to me and my art so that they will buy it.

As Jeff, an artist, I want all my artworks available together so that customers can get a sense of my style and body of work so that my branding can influence customers to buy more of my work if they like it.

As Karen, a seller, I want to see artworks by the same artist and I want to be able to compare how much different styles and medias sell for so that I can price my listings better. 

As Goldman, a seller, I want to make and change my own listings so that I have control over how much I sell for.

As Murdoch, a seller, I don't want buyers to be able to edit my listings because they could just change the price to $0 before checkout.

As Bee, the person maintaining the site, I want to be able to add, edit and delete information on the site so that it is maintained and more user friendly, so that the site and content can encourage people to join our online art community.

As Rodriguez, a buyer, I want to see what the art looks like, who made it, what it was made of and how much it costs so that I can browse art until I find something that I want to buy.

As Willow, a buyer, I want to know a bit about the artist and be able to find more of their work so that I don't miss out on art listings that I might want to buy.

### R13:	Wireframes for your app ### 
![Wireframes](/app/assets/images/artizewireframes.png)

### R14:	An ERD for your app ### 
The original draft ERD included tables for users to be an artist or customer. This design became problematic when dealing with associations and accessing data via numerous tables. The design was abandoned due to impracticalities and the project time constraints. Draft ERD:
![Original ERD](/app/assets/images/ARTscaffoldREVISED.png)

The final ERD has a much simpler design. Devise was used to create Users. Stripe manages the Order. Cloudinary is used to add images to Artworks. The Artist and Customer distinction was removed. The Style and Artmedia tables allow for addition of a search bar feature in future. The profile table can easily be incorporated in future.
![ERD](/app/assets/images/artizeerdfinal.png)

### R15:	Explain the different high-level components (abstractions) in your app ### 
ActiveRecord and ActiveController.  Please refer to the code.

APPLICATION CONTROLLERS

All other controllers inherit from the Application Controller which runs a before action to authenticate user on all pages except for the home page which has a before action which skips authenticate user. It also includes a private method called check_role that allows a user with admin role to authorised access to content in the web app (and flashes a notice to let a user know if they are attempting to access information they are not authorised to access).

The Controllers contain before actions to access private methods for destroy, edit, update, show and index. Some of these access private methods. All controllers contain CRUD functionality. The orders controller links to Stripe to create a session for payments whilst also showing various information about the proposed purchase (name, description, price, currency etc). The order controller will render a html safe message confirming if a purchase was processed successfully or cancelled.

The controllers also require and permit specific params i.e. allowing only a list of trusted parameters through. 

APPLICATION RECORDS

Include data table associations including the following table associations:
-	belongs_to
-	has_many

Some associations are through joining tables e.g. where there are many to many relationships. The sought information can be accessed through the joining table. These relationships are illustrated in the ERD and listed at the top of each application record. Artowrks also allows for one image to be attached to each artwork (these images are managed wiht active storage and cloudinary).

An artist has many artworks. An artwork belongs to an artist. If an artist is deleted, then all their artwork (which is dependant on the artist) will also be destroyed. For this reason, only  an admin user can delete an artist as a user might accidentally delete other user’s artworks listings by deleting a mutual artist from the database. 

The artworks application record also validates the price and ensures that the value falls within the allocated min and max values that have been set. It also contains methods to list styles and artmedia as words joined by a comma and space. It is best to keep such methods out of the controllers.
Rolify has created a Role Application Record which has and belongs to many users. It also has a users_roles join table. Roles belong to resource and have a polymorphic relationship that is set up by the rolify gem. It also validates resource types.

The User table is generated by Devise and links with rolify. Users have many artworks. This ensures that when a user creates an artwork, their user_id is stored in the database with that artwork. Authentication and Authorisation (Devise and Rolify) ensure that users are authenticated when they log in and that they only access information as is authorised for their role. It is also crucial that the user_id be stored in artworks as only users with an admin role or the user who created an artworks listing is able to edit or destroy it. 

### R16:	Detail any third party services that your app will use ###
Stripe is a third party payment service which is PCI compliant and enables customers to make credit card purchases in this app. I have referred to it above.

The Stripe website is here: <https://stripe.com/au>. It is a very well documented payment API that accepts and sends payments online. It is much simpler to implement than Paypal. It comes with a fully integrated suite of payments products. 

Cloudinary is a third party service that provides cloud-based image management services enabling users to upload images to the app, which are then stred in the cloud. It is an end-to-end image management solution for web apps. Cloudinary delivers the images through a fast content delivery network in caccordance with industry best practice. It has comprehensive APIs and administrative capabilities. Cloudinary has been integrated with this app to handle the images uploaded by users. The home page image is also stored on Cloudinary.

### R17:	Describe your projects models in terms of the relationships (active record associations) they have with each other ### 

Active Record is the model in the MVC (model, view, controllor structure). It facilitates thecreation and use of objects thathave data that is stored inthe database (in this case, a postgreSQL databse). Active Record models enable us to manipulate data in the postgreSQL relational database. We can create models that map to tables in the database e.g. an Artwork model thatmapsto an artworks table in the database.

CRUD allows us to create, read, update and delete data. In this app, generating scaffold migrations has enabled rails to build crud functionality into the app from the get go. Active Record automatically creates CRUD methods when scaffolds are generated. The seeds.rb file sets out some data examples that create an initial admin user, styles, artmedia, artists and artworks. 

I have referred to validation above (e.g. stripe interprets price in cents). I add that validating inputs maintains data integrity.

    class Artist < ApplicationRecord
    has_many :artworks, dependent: :destroy

    class Artmedium < ApplicationRecord
        has_many :artworks_artmedia
        has_many :artworks, through: :artworks_artmedia
    end

    class Artwork < ApplicationRecord
        belongs_to :user
        belongs_to :artist
        has_many :artworks_styles, dependent: :destroy
        has_many :styles, through: :artworks_styles
        has_many :artworks_artmedia, dependent: :destroy
        has_many :artmedia, through: :artworks_artmedia
        accepts_nested_attributes_for :styles, :artmedia 
        has_one_attached :artimage  

    class ArtworksArtmedium < ApplicationRecord
        belongs_to :artwork
        belongs_to :artmedium
    end

    class ArtworksStyle < ApplicationRecord
        belongs_to :artwork
        belongs_to :style
    end

    class Role < ApplicationRecord
        has_and_belongs_to_many :users, :join_table => :users_roles

    class Style < ApplicationRecord
        has_many :artworks_styles
        has_many :artworks, through: :artworks_styles
    end

    class User < ApplicationRecord
      has_many :artworks


### R18:	Discuss the database relations to be implemented in your application ###

Please refer to the final ERD above as well as the models code. a short summary of the relationships are:
A user has many artworks. An artwork belongs to a user.
An artwork has many styles through the Artworks_Style joining table.
A style has many artworks through the Artworks_Style joining table.
An artwork has many art media through the Artworks_Artmedium joining table.
An art medium has many artworks through the Artworks_Artmedium joining table.
A user has many orders.
An order has one user.
Stripe has created a joining table so that orders include artworks.
An artwork belongs to one artist.
An artist has many artworks.

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