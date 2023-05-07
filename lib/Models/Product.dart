class Product {
  String? imgUrl;
  int? discount;
  Services? services;
  String? id;

  Product({this.imgUrl, this.discount, this.services, this.id});

  Product.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    discount = json['discount'];
    services = json['services'] != null
        ? new Services.fromJson(json['services'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['discount'] = this.discount;
    if (this.services != null) {
      data['services'] = this.services!.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class Services {
  String? title;
  String? description;
  Null? shortDescription;
  int? price;
  String? categoryId;
  Category? category;
  String? id;

  Services(
      {this.title,
      this.description,
      this.shortDescription,
      this.price,
      this.categoryId,
      this.category,
      this.id});

  Services.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    price = json['price'];
    categoryId = json['categoryId'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['shortDescription'] = this.shortDescription;
    data['price'] = this.price;
    data['categoryId'] = this.categoryId;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class Category {
  String? name;
  String? target;
  Null? image;
  String? id;

  Category({this.name, this.target, this.image, this.id});

  Category.fromJson(Map<String, dynamic> json) {
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
