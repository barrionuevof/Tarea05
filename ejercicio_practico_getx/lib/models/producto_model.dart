class ProductoModel {
  ProductoModel({
    this.id,
    this.nombre,
    this.stock,
  });

  int? id;
  String? nombre;
  int? stock;

  factory ProductoModel.fromJson(Map<String, dynamic> json) => ProductoModel(
        id: json["id"],
        nombre: json["nombre"],
        stock: json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "stock": stock,
      };
}
