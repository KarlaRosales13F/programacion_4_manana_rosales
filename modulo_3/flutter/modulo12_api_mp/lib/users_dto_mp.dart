class UsersDto {
  final int id;
  final String name;
  final bool email;
  final String? username;

  const UsersDto({
    required this.id,
    required this.name,
    required this.email ,
    this.username,
  });

  factory UsersDto.fromJson(Map<String, dynamic> json) => UsersDto(
    id:        json['id']        as int,
    name:      json['name']      as String,
    email: json['email'] as bool,
    username:  json['username']  as String?,
  );
}
