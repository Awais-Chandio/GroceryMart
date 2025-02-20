class CategoryClass {
  final String title;
  final String image;

  CategoryClass({required this.image, required this.title});
}

final List<CategoryClass> categories = [
  CategoryClass(image: "images/All.jpg", title: "All"),
  CategoryClass(image: "images/shoes.jpg", title: "Shoes"),
  CategoryClass(image: "images/beauty.jpg", title: "Beauty"),
  CategoryClass(image: "images/image1.jpg", title: "Women's\nFashion"),
  CategoryClass(image: "images/jewellry.jpg", title: "Jewelry"),
  CategoryClass(image: "images/MenFashion2.jpg", title: "Men's\nFashion"),
];
