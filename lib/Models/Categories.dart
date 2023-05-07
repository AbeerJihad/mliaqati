class Categories {
  String? name;
  String? target;
  Null? image;
  String? id;

  Categories({this.name, this.target, this.image, this.id});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    target = json['target'];
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['target'] = this.target;
    data['image'] = this.image;
    data['id'] = this.id;
    return data;
  }
}
