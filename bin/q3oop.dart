class Movie {
  String title;

  String studio;

  String rating;

  Movie(this.title, this.studio, [this.rating = 'PG']);

  List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];

    for (Movie m in movies) {
      if (m.rating.contains('PG')) {
        result.add(m);
      }
    }

    return result;
  }
}

void main(){
  Movie m1 = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie m2 = Movie('A', 'b', 'PG');
  List<Movie>movies=[m1,m2];
  List<Movie> pgMovies = m1.getPG(movies);
  for (Movie m in pgMovies) {
    print(m.title);
  }

}