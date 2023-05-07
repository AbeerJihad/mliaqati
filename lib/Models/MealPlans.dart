class MealPlans {
  int? numsubscribers;
  int? length;
  String? dietaryType;
  String? mealType;
  int? avgRecipeTime;
  String? image;
  Services? services;
  List<Null>? mealHealthy;
  String? id;

  MealPlans(
      {this.numsubscribers,
      this.length,
      this.dietaryType,
      this.mealType,
      this.avgRecipeTime,
      this.image,
      this.services,
      this.mealHealthy,
      this.id});

  MealPlans.fromJson(Map<String, dynamic> json) {
    numsubscribers = json['numsubscribers'];
    length = json['length'];
    dietaryType = json['dietaryType'];
    mealType = json['mealType'];
    avgRecipeTime = json['avgRecipeTime'];
    image = json['image'];
    services = json['services'] != null
        ? new Services.fromJson(json['services'])
        : null;
    if (json['meal_Healthy'] != null) {
      mealHealthy = <Null>[];
      json['meal_Healthy'].forEach((v) {
        //    mealHealthy!.add(new Null.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['numsubscribers'] = this.numsubscribers;
    data['length'] = this.length;
    data['dietaryType'] = this.dietaryType;
    data['mealType'] = this.mealType;
    data['avgRecipeTime'] = this.avgRecipeTime;
    data['image'] = this.image;
    if (this.services != null) {
      data['services'] = this.services!.toJson();
    }
    if (this.mealHealthy != null) {
      //   data['meal_Healthy'] = this.mealHealthy!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class Services {
  String? title;
  String? description;
  Null? shortDescription;
  double? price;
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
