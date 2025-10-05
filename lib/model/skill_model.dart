class Skills{
  final String name;
  final String level;
  final String image;

  Skills({required this.name, required this.level, required this.image});
  factory Skills.fromJson(Map<String, dynamic>json)=>Skills(
      name: json['name'],
      level: json['level'],
      image: json['image']);
}