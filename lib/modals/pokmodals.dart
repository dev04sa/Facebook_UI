// // To parse this JSON data, do
// //
// //     final samplePosts = samplePostsFromJson(jsonString);
//
// import 'dart:convert';
//
// List<SamplePosts> samplePostsFromJson(String str) => List<SamplePosts>.from(json.decode(str).map((x) => SamplePosts.fromJson(x)));
//
// String samplePostsToJson(List<SamplePosts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class SamplePosts {
//     int id;
//     String height;
//     String weight;
//     String baseExperience;
//     String description;
//     List<String> types;
//     String name;
//     String image;
//     List<Evolution> evolutions;
//
//     SamplePosts({
//         required this.id,
//         required this.height,
//         required this.weight,
//         required this.baseExperience,
//         required this.description,
//         required this.types,
//         required this.name,
//         required this.image,
//         required this.evolutions,
//     });
//
//     factory SamplePosts.fromJson(Map<String, dynamic> json) => SamplePosts(
//         id: json["id"],
//         height: json["height"],
//         weight: json["weight"],
//         baseExperience: json["base_experience"],
//         description: json["description"],
//         types: List<String>.from(json["types"].map((x) => x)),
//         name: json["name"],
//         image: json["image"],
//         evolutions: List<Evolution>.from(json["evolutions"].map((x) => Evolution.fromJson(x))),
//     );
//
//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "height": height,
//         "weight": weight,
//         "base_experience": baseExperience,
//         "description": description,
//         "types": List<dynamic>.from(types.map((x) => x)),
//         "name": name,
//         "image": image,
//         "evolutions": List<dynamic>.from(evolutions.map((x) => x.toJson())),
//     };
// }
//
// class Evolution {
//     int id;
//     String name;
//     int? from;
//     dynamic trigger;
//     int? triggerLvl;
//     TriggerItem? triggerItem;
//
//     Evolution({
//         required this.id,
//         required this.name,
//         this.from,
//         this.trigger,
//         this.triggerLvl,
//         this.triggerItem,
//     });
//
//     factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
//         id: json["id"],
//         name: json["name"],
//         from: json["from"],
//         trigger: json["trigger"],
//         triggerLvl: json["trigger_lvl"],
//         triggerItem: triggerItemValues.map[json["trigger_item"]]!,
//     );
//
//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "from": from,
//         "trigger": trigger,
//         "trigger_lvl": triggerLvl,
//         "trigger_item": triggerItemValues.reverse[triggerItem],
//     };
// }
//
// enum TriggerEnum { LEVELING, ITEM, TRADE }
//
// final triggerEnumValues = EnumValues({
//     "item": TriggerEnum.ITEM,
//     "leveling": TriggerEnum.LEVELING,
//     "trade": TriggerEnum.TRADE
// });
//
// enum TriggerItem { THUNDER_STONE, MOON_STONE, FIRE_STONE, LEAF_STONE, SUN_STONE, WATER_STONE }
//
// final triggerItemValues = EnumValues({
//     "fire-stone": TriggerItem.FIRE_STONE,
//     "leaf-stone": TriggerItem.LEAF_STONE,
//     "moon-stone": TriggerItem.MOON_STONE,
//     "sun-stone": TriggerItem.SUN_STONE,
//     "thunder-stone": TriggerItem.THUNDER_STONE,
//     "water-stone": TriggerItem.WATER_STONE
// });
//
// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;
//
//     EnumValues(this.map);
//
//     Map<T, String> get reverse {
//         reverseMap = map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }
