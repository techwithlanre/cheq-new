import 'dart:ui';

class Feature {
  String? title;
  String? icon;
  Color? color;
  Function? onClick;

  Feature({this.title, this.icon, this.color, this.onClick});

  Feature.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    color = json['color'];
    onClick = json['onClick'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['icon'] = icon;
    data['color'] = color;
    data['onClick'] = onClick;
    return data;
  }
}
