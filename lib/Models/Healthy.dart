class Healthy {
  String? title;
  String? description;
  String? shortDescription;
  int? price;
  String? image;
  String? mealType;
  String? dietaryType;
  int? prepTime;
  int? calories;
  int? totalCarbohydrate;
  int? protein;
  int? viewsNumber;
  String? ingredients;
  String? preparationMethod;
  int? ratePercentage;
  String? createdDate;
  Null? isFeatured;
  List<Null>? rate;
  List<Null>? mealHealthy;
  List<Files>? files;
  String? id;

  Healthy(
      {this.title,
      this.description,
      this.shortDescription,
      this.price,
      this.image,
      this.mealType,
      this.dietaryType,
      this.prepTime,
      this.calories,
      this.totalCarbohydrate,
      this.protein,
      this.viewsNumber,
      this.ingredients,
      this.preparationMethod,
      this.ratePercentage,
      this.createdDate,
      this.isFeatured,
      this.rate,
      this.mealHealthy,
      this.files,
      this.id});

  Healthy.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    price = json['price'];
    image = json['image'];
    mealType = json['mealType'];
    dietaryType = json['dietaryType'];
    prepTime = json['prepTime'];
    calories = json['calories'];
    totalCarbohydrate = json['total_Carbohydrate'];
    protein = json['protein'];
    viewsNumber = json['viewsNumber'];
    ingredients = json['ingredients'];
    preparationMethod = json['preparationMethod'];
    ratePercentage = json['ratePercentage'];
    createdDate = json['createdDate'];
    isFeatured = json['isFeatured'];
    if (json['rate'] != null) {
      rate = <Null>[];
      json['rate'].forEach((v) {
        //      rate!.add(new Null.fromJson(v));
      });
    }
    if (json['meal_Healthy'] != null) {
      mealHealthy = <Null>[];
      json['meal_Healthy'].forEach((v) {
        //   mealHealthy!.add(new Null.fromJson(v));
      });
    }
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files!.add(new Files.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['shortDescription'] = this.shortDescription;
    data['price'] = this.price;
    data['image'] = this.image;
    data['mealType'] = this.mealType;
    data['dietaryType'] = this.dietaryType;
    data['prepTime'] = this.prepTime;
    data['calories'] = this.calories;
    data['total_Carbohydrate'] = this.totalCarbohydrate;
    data['protein'] = this.protein;
    data['viewsNumber'] = this.viewsNumber;
    data['ingredients'] = this.ingredients;
    data['preparationMethod'] = this.preparationMethod;
    data['ratePercentage'] = this.ratePercentage;
    data['createdDate'] = this.createdDate;
    data['isFeatured'] = this.isFeatured;
    if (this.rate != null) {
      //   data['rate'] = this.rate!.map((v) => v.toJson()).toList();
    }
    if (this.mealHealthy != null) {
      //   data['meal_Healthy'] = this.mealHealthy!.map((v) => v.toJson()).toList();
    }
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class Files {
  String? path;
  Null? serviceId;
  Null? service;
  String? healthyId;
  Null? healthy;
  String? id;

  Files(
      {this.path,
      this.serviceId,
      this.service,
      this.healthyId,
      this.healthy,
      this.id});

  Files.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    serviceId = json['serviceId'];
    service = json['service'];
    healthyId = json['healthyId'];
    healthy = json['healthy'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['serviceId'] = this.serviceId;
    data['service'] = this.service;
    data['healthyId'] = this.healthyId;
    data['healthy'] = this.healthy;
    data['id'] = this.id;
    return data;
  }
}
