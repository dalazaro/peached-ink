# peached.ink 
[www.peachedink.com](https://www.peachedink.com)

peached.ink is an online art portfolio for aspiring professional children's book illustrator Kean Saetern. Anybody who wishes to check Kean's work can visit this Ruby on Rails app and view slideshows of her various illustration collections, learn more about the illustrator herself, contact her via email, and connect with peached.ink on social media. Behind the scenes, Kean can log in to the app through a hidden endpoint and manage her own content, such as editing her profile information and CRUDing her own illustrations.

## Technologies
- Ruby on Rails (Rails 5)
- PostgreSQL / Active Record
- Bootstrap 4
- Heroku
- Google Domains DNS
- BCrypt
- Carrierwave
- ShareThis
- Font Awesome
- FriendlyID
- jQuery

### Installation
1. In Terminal, run `$ git clone https://github.com/dalazaro/peached-ink.git`.
2. `$ cd peached-ink` to enter project directory.
3. Run `$ bundle install` to install dependencies locally.
4. Create, migrate, and populate local database `$ rails db:create db:migrate db:seed`.
4. `$ rails s` to run Rails server.
5. Visit `localhost:3000` in your browser.

## User Stories
The user profile of this portfolio is twofold:

First, general users of this portfolio are people who wish to view Kean's illustrations and potentially contact her to commission her for an illustration.
- Users land on the Splash page and see Kean's featured work (3 newest collections)
- Users can navigate different views in the top navigation bar: peached.ink title and logo; links to About, Illustration Collections, Contact, and Social icons
- Users can view Kean's about page with her profile photo, artist statement, bio, and commissions
- Users can view gallery page with a grid of Kean's different illustration collections
- Users can click on a collection and view a slideshow, thumbnails, and details about the collection
- Users can share different views on social media.
- Users can contact Kean

Another user of this portfolio is the illustrator, acting as administrator for maintaining her own profile.
- Kean can log in through a hidden endpoint to manage her content
- Kean can edit her About page, including changing her profile photo and editing her About info
- Kean can create a new collection and add illustrations
- Kean can add illustrations to an existing collection
- Kean can modify illustrations and the contents of existing collections
- Kean can delete illustrations and collections

## Wireframes

Splash:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e8eec313a35bfe4569f/b962dba3c7b4a44cce98fd68ea3cb458/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e8eec313a35bfe4569f/b962dba3c7b4a44cce98fd68ea3cb458/photo.jpg" width="300">
</a>

About:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e93b366f7ee9acaf639/d9f444faeadcf7447a2cfe22287a3519/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e93b366f7ee9acaf639/d9f444faeadcf7447a2cfe22287a3519/photo.jpg" width="300">
</a>

All Collections:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e9613ccde269c568df6/89bda94eda09624e40735ffc09ac3e92/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e9613ccde269c568df6/89bda94eda09624e40735ffc09ac3e92/photo.jpg" width="300">
</a>

Individual Collection:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b76b5c17812169a8f89e45/b9c41ef83047254ce4fecb61befa0b9d/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b76b5c17812169a8f89e45/b9c41ef83047254ce4fecb61befa0b9d/photo.jpg" width="300">
</a>

Create New Collection:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b77225b72f247d85216d36/24d3f3590cd25975e1b0c86ebd1064ec/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b77225b72f247d85216d36/24d3f3590cd25975e1b0c86ebd1064ec/photo.jpg" width="300">
</a>

Login:<br>
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71eb442048c0d8e514706/63f9785f7ca524e3f339fd758c410d66/photo.jpg">
  <img src="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71eb442048c0d8e514706/63f9785f7ca524e3f339fd758c410d66/photo.jpg" width="300">
</a>

## Entity Relationship Diagrams
<a href="https://trello-attachments.s3.amazonaws.com/59b6fec42a7255bf38590f00/59b71e7263168769e70b77b0/c9d38a357539ddb931494f90c0149878/photo.jpg">
  Preliminary Artist/Collection/Illustration ERD
</a>

## Future Development
- Integrate **Imgur API** to automatically access and render new uploads from within the peached.ink Imgur account.
- Integrate **Mailchimp** for subscriber signup and newsletter distribution.
- Integrate **e-commerce** for selling products/artwork.
- In-app **contact form** for messaging.
- In-app **blogging** capability for Kean.
