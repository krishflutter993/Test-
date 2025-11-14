class Mobile {
  int? id;
  String image;
  String company;
  String model;
  double price;
  double discount;
  double finalPrice;

  Mobile({
    this.id,
    required this.image,
    required this.company,
    required this.model,
    required this.price,
    required this.discount,
    required this.finalPrice,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'company': company,
      'model': model,
      'price': price,
      'discount': discount,
      'finalPrice': finalPrice,
    };
  }
}
