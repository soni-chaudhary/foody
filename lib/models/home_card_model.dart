// class Recipe {
//   late String? name;
//   late String? detains;
//   late String? images;
//   late String? rating;
//   late String? totleAmount;
//   Recipe({this.name, this.detains, this.images, this.rating, this.totleAmount});
//   factory Recipe.fromJson(dynamic json) {
//     return Recipe(name: json["name"] as String, images: json["images"][0][""]);
//   }
// }

class Topimage {
  late String? name;
  late String? detains;
  late String? img;
  late int? rating;
  late int? totleAmount;
  Topimage({this.name, this.detains, this.img, this.rating, this.totleAmount});
}
