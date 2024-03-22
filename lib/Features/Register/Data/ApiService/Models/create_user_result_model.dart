import 'package:hive/hive.dart';
part 'create_user_result_model.g.dart';
/// status : true
/// message : "تم التسجيل بنجاح"
/// data : {"name":"mohdammed","email":"mrmdm@gmaifl.com","phone":"349053485398345","id":63024,"image":"https://student.valuxapps.com/storage/assets/defaults/user.jpg","token":"jdiVU3eqRTtzQdlPn7kPEafnwjsrVV9lkUXClvhA0ZaHuzvpRj7Xewwqc7TShZrHtzNAlA"}
//
@HiveType(typeId: 1)
class CreateUserResultModel {
  @HiveField(0)
  bool? status;
  @HiveField(1)
  String? message;
  @HiveField(2)
  Data? data;

  CreateUserResultModel({this.status, this.message, this.data});

  CreateUserResultModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

@HiveType(typeId: 2)
class Data {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? email;
  @HiveField(2)
  String? phone;
  @HiveField(3)
  int? id;
  @HiveField(4)
  String? image;
  @HiveField(5)
  String? token;

  Data({this.name, this.email, this.phone, this.id, this.image, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    id = json['id'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['id'] = this.id;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}