
class Product {
  int? status;
  String? message;
  List<ProductElement>? products;

  Product({
    this.status,
    this.message,
    this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    status: json["status"],
    message: json["message"],
    products: json["products"] == null ? [] : List<ProductElement>.from(json["products"]!.map((x) => ProductElement.fromJson(x))),
  );
}

class ProductElement {
  int? id;
  String? company;
  String? name;
  String? type;
  String? price;
  String? image;
  String? description;

  ProductElement({
    this.id,
    this.company,
    this.name,
    this.type,
    this.price,
    this.image,
    this.description,
  });

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
    id: json["id"],
    company: json["company"],
    name: json["name"],
    type: json["type"],
    price: json["price"],
    image: json["image"],
    description: json["description"],
  );
}
