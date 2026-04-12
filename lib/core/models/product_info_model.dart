//According to the product Json Data i will change it later
// just create a Model of the Product

class ProductInfoModel {
  final int productId;
  final String productTitle;
  final String productSubtitle;
  final String productImage;
  final String productPrice;
  final String productDescription;
  final String productBrand;

  ProductInfoModel({
    required this.productId,
    required this.productTitle,
    required this.productSubtitle,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productBrand
});

  factory ProductInfoModel.fromJson (Map<String, dynamic> json) {
    return ProductInfoModel(
        productId: json['productId'],
        productTitle: json['productTitle'],
        productSubtitle: json['productSubtitle'],
        productImage: json['productImage'],
        productPrice: json['productPrice'],
        productDescription: json['productDescription'],
        productBrand: json['productBrand']);
  }
  }