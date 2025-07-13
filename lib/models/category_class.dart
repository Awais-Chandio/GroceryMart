class CategoryClass {
  final String title;
  final String image;

  CategoryClass({required this.image, required this.title});
}

final List<CategoryClass> categories = [
  CategoryClass(image: "images/All.jpg", title: "All"),
  CategoryClass(image: "images/vegetables.jpg", title: "Vegetables"),
  CategoryClass(image: "images/meat.jpg", title: "Meat"),
  CategoryClass(image: "images/medicine.jpg", title: "Medicine"),
  CategoryClass(image: "images/dairy.jpg", title: "Dairy"),
  CategoryClass(image: "images/Bakery.jpg", title: "Bakery"),
];

