# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clean up rails db:reset rails db:seed rails db:migrate
ArtworksArtmedium.destroy_all
#ArtworksOrder.destroy_all
ArtworksStyle.destroy_all
Style.destroy_all
Artmedium.destroy_all
#Order.destroy_all
#Artwork.destroy_all    #depends on artist
#Artist.destroy_all     #depends on user>profile

#ARTISTS
#testtest = Artist.create(about_artist: "Test is a test artist.", profile_id: 1)
#leon = Artist.create(about_artist: "Leon Devenice is an award-winning [...] artist painter whose unique work portrays nature’s majestic beauty. His art often depicts the glorious richness of alfresco living and is lauded for its sense of romance and passion. Unafraid to incorporate bold colors, Leon speaks the language of vitality and sensuality with his incredible landscapes and painted scenes.", profile_id: )
#gizelle = Artist.create(about_artist: "Gizelle v.Z is a mysterious artist who works with various media.", profile_id: )

#STYLE AND MEDIA
objective = Style.create(style_description: "Objective")
abstract = Style.create(style_description: "Abstract")
subjective = Style.create(style_description: "Subjective")
figurative = Style.create(style_description: "Figurative")
geometric = Style.create(style_description: "Geometric")
photorealism = Style.create(style_description: "Photorealism")
pop = Style.create(style_description: "Pop")
illustration = Style.create(style_description: "Illustration")
portait = Style.create(style_description: "Portrait")
still_life = Style.create(style_description: "Still Life")
surrealism = Style.create(style_description: "Surrealism")
landscape = Style.create(style_description: "Landscape")
black_and_white = Style.create(style_description: "Black and White")

digital = Artmedium.create(artmedium_description: "Digital")
sculpture = Artmedium.create(artmedium_description: "Sculpture")
painting = Artmedium.create(artmedium_description: "Painting")
drawing = Artmedium.create(artmedium_description: "Drawing")
photography = Artmedium.create(artmedium_description: "Photography")
canvass = Artmedium.create(artmedium_description: "Canvass")
paper = Artmedium.create(artmedium_description: "Paper")
mixed_media = Artmedium.create(artmedium_description: "Mixed Media")
watercolor = Artmedium.create(artmedium_description: "Watercolor")
oil_paint = Artmedium.create(artmedium_description: "Oil Paint")
acrylic_paint = Artmedium.create(artmedium_description: "Acrylic Paint")
gouche_paint = Artmedium.create(artmedium_description: "Gouche Paint")
pencil = Artmedium.create(artmedium_description: "Pencil")
ink = Artmedium.create(artmedium_description: "Ink")
metal = Artmedium.create(artmedium_description: "Metal")
stone = Artmedium.create(artmedium_description: "Stone")
etching = Artmedium.create(artmedium_description: "Etching")
lithograph = Artmedium.create(artmedium_description: "Lithograph")
glass = Artmedium.create(artmedium_description: "Glass")
clay = Artmedium.create(artmedium_description: "Clay")
ceramic = Artmedium.create(artmedium_description: "Ceramic")

#ARTWORKS
#leon.artworks.create(art_title: "Still life with Fruits & Wine", art_description: "Oil painting on canvas", art_price: 750, available: true, styles: landscape, media: [painting, oil_paint]) 
#gizelle.artworks.create(art_title: "Weathered Boat", art_description: "Black and White photograph of a weather damaged boat.", art_price: 250, available: true, styles: black_and_white, media: photograph)
