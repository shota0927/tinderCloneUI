final List<Profile> demoProfiles = [
  new Profile(
    photos: [
      "assets/Wasshy.jpg",
    ],
    name: "Washida Yuu",
    bio: "経歴：ICU卒業",
    expectedInvestment: '投資希望額：200万円',
    howToUse: '使い道：心理学の大学進学に使わせていただきたいです'

  ),
  new Profile(
    photos: [
      "assets/26167049_949588591858943_1574433155670050215_n.jpg",

    ],
    name: "Saezima Keiko",
    bio: "経歴：ICU卒業、JAL勤務",
    expectedInvestment: '投資希望額：500万円',
    howToUse: '使い道：イギリスへの留学に当てたいと思います。'
  ),

];

class Profile {
  final List<String> photos;
  final String name;
  final String bio;
  final String expectedInvestment;
  final String howToUse;

  Profile({this.photos, this.name, this.bio, this.expectedInvestment, this.howToUse});
}
