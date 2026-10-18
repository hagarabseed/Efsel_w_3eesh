class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

const List<Movie> movies = [
  Movie(
    title: "3 Idiots",
    genre: "Comedy, Drama",
    year: 2009,
    rating: 8.4,
    image: "assets/3idiots.jpg",
  ),
  Movie(
    title: "Interstellar",
    genre: "Sci-Fi, Adventure, Drama",
    year: 2014,
    rating: 8.7,
    image: "assets/interstellar.jpg",
  ),
  Movie(
    title: "Enola Holme",
    genre: "Action, Adventure, Crime",
    year: 2020,
    rating: 6.6,
    image: "assets/Enola Holmes.png",
  ),
  Movie(
    title: "Wonder",
    genre: "Drama, Family",
    year: 2017,
    rating: 7.9,
    image: "assets/Wonder.png",
  ),
  Movie(
    title: "Hichki",
    genre: "Comedy, Drama",
    year: 2018,
    rating: 7.5,
    image: "assets/Hichki.jpeg",
  ),
  Movie(
    title: "The Pursuit of Happyness",
    genre: "Drama",
    year: 2006,
    rating: 8.0,
    image: "assets/The pursuit of happyness.png",
  ),
  Movie(
    title: "Dangal",
    genre: "Sport, Action, Comedy",
    year: 2016,
    rating: 8.3,
    image: "assets/Dangal.png",
  ),
  Movie(
    title: "Bajrangi Bhaijaan",
    genre: "Action, Adventure, Comedy",
    year: 2015,
    rating: 8.1,
    image: "assets/Bajragi Bhaijaan.jpg",
  ),
  Movie(
    title: "Charlie and the Chocolate Factory",
    genre: "Adventure, Comedy, Family",
    year: 2005,
    rating: 6.7,
    image: "assets/Charlie and the chocolate factory.png",
  ),
  Movie(
    title: "Hacksaw Ridge",
    genre: "Biographical, Drama, War",
    year: 2016,
    rating: 8.1,
    image: "assets/Hacksaw Ridge.png",
  ),
  Movie(
    title: "Jumanji",
    genre: "Adventure, Comedy, Family",
    year: 1995,
    rating: 7.1,
    image: "assets/Jumanji.png",
  ),
  Movie(
    title: "Men of Honor",
    genre: "Biography, Drama",
    year: 2000,
    rating: 7.2,
    image: "assets/Men of honor.png",
  ),
  Movie(
    title: "Taare Zameen Par",
    genre: "Drama, Family",
    year: 2007,
    rating: 8.3,
    image: "assets/tAAre zameeN Par.png",
  ),
  Movie(
    title: "Whiplash",
    genre: "Drama, Music",
    year: 2014,
    rating: 8.5,
    image: "assets/Whiplash.png",
  ),
  Movie(
    title: "The Karate Kid",
    genre: "Action, Drama, Family",
    year: 2010,
    rating: 6.2,
    image: "assets/The Karate kid.png",
  ),
];