import 'package:json_annotation/json_annotation.dart';

part 'model_json_demo.g.dart';

//explicitToJson: true => Khi cac model long nhau muon toJson thi cac model long cung se dc serializable thanh json.
@JsonSerializable(explicitToJson: true)
class User {
  User(this.name, this.email);

  @JsonKey(name: 'name')
  String name;

  @JsonKey(
    name: 'email',
  )
  String email;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
