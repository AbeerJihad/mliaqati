class Exercise {
  String? title;
  String? bodyFocus;
  Null? shortDescription;
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
  List<Null>? rate;
  String? id;

  Exercise(
      {this.title,
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
      this.rate,
      this.id});

  Exercise.fromJson(Map<String, dynamic> json) {
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
      rate = <Null>[];
      json['rate'].forEach((v) {
        //      rate!.add(new Null.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
      //     data['rate'] = this.rate!.map((v) => v?.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}
