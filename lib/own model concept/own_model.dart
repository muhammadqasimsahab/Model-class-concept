// class containerModel {
//   String title;

//   containerModel({required this.title});
// }

List<ContainerModelClassJason> ContainerModelList = [
  ContainerModelClassJason(string: "Web")
];

class ContainerModelClassJason {
  String? string;

  ContainerModelClassJason({this.string});

  ContainerModelClassJason.fromJson(Map<String, dynamic> json) {
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['string'] = this.string;
    return data;
  }
}
