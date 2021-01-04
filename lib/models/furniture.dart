class Furniture {
  String title;
  String image;
  String description;
  double price;

  Furniture({
    this.title,
    this.image,
    this.description,
    this.price,
  });

  Furniture.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
  }
}
