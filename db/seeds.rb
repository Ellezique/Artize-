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
Artist.destroy_all     
Artwork.destroy_all   

#STYLE 
objective = Style.create(style: "Objective")
abstract = Style.create(style: "Abstract")
subjective = Style.create(style: "Subjective")
figurative = Style.create(style: "Figurative")
geometric = Style.create(style: "Geometric")
realism = Style.create(style: "Realism")
pop = Style.create(style: "Pop")
illustration = Style.create(style:"Illustration")
portrait = Style.create(style: "Portrait")
still_life = Style.create(style: "Still Life")
surrealism = Style.create(style: "Surrealism")
landscape = Style.create(style: "Landscape")
black_and_white = Style.create(style: "Black and White")

#MEDIA
digital = Artmedium.create(artmedium: "Digital")
sculpture = Artmedium.create(artmedium: "Sculpture")
painting = Artmedium.create(artmedium: "Painting")
drawing = Artmedium.create(artmedium: "Drawing")
photography = Artmedium.create(artmedium: "Photography")
canvass = Artmedium.create(artmedium: "Canvass")
paper = Artmedium.create(artmedium: "Paper")
mixed_media = Artmedium.create(artmedium: "Mixed Media")
watercolor = Artmedium.create(artmedium: "Watercolor")
oil_paint = Artmedium.create(artmedium: "Oil Paint")
acrylic_paint = Artmedium.create(artmedium: "Acrylic Paint")
gouche_paint = Artmedium.create(artmedium: "Gouche Paint")
pencil = Artmedium.create(artmedium: "Pencil")
ink = Artmedium.create(artmedium: "Ink")
metal = Artmedium.create(artmedium: "Metal")
stone = Artmedium.create(artmedium: "Stone")
etching = Artmedium.create(artmedium: "Etching")
lithograph = Artmedium.create(artmedium: "Lithograph")
glass = Artmedium.create(artmedium: "Glass")
clay = Artmedium.create(artmedium: "Clay")
ceramic = Artmedium.create(artmedium: "Ceramic")

#ARTISTS & their artworks
leon = Artist.create(artist_first_name: "Leon", artist_last_name: "Devenice", about_artist: "Leon Devenice is an award-winning artist painter whose unique work portrays nature’s majestic beauty. His art often depicts the glorious richness of alfresco living and is lauded for its sense of romance and passion. Unafraid to incorporate bold colors, Leon speaks the language of vitality and sensuality with his incredible landscapes and painted scenes.")
leon.artworks.create(art_title: "Still Life with Fruits & Wine", art_description: "Colorful fruit and wine", available: true, styles: [subjective, still_life], artmedia: [painting, canvass, oil_paint])
leon.artworks.create(art_title: "Glowing Crimson", art_description: "Colorful autumn trees", available: true, styles: [subjective, landscape], artmedia: [painting, canvass, oil_paint])
leon.artworks.create(art_title: "Sunset Embrace", art_description: "Colorful ocean waves", available: true, styles: [subjective, landscape], artmedia: [painting, canvass, oil_paint])
leon.artworks.create(art_title: "Voyages of Imagination", art_description: "Ship embarked on journey", available: true, styles: [subjective, landscape], artmedia: [painting, canvass, oil_paint])

gizelle = Artist.create(artist_first_name: "Gizelle", artist_last_name: "v.Z",about_artist: "Gizelle v.Z is a mysterious artist who works with various media.")
gizelle.artworks.create(art_title: "Weathered Boat", art_description: "Black and white weathered boat", available: true, styles: [black_and_white], artmedia: [photography])
gizelle.artworks.create(art_title: "Wreckage", art_description: "Wrecked remains of a boat", available: true, styles: [black_and_white], artmedia: [photography])

toko = Artist.create(artist_first_name: "Toko", artist_last_name: "Suzuki", about_artist: "Toko Suzuki is a digital artist and skilled at drawing. Japanese born in NY, currently based in Sydney, Australia. Mostly working digitally and sometimes traditionally.")
toko.artworks.create(art_title: "Backlight", art_description: "Faded image capturing the light", available: true, styles: [figurative, portrait], artmedia: [digital])
toko.artworks.create(art_title: "Real Time", art_description: "After Jeremy Mann", available: true, styles: [figurative, portrait], artmedia: [digital])
toko.artworks.create(art_title: "WangjieLi", art_description: "After Wangjie Li", available: true, styles: [figurative, portrait], artmedia: [digital])

steve = Artist.create(artist_first_name: "Steve", artist_last_name: "Johnson", about_artist: "Steve Johnson is a UK born visual abstract artist who does painting, digital art, photography, collage, video compositing and mixed media works. He has worked as a commercial artist on various projects, shown on both sides of the Atlantic and taught in the UK, US and various parts of the Middle East.")
steve.artworks.create(art_title: "No. 1", art_description: "First in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "No. 2", art_description: "Second in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "No. 3", art_description: "Third in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "No. 4", art_description: "Fourth in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "No. 5", art_description: "Fifth in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "No. 6", art_description: "Sixth in series", available: true, styles: [abstract], artmedia: [painting, canvass])
steve.artworks.create(art_title: "Droplet", art_description: "Mosaic droplet", available: true, styles: [abstract, geometric], artmedia: [photography])