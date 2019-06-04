final List<InvestorProfile> demoInvestorProfiles = [
  new InvestorProfile(
      photos: [
        "assets/James_portrait.png",
      ],
      name: "James Riney",
      bio: "経歴:Coral capital CEO",
      want_person: '投資したい人材：熱意に満ちていて世界を変えようと本気で思っている方',
      available_investment: '投資可能額：6000万円'),
  new InvestorProfile(
    photos: [
      "assets/yohei_portrait.png",
    ],
    name: "Yohei Sawayama",
    bio: "経歴：Coral　Capital Founding Partner",
    want_person: '投資したい人材：好きなことで飛び抜けた才能を持つ者',
    available_investment: '投資可能額：3000万円',
  ),
];

class InvestorProfile {
  final List<String> photos;
  final String name;
  final String bio;
  final String want_person;
  final String available_investment;

  InvestorProfile(
      {this.photos,
      this.name,
      this.bio,
      this.want_person,
      this.available_investment});
}
