# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clean up rails db:reset rails db:seed rails db:migrate
#ArtworksArtmedium.destroy_all
#ArtworksOrder.destroy_all
#ArtworksStyle.destroy_all
Style.destroy_all
Artmedium.destroy_all
#Order.destroy_all
Artwork.destroy_all    
Artist.destroy_all     


#STYLE AND MEDIA
objective = Style.create(style_description: "Objective")
abstract = Style.create(style_description: "Abstract")
subjective = Style.create(style_description: "Subjective")
figurative = Style.create(style_description: "Figurative")
geometric = Style.create(style_description: "Geometric")
realism = Style.create(style_description: "Realism")
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

#ARTISTS & their artworks
leon = Artist.create(artist_first_name: "Leon", artist_last_name: "Devenice", about_artist: "Leon Devenice is an award-winning artist painter whose unique work portrays nature’s majestic beauty. His art often depicts the glorious richness of alfresco living and is lauded for its sense of romance and passion. Unafraid to incorporate bold colors, Leon speaks the language of vitality and sensuality with his incredible landscapes and painted scenes.")
leon.artworks.create(art_title: "Still Life with Fruits & Wine", art_description: "Colorful fruit and wine", available: true)
leon.artworks.create(art_title: "Glowing Crimson", art_description: "Colorful autumn trees", available: true)
leon.artworks.create(art_title: "Sunset Embrace", art_description: "Colorful ocean waves", available: true)
leon.artworks.create(art_title: "Voyages of Imagination", art_description: "Ship embarked on journey", available: true)

gizelle = Artist.create(artist_first_name: "Gizelle", artist_last_name: "v.Z",about_artist: "Gizelle v.Z is a mysterious artist who works with various media.")
gizelle.artworks.create(art_title: "Weathered Boat", art_description: "Black and white weathered boat", available: true)
gizelle.artworks.create(art_title: "Wreckage", art_description: "Wrecked remains of a boat", available: true)

toko = Artist.create(artist_first_name: "Toko", artist_last_name: "Suzuki", about_artist: "Toko Suzuki is a digital artist and skilled at drawing. Japanese born in NY, currently based in Sydney, Australia. Mostly working digitally and sometimes traditionally.")
toko.artworks.create(art_title: "Backlight", art_description: "Faded image capturing the light", available: true)
toko.artworks.create(art_title: "Real Time", art_description: "After Jeremy Mann", available: true)
toko.artworks.create(art_title: "WangjieLi", art_description: "After Wangjie Li", available: true)

steve = Artist.create(artist_first_name: "Steve", artist_last_name: "Johnson", about_artist: "Abstract artist.")
steve.artworks.create(art_title: "No. 1", art_description: "First in series", available: true)
steve.artworks.create(art_title: "No. 2", art_description: "Second in series", available: true)
steve.artworks.create(art_title: "No. 3", art_description: "Third in series", available: true)
steve.artworks.create(art_title: "No. 4", art_description: "Fourth in series", available: true)
steve.artworks.create(art_title: "No. 5", art_description: "Fifth in series", available: true)
steve.artworks.create(art_title: "No. 6", art_description: "Sixth in series", available: true)
steve.artworks.create(art_title: "Droplet", art_description: "Mosaic droplet", available: true)