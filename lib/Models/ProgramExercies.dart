class ProgramExercies {
  String? id;
  String? exerciseId;
  Exercise? exercise;
  String? sportsProgramId;
  int? day;
  int? week;
  SportsProgram? sportsProgram;

  ProgramExercies(
      {this.id,
      this.exerciseId,
      this.exercise,
      this.sportsProgramId,
      this.day,
      this.week,
      this.sportsProgram});

  ProgramExercies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    exerciseId = json['exerciseId'];
    exercise = json['exercise'] != null
        ? new Exercise.fromJson(json['exercise'])
        : null;
    sportsProgramId = json['sportsProgramId'];
    day = json['day'];
    week = json['week'];
    sportsProgram = json['sportsProgram'] != null
        ? new SportsProgram.fromJson(json['sportsProgram'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['exerciseId'] = this.exerciseId;
    if (this.exercise != null) {
      data['exercise'] = this.exercise!.toJson();
    }
    data['sportsProgramId'] = this.sportsProgramId;
    data['day'] = this.day;
    data['week'] = this.week;
    if (this.sportsProgram != null) {
      data['sportsProgram'] = this.sportsProgram!.toJson();
    }
    return data;
  }
}

class Exercise {
  String? id;
  String? title;
  String? bodyFocus;
  String? shortDescription;
  int? duration;
  int? difficulty;
  String? detail;
  String? traningType;
  String? equipments;
  String? image;
  String? video;
  int? price;
  String? burnEstimate;
  String? exerciseDate;
  int? ratePercentage;
  List<Rate>? rate;

  Exercise(
      {this.id,
      this.title,
      this.bodyFocus,
      this.shortDescription,
      this.duration,
      this.difficulty,
      this.detail,
      this.traningType,
      this.equipments,
      this.image,
      this.video,
      this.price,
      this.burnEstimate,
      this.exerciseDate,
      this.ratePercentage,
      this.rate});

  Exercise.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    bodyFocus = json['bodyFocus'];
    shortDescription = json['shortDescription'];
    duration = json['duration'];
    difficulty = json['difficulty'];
    detail = json['detail'];
    traningType = json['traningType'];
    equipments = json['equipments'];
    image = json['image'];
    video = json['video'];
    price = json['price'];
    burnEstimate = json['burnEstimate'];
    exerciseDate = json['exerciseDate'];
    ratePercentage = json['ratePercentage'];
    if (json['rate'] != null) {
      rate = <Rate>[];
      json['rate'].forEach((v) {
        rate!.add(new Rate.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['bodyFocus'] = this.bodyFocus;
    data['shortDescription'] = this.shortDescription;
    data['duration'] = this.duration;
    data['difficulty'] = this.difficulty;
    data['detail'] = this.detail;
    data['traningType'] = this.traningType;
    data['equipments'] = this.equipments;
    data['image'] = this.image;
    data['video'] = this.video;
    data['price'] = this.price;
    data['burnEstimate'] = this.burnEstimate;
    data['exerciseDate'] = this.exerciseDate;
    data['ratePercentage'] = this.ratePercentage;
    if (this.rate != null) {
      data['rate'] = this.rate!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rate {
  String? id;
  String? type;
  int? review;
  String? reviewDate;
  String? orderDetailsId;
  OrderDetails? orderDetails;
  String? exerciseId;
  String? exercise;
  String? healthyRecipeId;
  HealthyRecipe? healthyRecipe;

  Rate(
      {this.id,
      this.type,
      this.review,
      this.reviewDate,
      this.orderDetailsId,
      this.orderDetails,
      this.exerciseId,
      this.exercise,
      this.healthyRecipeId,
      this.healthyRecipe});

  Rate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    review = json['review'];
    reviewDate = json['review_date'];
    orderDetailsId = json['order_DetailsId'];
    orderDetails = json['order_Details'] != null
        ? new OrderDetails.fromJson(json['order_Details'])
        : null;
    exerciseId = json['exerciseId'];
    exercise = json['exercise'];
    healthyRecipeId = json['healthyRecipeId'];
    healthyRecipe = json['healthyRecipe'] != null
        ? new HealthyRecipe.fromJson(json['healthyRecipe'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['review'] = this.review;
    data['review_date'] = this.reviewDate;
    data['order_DetailsId'] = this.orderDetailsId;
    if (this.orderDetails != null) {
      data['order_Details'] = this.orderDetails!.toJson();
    }
    data['exerciseId'] = this.exerciseId;
    data['exercise'] = this.exercise;
    data['healthyRecipeId'] = this.healthyRecipeId;
    if (this.healthyRecipe != null) {
      data['healthyRecipe'] = this.healthyRecipe!.toJson();
    }
    return data;
  }
}

class OrderDetails {
  String? id;
  int? price;
  int? quantity;
  String? orderId;
  Order? order;
  int? rateId;
  String? rate;
  String? serviceId;
  Service? service;
  List<Tracking>? tracking;
  List<TrackingMealPlan>? trackingMealPlan;

  OrderDetails(
      {this.id,
      this.price,
      this.quantity,
      this.orderId,
      this.order,
      this.rateId,
      this.rate,
      this.serviceId,
      this.service,
      this.tracking,
      this.trackingMealPlan});

  OrderDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    quantity = json['quantity'];
    orderId = json['orderId'];
    order = json['order'] != null ? new Order.fromJson(json['order']) : null;
    rateId = json['rateId'];
    rate = json['rate'];
    serviceId = json['serviceId'];
    service =
        json['service'] != null ? new Service.fromJson(json['service']) : null;
    if (json['tracking'] != null) {
      tracking = <Tracking>[];
      json['tracking'].forEach((v) {
        tracking!.add(new Tracking.fromJson(v));
      });
    }
    if (json['tracking_MealPlan'] != null) {
      trackingMealPlan = <TrackingMealPlan>[];
      json['tracking_MealPlan'].forEach((v) {
        trackingMealPlan!.add(new TrackingMealPlan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['orderId'] = this.orderId;
    if (this.order != null) {
      data['order'] = this.order!.toJson();
    }
    data['rateId'] = this.rateId;
    data['rate'] = this.rate;
    data['serviceId'] = this.serviceId;
    if (this.service != null) {
      data['service'] = this.service!.toJson();
    }
    if (this.tracking != null) {
      data['tracking'] = this.tracking!.map((v) => v.toJson()).toList();
    }
    if (this.trackingMealPlan != null) {
      data['tracking_MealPlan'] =
          this.trackingMealPlan!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Order {
  String? id;
  String? orderDate;
  int? totalPrice;
  int? userIdDelivery;
  int? userIdResiver;
  String? userId;
  User? user;
  List<String>? orderDetails;

  Order(
      {this.id,
      this.orderDate,
      this.totalPrice,
      this.userIdDelivery,
      this.userIdResiver,
      this.userId,
      this.user,
      this.orderDetails});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderDate = json['orderDate'];
    totalPrice = json['totalPrice'];
    userIdDelivery = json['userIdDelivery'];
    userIdResiver = json['userIdResiver'];
    userId = json['userId'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    orderDetails = json['order_Details'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['orderDate'] = this.orderDate;
    data['totalPrice'] = this.totalPrice;
    data['userIdDelivery'] = this.userIdDelivery;
    data['userIdResiver'] = this.userIdResiver;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['order_Details'] = this.orderDetails;
    return data;
  }
}

class User {
  String? id;
  String? userName;
  String? normalizedUserName;
  String? email;
  String? normalizedEmail;
  bool? emailConfirmed;
  String? passwordHash;
  String? securityStamp;
  String? concurrencyStamp;
  String? phoneNumber;
  bool? phoneNumberConfirmed;
  bool? twoFactorEnabled;
  String? lockoutEnd;
  bool? lockoutEnabled;
  int? accessFailedCount;
  String? fname;
  String? lname;
  bool? active;
  int? expYears;
  int? wieght;
  int? height;
  int? gender;
  String? specialization;
  String? photo;
  String? coverPhoto;
  List<Achievements>? achievements;
  List<String>? orders;
  List<ChatUser>? chatUser;

  User(
      {this.id,
      this.userName,
      this.normalizedUserName,
      this.email,
      this.normalizedEmail,
      this.emailConfirmed,
      this.passwordHash,
      this.securityStamp,
      this.concurrencyStamp,
      this.phoneNumber,
      this.phoneNumberConfirmed,
      this.twoFactorEnabled,
      this.lockoutEnd,
      this.lockoutEnabled,
      this.accessFailedCount,
      this.fname,
      this.lname,
      this.active,
      this.expYears,
      this.wieght,
      this.height,
      this.gender,
      this.specialization,
      this.photo,
      this.coverPhoto,
      this.achievements,
      this.orders,
      this.chatUser});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    normalizedUserName = json['normalizedUserName'];
    email = json['email'];
    normalizedEmail = json['normalizedEmail'];
    emailConfirmed = json['emailConfirmed'];
    passwordHash = json['passwordHash'];
    securityStamp = json['securityStamp'];
    concurrencyStamp = json['concurrencyStamp'];
    phoneNumber = json['phoneNumber'];
    phoneNumberConfirmed = json['phoneNumberConfirmed'];
    twoFactorEnabled = json['twoFactorEnabled'];
    lockoutEnd = json['lockoutEnd'];
    lockoutEnabled = json['lockoutEnabled'];
    accessFailedCount = json['accessFailedCount'];
    fname = json['fname'];
    lname = json['lname'];
    active = json['active'];
    expYears = json['exp_Years'];
    wieght = json['wieght'];
    height = json['height'];
    gender = json['gender'];
    specialization = json['specialization'];
    photo = json['photo'];
    coverPhoto = json['cover_photo'];
    if (json['achievements'] != null) {
      achievements = <Achievements>[];
      json['achievements'].forEach((v) {
        achievements!.add(new Achievements.fromJson(v));
      });
    }
    orders = json['orders'].cast<String>();
    if (json['chatUser'] != null) {
      chatUser = <ChatUser>[];
      json['chatUser'].forEach((v) {
        chatUser!.add(new ChatUser.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['normalizedUserName'] = this.normalizedUserName;
    data['email'] = this.email;
    data['normalizedEmail'] = this.normalizedEmail;
    data['emailConfirmed'] = this.emailConfirmed;
    data['passwordHash'] = this.passwordHash;
    data['securityStamp'] = this.securityStamp;
    data['concurrencyStamp'] = this.concurrencyStamp;
    data['phoneNumber'] = this.phoneNumber;
    data['phoneNumberConfirmed'] = this.phoneNumberConfirmed;
    data['twoFactorEnabled'] = this.twoFactorEnabled;
    data['lockoutEnd'] = this.lockoutEnd;
    data['lockoutEnabled'] = this.lockoutEnabled;
    data['accessFailedCount'] = this.accessFailedCount;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['active'] = this.active;
    data['exp_Years'] = this.expYears;
    data['wieght'] = this.wieght;
    data['height'] = this.height;
    data['gender'] = this.gender;
    data['specialization'] = this.specialization;
    data['photo'] = this.photo;
    data['cover_photo'] = this.coverPhoto;
    if (this.achievements != null) {
      data['achievements'] = this.achievements!.map((v) => v.toJson()).toList();
    }
    data['orders'] = this.orders;
    if (this.chatUser != null) {
      data['chatUser'] = this.chatUser!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Achievements {
  String? id;
  String? title;
  String? fromDate;
  String? toDate;
  String? file;
  String? userId;
  String? user;

  Achievements(
      {this.id,
      this.title,
      this.fromDate,
      this.toDate,
      this.file,
      this.userId,
      this.user});

  Achievements.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    fromDate = json['fromDate'];
    toDate = json['toDate'];
    file = json['file'];
    userId = json['userId'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['fromDate'] = this.fromDate;
    data['toDate'] = this.toDate;
    data['file'] = this.file;
    data['userId'] = this.userId;
    data['user'] = this.user;
    return data;
  }
}

class ChatUser {
  String? id;
  String? userId;
  String? user;
  String? chatId;
  Chat? chat;

  ChatUser({this.id, this.userId, this.user, this.chatId, this.chat});

  ChatUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    user = json['user'];
    chatId = json['chatId'];
    chat = json['chat'] != null ? new Chat.fromJson(json['chat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['user'] = this.user;
    data['chatId'] = this.chatId;
    if (this.chat != null) {
      data['chat'] = this.chat!.toJson();
    }
    return data;
  }
}

class Chat {
  String? id;
  int? senderId;
  int? receiverID;
  List<Message>? message;
  List<String>? chatUser;

  Chat({this.id, this.senderId, this.receiverID, this.message, this.chatUser});

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senderId = json['senderId'];
    receiverID = json['receiverID'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(new Message.fromJson(v));
      });
    }
    chatUser = json['chatUser'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['senderId'] = this.senderId;
    data['receiverID'] = this.receiverID;
    if (this.message != null) {
      data['message'] = this.message!.map((v) => v.toJson()).toList();
    }
    data['chatUser'] = this.chatUser;
    return data;
  }
}

class Message {
  String? id;
  String? date;
  String? text;
  int? senderId;
  String? chatId;
  String? chat;

  Message(
      {this.id, this.date, this.text, this.senderId, this.chatId, this.chat});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    text = json['text'];
    senderId = json['senderId'];
    chatId = json['chatId'];
    chat = json['chat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['text'] = this.text;
    data['senderId'] = this.senderId;
    data['chatId'] = this.chatId;
    data['chat'] = this.chat;
    return data;
  }
}

class Service {
  String? id;
  String? title;
  String? description;
  String? shortDescription;
  int? price;
  String? categoryId;
  Category? category;

  Service(
      {this.id,
      this.title,
      this.description,
      this.shortDescription,
      this.price,
      this.categoryId,
      this.category});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    price = json['price'];
    categoryId = json['categoryId'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['shortDescription'] = this.shortDescription;
    data['price'] = this.price;
    data['categoryId'] = this.categoryId;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}

class Category {
  String? id;
  String? name;
  String? target;
  String? image;

  Category({this.id, this.name, this.target, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    target = json['target'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['target'] = this.target;
    data['image'] = this.image;
    return data;
  }
}

class Tracking {
  String? id;
  bool? iscomplete;
  String? orderDetailsId;
  String? orderDetails;
  String? exerciesProgramId;
  String? exerciesProgram;

  Tracking(
      {this.id,
      this.iscomplete,
      this.orderDetailsId,
      this.orderDetails,
      this.exerciesProgramId,
      this.exerciesProgram});

  Tracking.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iscomplete = json['iscomplete'];
    orderDetailsId = json['order_DetailsId'];
    orderDetails = json['order_Details'];
    exerciesProgramId = json['exercies_programId'];
    exerciesProgram = json['exercies_program'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['iscomplete'] = this.iscomplete;
    data['order_DetailsId'] = this.orderDetailsId;
    data['order_Details'] = this.orderDetails;
    data['exercies_programId'] = this.exerciesProgramId;
    data['exercies_program'] = this.exerciesProgram;
    return data;
  }
}

class TrackingMealPlan {
  String? id;
  bool? iscomplete;
  String? orderDetailsId;
  String? orderDetails;
  String? mealHealthyId;
  MealHealthy? mealHealthy;

  TrackingMealPlan(
      {this.id,
      this.iscomplete,
      this.orderDetailsId,
      this.orderDetails,
      this.mealHealthyId,
      this.mealHealthy});

  TrackingMealPlan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iscomplete = json['iscomplete'];
    orderDetailsId = json['order_DetailsId'];
    orderDetails = json['order_Details'];
    mealHealthyId = json['meal_HealthyId'];
    mealHealthy = json['meal_Healthy'] != null
        ? new MealHealthy.fromJson(json['meal_Healthy'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['iscomplete'] = this.iscomplete;
    data['order_DetailsId'] = this.orderDetailsId;
    data['order_Details'] = this.orderDetails;
    data['meal_HealthyId'] = this.mealHealthyId;
    if (this.mealHealthy != null) {
      data['meal_Healthy'] = this.mealHealthy!.toJson();
    }
    return data;
  }
}

class MealHealthy {
  String? id;
  String? mealPlansId;
  MealPlan? mealPlan;
  String? healthyRecdpeId;
  String? healthyRecipe;
  int? day;
  int? week;

  MealHealthy(
      {this.id,
      this.mealPlansId,
      this.mealPlan,
      this.healthyRecdpeId,
      this.healthyRecipe,
      this.day,
      this.week});

  MealHealthy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mealPlansId = json['mealPlansId'];
    mealPlan = json['mealPlan'] != null
        ? new MealPlan.fromJson(json['mealPlan'])
        : null;
    healthyRecdpeId = json['healthyRecdpeId'];
    healthyRecipe = json['healthyRecipe'];
    day = json['day'];
    week = json['week'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mealPlansId'] = this.mealPlansId;
    if (this.mealPlan != null) {
      data['mealPlan'] = this.mealPlan!.toJson();
    }
    data['healthyRecdpeId'] = this.healthyRecdpeId;
    data['healthyRecipe'] = this.healthyRecipe;
    data['day'] = this.day;
    data['week'] = this.week;
    return data;
  }
}

class MealPlan {
  String? id;
  int? numsubscribers;
  int? length;
  String? dietaryType;
  String? mealType;
  int? avgRecipeTime;
  String? image;
  Service? services;
  List<String>? mealHealthy;

  MealPlan(
      {this.id,
      this.numsubscribers,
      this.length,
      this.dietaryType,
      this.mealType,
      this.avgRecipeTime,
      this.image,
      this.services,
      this.mealHealthy});

  MealPlan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    numsubscribers = json['numsubscribers'];
    length = json['length'];
    dietaryType = json['dietaryType'];
    mealType = json['mealType'];
    avgRecipeTime = json['avgRecipeTime'];
    image = json['image'];
    services = json['services'] != null
        ? new Service.fromJson(json['services'])
        : null;
    mealHealthy = json['meal_Healthy'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['numsubscribers'] = this.numsubscribers;
    data['length'] = this.length;
    data['dietaryType'] = this.dietaryType;
    data['mealType'] = this.mealType;
    data['avgRecipeTime'] = this.avgRecipeTime;
    data['image'] = this.image;
    if (this.services != null) {
      data['services'] = this.services!.toJson();
    }
    data['meal_Healthy'] = this.mealHealthy;
    return data;
  }
}

class HealthyRecipe {
  String? id;
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
  bool? isFeatured;
  List<String>? rate;
  List<MealHealthy>? mealHealthy;
  List<Files>? files;

  HealthyRecipe(
      {this.id,
      this.title,
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
      this.files});

  HealthyRecipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
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
    rate = json['rate'].cast<String>();
    if (json['meal_Healthy'] != null) {
      mealHealthy = <MealHealthy>[];
      json['meal_Healthy'].forEach((v) {
        mealHealthy!.add(new MealHealthy.fromJson(v));
      });
    }
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files!.add(new Files.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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
    data['rate'] = this.rate;
    if (this.mealHealthy != null) {
      data['meal_Healthy'] = this.mealHealthy!.map((v) => v.toJson()).toList();
    }
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Files {
  String? id;
  String? path;
  String? serviceId;
  Service? service;
  String? healthyId;
  String? healthy;

  Files(
      {this.id,
      this.path,
      this.serviceId,
      this.service,
      this.healthyId,
      this.healthy});

  Files.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    path = json['path'];
    serviceId = json['serviceId'];
    service =
        json['service'] != null ? new Service.fromJson(json['service']) : null;
    healthyId = json['healthyId'];
    healthy = json['healthy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['path'] = this.path;
    data['serviceId'] = this.serviceId;
    if (this.service != null) {
      data['service'] = this.service!.toJson();
    }
    data['healthyId'] = this.healthyId;
    data['healthy'] = this.healthy;
    return data;
  }
}

class SportsProgram {
  String? id;
  int? length;
  int? difficulty;
  int? duration;
  String? bodyFocus;
  String? equipment;
  String? trainingType;
  String? image;
  Service? services;
  List<String>? exerciesPrograms;

  SportsProgram(
      {this.id,
      this.length,
      this.difficulty,
      this.duration,
      this.bodyFocus,
      this.equipment,
      this.trainingType,
      this.image,
      this.services,
      this.exerciesPrograms});

  SportsProgram.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    length = json['length'];
    difficulty = json['difficulty'];
    duration = json['duration'];
    bodyFocus = json['bodyFocus'];
    equipment = json['equipment'];
    trainingType = json['trainingType'];
    image = json['image'];
    services = json['services'] != null
        ? new Service.fromJson(json['services'])
        : null;
    exerciesPrograms = json['exercies_Programs'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['length'] = this.length;
    data['difficulty'] = this.difficulty;
    data['duration'] = this.duration;
    data['bodyFocus'] = this.bodyFocus;
    data['equipment'] = this.equipment;
    data['trainingType'] = this.trainingType;
    data['image'] = this.image;
    if (this.services != null) {
      data['services'] = this.services!.toJson();
    }
    data['exercies_Programs'] = this.exerciesPrograms;
    return data;
  }
}
