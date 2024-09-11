void main() {
  List<Movie> listMovies = getMovies();

  // Imprime os filmes filtrados.
  filter(listMovies).forEach((movie) => print(movie));
}

List<Movie> filter(List<Movie> database) {
  // TODO: Retorne aqui sua lista filtrada.
  return [];
}

class Movie {
  String id;
  String name;
  int? releaseYear;
  List<String> listDirectors;
  List<String> listActors;
  String? producer;
  List<Dvd> listCopies;

  Movie({
    required this.id,
    required this.name,
    this.releaseYear,
    this.producer,
  })  : this.listDirectors = [],
        this.listActors = [],
        this.listCopies = [];
}

class Dvd {
  String id;
  String movieId;
  bool isAvailable;

  Dvd({required this.id, required this.movieId, required this.isAvailable});
}

List<Movie> getMovies() {
  return [
    Movie(
      id: "41",
      name: "Requiem for a Dream",
      releaseYear: 2000,
      producer: "Eric Watson",
    )
      ..listDirectors.addAll(['Darren Aronofsky'])
      ..listActors.addAll(['Ellen Burstyn', 'Jared Leto', 'Jennifer Connelly'])
      ..listCopies.addAll([
        Dvd(id: "41_1", movieId: "41", isAvailable: true),
        Dvd(id: "41_2", movieId: "41", isAvailable: false),
      ]),
    Movie(
      id: "42",
      name: "The Truman Show",
      releaseYear: 1998,
      producer: "Scott Rudin",
    )
      ..listDirectors.addAll(['Peter Weir'])
      ..listActors.addAll(['Jim Carrey', 'Ed Harris', 'Laura Linney'])
      ..listCopies.addAll([
        Dvd(id: "42_1", movieId: "42", isAvailable: true),
        Dvd(id: "42_2", movieId: "42", isAvailable: false),
      ]),
    Movie(
      id: "43",
      name: "Die Hard",
      releaseYear: 1988,
      producer: "Joel Silver",
    )
      ..listDirectors.addAll(['John McTiernan'])
      ..listActors.addAll(['Bruce Willis', 'Alan Rickman', 'Bonnie Bedelia'])
      ..listCopies.addAll([
        Dvd(id: "43_1", movieId: "43", isAvailable: true),
        Dvd(id: "43_2", movieId: "43", isAvailable: false),
      ]),
    Movie(
      id: "44",
      name: "The Sixth Sense",
      releaseYear: 1999,
      producer: "Barry Mendel",
    )
      ..listDirectors.addAll(['M. Night Shyamalan'])
      ..listActors
          .addAll(['Bruce Willis', 'Haley Joel Osment', 'Toni Collette'])
      ..listCopies.addAll([
        Dvd(id: "44_1", movieId: "44", isAvailable: true),
        Dvd(id: "44_2", movieId: "44", isAvailable: false),
      ]),
    Movie(
      id: "45",
      name: "The Terminator",
      releaseYear: 1984,
      producer: "Gale Anne Hurd",
    )
      ..listDirectors.addAll(['James Cameron'])
      ..listActors
          .addAll(['Arnold Schwarzenegger', 'Linda Hamilton', 'Michael Biehn'])
      ..listCopies.addAll([
        Dvd(id: "45_1", movieId: "45", isAvailable: true),
        Dvd(id: "45_2", movieId: "45", isAvailable: false),
      ]),
    Movie(
      id: "46",
      name: "Eternal Sunshine of the Spotless Mind",
      releaseYear: 2004,
      producer: "Anthony Bregman",
    )
      ..listDirectors.addAll(['Michel Gondry'])
      ..listActors.addAll(['Jim Carrey', 'Kate Winslet', 'Tom Wilkinson'])
      ..listCopies.addAll([
        Dvd(id: "46_1", movieId: "46", isAvailable: true),
        Dvd(id: "46_2", movieId: "46", isAvailable: false),
      ]),
    Movie(
      id: "47",
      name: "Blade Runner",
      releaseYear: 1982,
      producer: "Michael Deeley",
    )
      ..listDirectors.addAll(['Ridley Scott'])
      ..listActors.addAll(['Harrison Ford', 'Rutger Hauer', 'Sean Young'])
      ..listCopies.addAll([
        Dvd(id: "47_1", movieId: "47", isAvailable: true),
        Dvd(id: "47_2", movieId: "47", isAvailable: false),
      ]),
    Movie(
      id: "48",
      name: "Scarface",
      releaseYear: 1983,
      producer: "Martin Bregman",
    )
      ..listDirectors.addAll(['Brian De Palma'])
      ..listActors.addAll(['Al Pacino', 'Michelle Pfeiffer', 'Steven Bauer'])
      ..listCopies.addAll([
        Dvd(id: "48_1", movieId: "48", isAvailable: true),
        Dvd(id: "48_2", movieId: "48", isAvailable: false),
      ]),
    Movie(
      id: "49",
      name: "Pan's Labyrinth",
      releaseYear: 2006,
      producer: "Guillermo del Toro",
    )
      ..listDirectors.addAll(['Guillermo del Toro'])
      ..listActors.addAll(['Ivana Baquero', 'Ariadna Gil', 'Sergi López'])
      ..listCopies.addAll([
        Dvd(id: "49_1", movieId: "49", isAvailable: true),
        Dvd(id: "49_2", movieId: "49", isAvailable: false),
      ]),
    Movie(
      id: "50",
      name: "Donnie Darko",
      releaseYear: 2001,
      producer: "Adam Fields",
    )
      ..listDirectors.addAll(['Richard Kelly'])
      ..listActors.addAll(['Jake Gyllenhaal', 'Jena Malone', 'Mary McDonnell'])
      ..listCopies.addAll([
        Dvd(id: "50_1", movieId: "50", isAvailable: true),
        Dvd(id: "50_2", movieId: "50", isAvailable: false),
      ]),
    Movie(
      id: "51",
      name: "The Big Lebowski",
      releaseYear: 1998,
      producer: "Ethan Coen",
    )
      ..listDirectors.addAll(['Joel Coen'])
      ..listActors.addAll(['Jeff Bridges', 'John Goodman', 'Julianne Moore'])
      ..listCopies.addAll([
        Dvd(id: "51_1", movieId: "51", isAvailable: true),
        Dvd(id: "51_2", movieId: "51", isAvailable: false),
      ]),
    Movie(
      id: "52",
      name: "Taxi Driver",
      releaseYear: 1976,
      producer: "Michael Phillips",
    )
      ..listDirectors.addAll(['Martin Scorsese'])
      ..listActors.addAll(['Robert De Niro', 'Jodie Foster', 'Cybill Shepherd'])
      ..listCopies.addAll([
        Dvd(id: "52_1", movieId: "52", isAvailable: true),
        Dvd(id: "52_2", movieId: "52", isAvailable: false),
      ]),
    Movie(
      id: "53",
      name: "Good Will Hunting",
      releaseYear: 1997,
      producer: "Lawrence Bender",
    )
      ..listDirectors.addAll(['Gus Van Sant'])
      ..listActors.addAll(['Robin Williams', 'Matt Damon', 'Ben Affleck'])
      ..listCopies.addAll([
        Dvd(id: "53_1", movieId: "53", isAvailable: true),
        Dvd(id: "53_2", movieId: "53", isAvailable: false),
      ]),
    Movie(
      id: "54",
      name: "Slumdog Millionaire",
      releaseYear: 2008,
      producer: "Christian Colson",
    )
      ..listDirectors.addAll(['Danny Boyle'])
      ..listActors.addAll(['Dev Patel', 'Freida Pinto', 'Saurabh Shukla'])
      ..listCopies.addAll([
        Dvd(id: "54_1", movieId: "54", isAvailable: true),
        Dvd(id: "54_2", movieId: "54", isAvailable: false),
      ]),
    Movie(
      id: "55",
      name: "Full Metal Jacket",
      releaseYear: 1987,
      producer: "Stanley Kubrick",
    )
      ..listDirectors.addAll(['Stanley Kubrick'])
      ..listActors
          .addAll(['Matthew Modine', 'R. Lee Ermey', "Vincent D'Onofrio"])
      ..listCopies.addAll([
        Dvd(id: "55_1", movieId: "55", isAvailable: true),
        Dvd(id: "55_2", movieId: "55", isAvailable: false),
      ]),
    Movie(
      id: "56",
      name: "A Clockwork Orange",
      releaseYear: 1971,
      producer: "Stanley Kubrick",
    )
      ..listDirectors.addAll(['Stanley Kubrick'])
      ..listActors
          .addAll(['Malcolm McDowell', 'Patrick Magee', 'Michael Bates'])
      ..listCopies.addAll([
        Dvd(id: "56_1", movieId: "56", isAvailable: true),
        Dvd(id: "56_2", movieId: "56", isAvailable: false),
      ]),
    Movie(
      id: "57",
      name: "Raging Bull",
      releaseYear: 1980,
      producer: "Irwin Winkler",
    )
      ..listDirectors.addAll(['Martin Scorsese'])
      ..listActors.addAll(['Robert De Niro', 'Cathy Moriarty', 'Joe Pesci'])
      ..listCopies.addAll([
        Dvd(id: "57_1", movieId: "57", isAvailable: true),
        Dvd(id: "57_2", movieId: "57", isAvailable: false),
      ]),
    Movie(
      id: "58",
      name: "The Bridge on the River Kwai",
      releaseYear: 1957,
      producer: "Sam Spiegel",
    )
      ..listDirectors.addAll(['David Lean'])
      ..listActors.addAll(['William Holden', 'Alec Guinness', 'Jack Hawkins'])
      ..listCopies.addAll([
        Dvd(id: "58_1", movieId: "58", isAvailable: true),
        Dvd(id: "58_2", movieId: "58", isAvailable: false),
      ]),
    Movie(
      id: "59",
      name: "Lawrence of Arabia",
      releaseYear: 1962,
      producer: "Sam Spiegel",
    )
      ..listDirectors.addAll(['David Lean'])
      ..listActors.addAll(["Peter O'Toole", 'Alec Guinness', 'Anthony Quinn'])
      ..listCopies.addAll([
        Dvd(id: "59_1", movieId: "59", isAvailable: true),
        Dvd(id: "59_2", movieId: "59", isAvailable: false),
      ]),
    Movie(
      id: "60",
      name: "The Great Dictator",
      releaseYear: 1940,
      producer: "Charlie Chaplin",
    )
      ..listDirectors.addAll(['Charlie Chaplin'])
      ..listActors.addAll(['Charlie Chaplin', 'Paulette Goddard', 'Jack Oakie'])
      ..listCopies.addAll([
        Dvd(id: "60_1", movieId: "60", isAvailable: true),
        Dvd(id: "60_2", movieId: "60", isAvailable: false),
      ]),
  ];
}
