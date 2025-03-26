class Users {
  late String name;
  late String image;
  late int points;
  late int rank;

  Users({required this.image,required this.points,required this.name,required this.rank});

}

List<Users>UserItems=[
  Users(image: 'images/hashirama.jpg', points: 10000, name: 'Hashirama', rank: 4),
  Users(image: 'images/madara.jpg', points: 9500, name: 'Madara', rank: 5),
  Users(image: 'images/levi.jpg', points: 8000, name: 'Levi', rank: 6),
  Users(image: 'images/tobirama.png', points: 8500, name: 'Tobirama', rank: 7),
  Users(image: 'images/hinata.jpg', points: 7000, name: 'Hinata', rank: 8),
  Users(image: 'images/mikasa.jpg', points: 7500, name: 'Mikasa', rank: 9),
  Users(image: 'images/armin.jpg', points: 6000 ,name: 'Armin', rank: 10),
  Users(image: 'images/kakashi.png', points: 6500, name: 'Kakashi', rank: 11),
  Users(image: 'images/obito.png', points: 6200, name: 'Obito', rank: 12),
  Users(image: 'images/erwin.jpg', points: 6004, name: 'Erwin', rank: 13),
];