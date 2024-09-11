void main() {
  List<Movie> listMovies = getMovies();
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

  @override
  String toString() {
    String director = listDirectors.isNotEmpty ? listDirectors.first : 'N/A';
    String copies = listCopies.where((dvd) => dvd.isAvailable).isNotEmpty
        ? listCopies
            .where((dvd) => dvd.isAvailable)
            .map((e) => e.id)
            .join(" - ")
        : 'N/A';
    return '$id: $name, ${releaseYear ?? 'Ano desconhecido'}, Diretor: $director, Availables: $copies';
  }
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
      id: "1",
      name: "The Shawshank Redemption",
      releaseYear: 1994,
      producer: "Niki Marvin",
    )
      ..listDirectors.addAll(['Frank Darabont'])
      ..listActors.addAll(['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'])
      ..listCopies.addAll([
        Dvd(id: "1_1", movieId: "1", isAvailable: true),
        Dvd(id: "1_2", movieId: "1", isAvailable: false),
      ]),
    Movie(
      id: "2",
      name: "The Godfather",
      releaseYear: 1972,
      producer: "Albert S. Ruddy",
    )
      ..listDirectors.addAll(['Francis Ford Coppola'])
      ..listActors.addAll(['Marlon Brando', 'Al Pacino', 'James Caan'])
      ..listCopies.addAll([
        Dvd(id: "2_1", movieId: "2", isAvailable: true),
        Dvd(id: "2_2", movieId: "2", isAvailable: false),
      ]),
    Movie(
      id: "3",
      name: "The Dark Knight",
      releaseYear: 2008,
      producer: "Emma Thomas",
    )
      ..listDirectors.addAll(['Christopher Nolan'])
      ..listActors.addAll(['Christian Bale', 'Heath Ledger', 'Aaron Eckhart'])
      ..listCopies.addAll([
        Dvd(id: "3_1", movieId: "3", isAvailable: true),
        Dvd(id: "3_2", movieId: "3", isAvailable: false),
      ]),
    Movie(
      id: "4",
      name: "The Godfather: Part II",
      releaseYear: 1974,
      producer: "Francis Ford Coppola",
    )
      ..listDirectors.addAll(['Francis Ford Coppola'])
      ..listActors.addAll(['Al Pacino', 'Robert De Niro', 'Robert Duvall'])
      ..listCopies.addAll([
        Dvd(id: "4_1", movieId: "4", isAvailable: true),
        Dvd(id: "4_2", movieId: "4", isAvailable: false),
      ]),
    Movie(
      id: "5",
      name: "12 Angry Men",
      releaseYear: 1957,
      producer: "Henry Fonda",
    )
      ..listDirectors.addAll(['Sidney Lumet'])
      ..listActors.addAll(['Henry Fonda', 'Lee J. Cobb', 'Martin Balsam'])
      ..listCopies.addAll([
        Dvd(id: "5_1", movieId: "5", isAvailable: true),
        Dvd(id: "5_2", movieId: "5", isAvailable: false),
      ]),
    Movie(
      id: "6",
      name: "Schindler's List",
      releaseYear: 1993,
      producer: "Steven Spielberg",
    )
      ..listDirectors.addAll(['Steven Spielberg'])
      ..listActors.addAll(['Liam Neeson', 'Ralph Fiennes', 'Ben Kingsley'])
      ..listCopies.addAll([
        Dvd(id: "6_1", movieId: "6", isAvailable: true),
        Dvd(id: "6_2", movieId: "6", isAvailable: false),
      ]),
    Movie(
      id: "7",
      name: "Pulp Fiction",
      releaseYear: 1994,
      producer: "Lawrence Bender",
    )
      ..listDirectors.addAll(['Quentin Tarantino'])
      ..listActors.addAll(['John Travolta', 'Uma Thurman', 'Samuel L. Jackson'])
      ..listCopies.addAll([
        Dvd(id: "7_1", movieId: "7", isAvailable: true),
        Dvd(id: "7_2", movieId: "7", isAvailable: false),
      ]),
    Movie(
      id: "8",
      name: "The Lord of the Rings: The Return of the King",
      releaseYear: 2003,
      producer: "Peter Jackson",
    )
      ..listDirectors.addAll(['Peter Jackson'])
      ..listActors.addAll(['Elijah Wood', 'Viggo Mortensen', 'Ian McKellen'])
      ..listCopies.addAll([
        Dvd(id: "8_1", movieId: "8", isAvailable: true),
        Dvd(id: "8_2", movieId: "8", isAvailable: false),
      ]),
    Movie(
      id: "9",
      name: "The Good, the Bad and the Ugly",
      releaseYear: 1966,
      producer: "Alberto Grimaldi",
    )
      ..listDirectors.addAll(['Sergio Leone'])
      ..listActors.addAll(['Clint Eastwood', 'Eli Wallach', 'Lee Van Cleef'])
      ..listCopies.addAll([
        Dvd(id: "9_1", movieId: "9", isAvailable: true),
        Dvd(id: "9_2", movieId: "9", isAvailable: false),
      ]),
    Movie(
      id: "10",
      name: "Fight Club",
      releaseYear: 1999,
      producer: "Art Linson",
    )
      ..listDirectors.addAll(['David Fincher'])
      ..listActors
          .addAll(['Brad Pitt', 'Edward Norton', 'Helena Bonham Carter'])
      ..listCopies.addAll([
        Dvd(id: "10_1", movieId: "10", isAvailable: true),
        Dvd(id: "10_2", movieId: "10", isAvailable: false),
      ]),
    Movie(
      id: "11",
      name: "Forrest Gump",
      releaseYear: 1994,
      producer: "Wendy Finerman",
    )
      ..listDirectors.addAll(['Robert Zemeckis'])
      ..listActors.addAll(['Tom Hanks', 'Robin Wright', 'Gary Sinise'])
      ..listCopies.addAll([
        Dvd(id: "11_1", movieId: "11", isAvailable: true),
        Dvd(id: "11_2", movieId: "11", isAvailable: false),
      ]),
    Movie(
      id: "12",
      name: "Inception",
      releaseYear: 2010,
      producer: "Emma Thomas",
    )
      ..listDirectors.addAll(['Christopher Nolan'])
      ..listActors
          .addAll(['Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Ellen Page'])
      ..listCopies.addAll([
        Dvd(id: "12_1", movieId: "12", isAvailable: true),
        Dvd(id: "12_2", movieId: "12", isAvailable: false),
      ]),
    Movie(
      id: "13",
      name: "The Matrix",
      releaseYear: 1999,
      producer: "Joel Silver",
    )
      ..listDirectors.addAll(['The Wachowskis'])
      ..listActors
          .addAll(['Keanu Reeves', 'Laurence Fishburne', 'Carrie-Anne Moss'])
      ..listCopies.addAll([
        Dvd(id: "13_1", movieId: "13", isAvailable: true),
        Dvd(id: "13_2", movieId: "13", isAvailable: false),
      ]),
    Movie(
      id: "14",
      name: "Goodfellas",
      releaseYear: 1990,
      producer: "Irwin Winkler",
    )
      ..listDirectors.addAll(['Martin Scorsese'])
      ..listActors.addAll(['Robert De Niro', 'Ray Liotta', 'Joe Pesci'])
      ..listCopies.addAll([
        Dvd(id: "14_1", movieId: "14", isAvailable: true),
        Dvd(id: "14_2", movieId: "14", isAvailable: false),
      ]),
    Movie(
      id: "15",
      name: "The Empire Strikes Back",
      releaseYear: 1980,
      producer: "Gary Kurtz",
    )
      ..listDirectors.addAll(['Irvin Kershner'])
      ..listActors.addAll(['Mark Hamill', 'Harrison Ford', 'Carrie Fisher'])
      ..listCopies.addAll([
        Dvd(id: "15_1", movieId: "15", isAvailable: true),
        Dvd(id: "15_2", movieId: "15", isAvailable: false),
      ]),
    Movie(
      id: "16",
      name: "One Flew Over the Cuckoo's Nest",
      releaseYear: 1975,
      producer: "Saul Zaentz",
    )
      ..listDirectors.addAll(['Milos Forman'])
      ..listActors.addAll(['Jack Nicholson', 'Louise Fletcher', 'Danny DeVito'])
      ..listCopies.addAll([
        Dvd(id: "16_1", movieId: "16", isAvailable: true),
        Dvd(id: "16_2", movieId: "16", isAvailable: false),
      ]),
    Movie(
      id: "17",
      name: "Seven Samurai",
      releaseYear: 1954,
      producer: "Sôjirô Motoki",
    )
      ..listDirectors.addAll(['Akira Kurosawa'])
      ..listActors
          .addAll(['Toshirô Mifune', 'Takashi Shimura', 'Keiko Tsushima'])
      ..listCopies.addAll([
        Dvd(id: "17_1", movieId: "17", isAvailable: true),
        Dvd(id: "17_2", movieId: "17", isAvailable: false),
      ]),
    Movie(
      id: "18",
      name: "The Silence of the Lambs",
      releaseYear: 1991,
      producer: "Kenneth Utt",
    )
      ..listDirectors.addAll(['Jonathan Demme'])
      ..listActors
          .addAll(['Jodie Foster', 'Anthony Hopkins', 'Lawrence A. Bonney'])
      ..listCopies.addAll([
        Dvd(id: "18_1", movieId: "18", isAvailable: true),
        Dvd(id: "18_2", movieId: "18", isAvailable: false),
      ]),
    Movie(
      id: "19",
      name: "Saving Private Ryan",
      releaseYear: 1998,
      producer: "Steven Spielberg",
    )
      ..listDirectors.addAll(['Steven Spielberg'])
      ..listActors.addAll(['Tom Hanks', 'Matt Damon', 'Tom Sizemore'])
      ..listCopies.addAll([
        Dvd(id: "19_1", movieId: "19", isAvailable: true),
        Dvd(id: "19_2", movieId: "19", isAvailable: false),
      ]),
    Movie(
      id: "20",
      name: "Casablanca",
      releaseYear: 1942,
      producer: "Hal B. Wallis",
    )
      ..listDirectors.addAll(['Michael Curtiz'])
      ..listActors.addAll(['Humphrey Bogart', 'Ingrid Bergman', 'Paul Henreid'])
      ..listCopies.addAll([
        Dvd(id: "20_1", movieId: "20", isAvailable: true),
        Dvd(id: "20_2", movieId: "20", isAvailable: false),
      ]),
    Movie(
      id: "21",
      name: "Back to the Future",
      releaseYear: 1985,
      producer: "Bob Gale",
    )
      ..listDirectors.addAll(['Robert Zemeckis'])
      ..listActors
          .addAll(['Michael J. Fox', 'Christopher Lloyd', 'Lea Thompson'])
      ..listCopies.addAll([
        Dvd(id: "21_1", movieId: "21", isAvailable: true),
        Dvd(id: "21_2", movieId: "21", isAvailable: false),
      ]),
    Movie(
      id: "22",
      name: "Gladiator",
      releaseYear: 2000,
      producer: "Douglas Wick",
    )
      ..listDirectors.addAll(['Ridley Scott'])
      ..listActors
          .addAll(['Russell Crowe', 'Joaquin Phoenix', 'Connie Nielsen'])
      ..listCopies.addAll([
        Dvd(id: "22_1", movieId: "22", isAvailable: false),
        Dvd(id: "22_2", movieId: "22", isAvailable: false),
      ]),
    Movie(
      id: "23",
      name: "Braveheart",
      releaseYear: 1995,
      producer: "Mel Gibson",
    )
      ..listDirectors.addAll(['Mel Gibson'])
      ..listActors.addAll(['Mel Gibson', 'Sophie Marceau', 'Patrick McGoohan'])
      ..listCopies.addAll([
        Dvd(id: "23_1", movieId: "23", isAvailable: true),
        Dvd(id: "23_2", movieId: "23", isAvailable: false),
      ]),
    Movie(
      id: "24",
      name: "The Departed",
      releaseYear: 2006,
      producer: "Brad Pitt",
    )
      ..listDirectors.addAll(['Martin Scorsese'])
      ..listActors.addAll(['Leonardo DiCaprio', 'Matt Damon', 'Jack Nicholson'])
      ..listCopies.addAll([
        Dvd(id: "24_1", movieId: "24", isAvailable: true),
        Dvd(id: "24_2", movieId: "24", isAvailable: false),
      ]),
    Movie(
      id: "25",
      name: "The Green Mile",
      releaseYear: 1999,
      producer: "Frank Darabont",
    )
      ..listDirectors.addAll(['Frank Darabont'])
      ..listActors.addAll(['Tom Hanks', 'Michael Clarke Duncan', 'David Morse'])
      ..listCopies.addAll([
        Dvd(id: "25_1", movieId: "25", isAvailable: true),
        Dvd(id: "25_2", movieId: "25", isAvailable: false),
      ]),
    Movie(
      id: "26",
      name: "Jurassic Park",
      releaseYear: 1993,
      producer: "Kathleen Kennedy",
    )
      ..listDirectors.addAll(['Steven Spielberg'])
      ..listActors.addAll(['Sam Neill', 'Laura Dern', 'Jeff Goldblum'])
      ..listCopies.addAll([
        Dvd(id: "26_1", movieId: "26", isAvailable: true),
        Dvd(id: "26_2", movieId: "26", isAvailable: false),
      ]),
    Movie(
      id: "27",
      name: "The Lion King",
      releaseYear: 1994,
      producer: "Don Hahn",
    )
      ..listDirectors.addAll(['Roger Allers', 'Rob Minkoff'])
      ..listActors
          .addAll(['Matthew Broderick', 'Jeremy Irons', 'James Earl Jones'])
      ..listCopies.addAll([
        Dvd(id: "27_1", movieId: "27", isAvailable: true),
        Dvd(id: "27_2", movieId: "27", isAvailable: false),
      ]),
    Movie(
      id: "28",
      name: "American History X",
      releaseYear: 1998,
      producer: "John Morrissey",
    )
      ..listDirectors.addAll(['Tony Kaye'])
      ..listActors
          .addAll(['Edward Norton', 'Edward Furlong', "Beverly D'Angelo"])
      ..listCopies.addAll([
        Dvd(id: "28_1", movieId: "28", isAvailable: true),
        Dvd(id: "28_2", movieId: "28", isAvailable: false),
      ]),
    Movie(
      id: "29",
      name: "Alien",
      releaseYear: 1979,
      producer: "Gordon Carroll",
    )
      ..listDirectors.addAll(['Ridley Scott'])
      ..listActors.addAll(['Sigourney Weaver', 'Tom Skerritt', 'John Hurt'])
      ..listCopies.addAll([
        Dvd(id: "29_1", movieId: "29", isAvailable: true),
        Dvd(id: "29_2", movieId: "29", isAvailable: false),
      ]),
    Movie(
      id: "30",
      name: "The Usual Suspects",
      releaseYear: 1995,
      producer: "Bryan Singer",
    )
      ..listDirectors.addAll(['Bryan Singer'])
      ..listActors.addAll(['Kevin Spacey', 'Gabriel Byrne', 'Chazz Palminteri'])
      ..listCopies.addAll([
        Dvd(id: "30_1", movieId: "30", isAvailable: true),
        Dvd(id: "30_2", movieId: "30", isAvailable: false),
      ]),
    Movie(
      id: "31",
      name: "L.A. Confidential",
      releaseYear: 1997,
      producer: "Arnon Milchan",
    )
      ..listDirectors.addAll(['Curtis Hanson'])
      ..listActors.addAll(['Kevin Spacey', 'Russell Crowe', 'Guy Pearce'])
      ..listCopies.addAll([
        Dvd(id: "31_1", movieId: "31", isAvailable: true),
        Dvd(id: "31_2", movieId: "31", isAvailable: false),
      ]),
    Movie(
      id: "32",
      name: "The Shining",
      releaseYear: 1980,
      producer: "Stanley Kubrick",
    )
      ..listDirectors.addAll(['Stanley Kubrick'])
      ..listActors.addAll(['Jack Nicholson', 'Shelley Duvall', 'Danny Lloyd'])
      ..listCopies.addAll([
        Dvd(id: "32_1", movieId: "32", isAvailable: true),
        Dvd(id: "32_2", movieId: "32", isAvailable: false),
      ]),
    Movie(
      id: "33",
      name: "The Prestige",
      releaseYear: 2006,
      producer: "Christopher Nolan",
    )
      ..listDirectors.addAll(['Christopher Nolan'])
      ..listActors
          .addAll(['Christian Bale', 'Hugh Jackman', 'Scarlett Johansson'])
      ..listCopies.addAll([
        Dvd(id: "33_1", movieId: "33", isAvailable: false),
        Dvd(id: "33_2", movieId: "33", isAvailable: false),
      ]),
    Movie(
      id: "34",
      name: "Memento",
      releaseYear: 2000,
      producer: "Suzanne Todd",
    )
      ..listDirectors.addAll(['Christopher Nolan'])
      ..listActors.addAll(['Guy Pearce', 'Carrie-Anne Moss', 'Joe Pantoliano'])
      ..listCopies.addAll([
        Dvd(id: "34_1", movieId: "34", isAvailable: true),
        Dvd(id: "34_2", movieId: "34", isAvailable: false),
      ]),
    Movie(
      id: "35",
      name: "Apocalypse Now",
      releaseYear: 1979,
      producer: "Francis Ford Coppola",
    )
      ..listDirectors.addAll(['Francis Ford Coppola'])
      ..listActors.addAll(['Martin Sheen', 'Marlon Brando', 'Robert Duvall'])
      ..listCopies.addAll([
        Dvd(id: "35_1", movieId: "35", isAvailable: true),
        Dvd(id: "35_2", movieId: "35", isAvailable: false),
      ]),
    Movie(
      id: "36",
      name: "The Pianist",
      releaseYear: 2002,
      producer: "Roman Polanski",
    )
      ..listDirectors.addAll(['Roman Polanski'])
      ..listActors
          .addAll(['Adrien Brody', 'Thomas Kretschmann', 'Frank Finlay'])
      ..listCopies.addAll([
        Dvd(id: "36_1", movieId: "36", isAvailable: true),
        Dvd(id: "36_2", movieId: "36", isAvailable: false),
      ]),
    Movie(
      id: "37",
      name: "Amadeus",
      releaseYear: 1984,
      producer: "Saul Zaentz",
    )
      ..listDirectors.addAll(['Milos Forman'])
      ..listActors
          .addAll(['F. Murray Abraham', 'Tom Hulce', 'Elizabeth Berridge'])
      ..listCopies.addAll([
        Dvd(id: "37_1", movieId: "37", isAvailable: true),
        Dvd(id: "37_2", movieId: "37", isAvailable: false),
      ]),
    Movie(
      id: "38",
      name: "Reservoir Dogs",
      releaseYear: 1992,
      producer: "Lawrence Bender",
    )
      ..listDirectors.addAll(['Quentin Tarantino'])
      ..listActors.addAll(['Harvey Keitel', 'Tim Roth', 'Michael Madsen'])
      ..listCopies.addAll([
        Dvd(id: "38_1", movieId: "38", isAvailable: true),
        Dvd(id: "38_2", movieId: "38", isAvailable: false),
      ]),
    Movie(
      id: "39",
      name: "City of God",
      releaseYear: 2002,
      producer: "Andrea Barata Ribeiro",
    )
      ..listDirectors.addAll(['Fernando Meirelles'])
      ..listActors.addAll(
          ['Alexandre Rodrigues', 'Leandro Firmino', 'Phellipe Haagensen'])
      ..listCopies.addAll([
        Dvd(id: "39_1", movieId: "39", isAvailable: true),
        Dvd(id: "39_2", movieId: "39", isAvailable: false),
      ]),
    Movie(
      id: "40",
      name: "Gone with the Wind",
      releaseYear: 1939,
      producer: "David O. Selznick",
    )
      ..listDirectors.addAll(['Victor Fleming'])
      ..listActors.addAll(['Clark Gable', 'Vivien Leigh', 'Thomas Mitchell'])
      ..listCopies.addAll([
        Dvd(id: "40_1", movieId: "40", isAvailable: true),
        Dvd(id: "40_2", movieId: "40", isAvailable: false),
      ]),
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
