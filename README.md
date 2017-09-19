# peached.ink 
[www.peachedink.com](https://www.peachedink.com)

peached.ink is an online art portfolio for hobbyist-but-aspiring children's book illustrator Kean Saetern. Anybody who wishes to check Kean's work can visit this Ruby on Rails app and view slideshows of her various illustration collections, learn more about the illustrator herself, contact her via email, and connect with peached.ink on social media. Behind the scenes, Kean can log in to the app through a hidden endpoint and manage her own content, such as editing her profile information and CRUDing her own illustrations. I thought of developing this art portfolio for Kean long before WDI 39, and now that she's inspired me to follow my dream job as a web developer, it's time for me to give back and bring her one step closer to hers.

## Technologies
- Ruby on Rails (Rails 5)
- PostgreSQL / Active Record
- Bootstrap
- Heroku
- Google Domains DNS
- BCrypt
- Carrierwave
- Font Awesome
- Friendly ID
- jQuery

### Installation
1. In Terminal, run `git clone https://github.com/dalazaro/peached-ink.git`.
2. Enter `peached-ink` directory.
3. Run `bundle install` to install dependencies.
4. Create, migrate, and populate local database (db/seeds.rb).
4. Run Rails server.
5. Visit `localhost:3000` in your browser.

## User Stories - who are your users, what do they want, and why?
The user profile of this portfolio is twofold:

First, general users of this portfolio are people who wish to view Kean's illustrations and potentially contact her to commission her for an illustration.
- User lands on the Splash page and sees Kean's featured work (3 newest collections)
- User can navigate different views in the top navigation bar: peached.ink title and logo; links to About, Illustration Collections, Contact, and Social icons
- User can view Kean's about page with her profile photo, artist statement, bio, and commissions
- User can view gallery page with a grid of Kean's different illustration collections
- Users can click on a collection and view a slideshow, thumbnails, and details about the collection
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
- Integrate **Imgur API** to automatically access and render new albums in the peached.ink Imgur account.
- **Sharing Icons** for Twitter, Pinterest, Facebook, Reddit
- Integrate **Mailchimp** for subscriber signup and newsletter distribution
- Integrate **e-commerce** for selling products/artwork.
- In-app **contact form** for messaging.
- In-app **blogging** capability.
