require 'open-uri'
Movie.destroy_all
List.destroy_all

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  puts
  p movie_hash
  # create an instance with the hash
  Movie.create!(
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
    title: movie_hash['original_title'],
    overview: movie_hash['overview'],
    rating: movie_hash['vote_average']
  )
end
List.create!(name: 'Recommendation')

Movie.create!(
  title: "Revolution of Our Times",
  overview:
   "Throughout Hong Kong’s history, Hongkongers have fought for freedom and democracy but have yet to succeed. In 2019, a controversial extradition bill was introduced that would allow Hongkongers to be tried in mainland China. This decision spurred massive protests, riots, and resistance against heavy-handed Chinese rule over the City-State. Award-winning director Kiwi Chow documents the events to tell the story of the movement, with both a macro view of its historical context and footage and interviews from protestors on the front lines.",
  poster_url: "https://www.themoviedb.org/t/p/original/6jgyeHPha11H4nbDUJsPvDU1aI0.jpg",
  rating: 8.5
)

Movie.create!(
  title: "Mobile Suit Gundam 00: A Wakening of the Trailblazer",
  overview:
   "The year is 2314 AD, two years have passed since the defeat of the Innovators and the exposure of the A-Laws' crimes against humanity. The A-Laws have been abolished and their infrastructure integrated into the Earth Sphere Federation Army. However, the world's exposure to GN Particles has resulted in many people awakening as True Innovators. Celestial Being has returned to the shadows to rebuild and quietly observe the infantile peace. However, an abandoned probe from an expedition to Jupiter 130 years ago approaches Earth bringing a new crisis with it, one that threatens all of mankind. While Celestial Being begins their final mission to save humanity from an unimaginable threat, Gundam Meister Setsuna F. Seiei is about to discover the true purpose of his evolution as an Innovator. Aeolia Schenberg's plan has moved into its final stage...",
  poster_url: "https://www.themoviedb.org/t/p/original/pGfKtbinKYzsfwVVTF628nQtVL8.jpg",
  rating: 8.2,
)

Movie.create!(
  title: "How to Forget Sadness: Documentary of Nogizaka46",
  overview:
   "A documentary about Japanese idol group Nogizaka46. 'A method to forget sadness' will show how the Nogizaka46's members were, how they really felt, and how they strived while facing the cruel world of showbiz. How were their lives off the screen? Well, find out by yourself.",
  poster_url: "https://www.themoviedb.org/t/p/original/vtXrn1VHZUAtetIWrlxybEGPlXV.jpg",
  rating: 8.5,
)

puts "finished"
