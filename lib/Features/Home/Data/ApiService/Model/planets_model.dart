import 'package:hive/hive.dart';
part 'planets_model.g.dart';

/// -- MODEL
/// planetOrder : 1
/// name : "Mercury"
/// description : "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets."
/// basicDetails : {"volume":"6.083 x 10^10 km^3","mass":"3.3011 x 10^23 kg"}
/// source : "Wikipedia"
/// wikiLink : "https://en.wikipedia.org/wiki/Mercury_(planet)"
/// imgSrc : {"img":"https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg","imgDescription":"Mercury in true color (by MESSENGER in 2008)"}
/// id : 1

@HiveType(typeId: 0)
class PlanetsModel {

  @HiveField(0)
  num? _planetOrder;

  @HiveField(1)
  String? _name;

  @HiveField(2)
  String? _description;

  @HiveField(3)
  String? _source;

  @HiveField(4)
  String? _wikiLink;

  @HiveField(5)
  String? _imgSrc;

  @HiveField(6)
  num? _id;

  PlanetsModel({
      num? planetOrder, 
      String? name, 
      String? description, 
      String? source,
      String? wikiLink, 
      String? imgSrc,
      num? id,}){
    _planetOrder = planetOrder;
    _name = name;
    _description = description;
    _source = source;
    _wikiLink = wikiLink;
    _imgSrc = imgSrc;
    _id = id;
}

  PlanetsModel.fromJson(dynamic json) {
    _planetOrder = json['planetOrder'];
    _name = json['name'];
    _description = json['description'];
    _source = json['source'];
    _wikiLink = json['wikiLink'];
    _imgSrc = json['imgSrc']['img'];
    _id = json['id'];
  }


  num? get planetOrder => _planetOrder;
  String? get name => _name;
  String? get description => _description;
  String? get source => _source;
  String? get wikiLink => _wikiLink;
  String? get imgSrc => _imgSrc;
  num? get id => _id;


}
