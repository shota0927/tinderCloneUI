final List<Profile> demoProfiles = [
  new Profile(
    photos: [
      "assets/Wasshy.jpg",
      "assets/Wasshy.jpg",

    ],
    name: "Washida Yuu",
    bio: "You better swpe left",
  ),
  new Profile(
    photos: [
      "assets/photo_2.jpg",

    ],
    name: "",
    bio: "This is the person you want",
  ),
];

class Profile {
  final List<String> photos;
  final String name;
  final String bio;

  Profile({this.photos, this.name, this.bio});
}
