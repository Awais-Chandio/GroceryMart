// // import 'package:ecommerce_mobile_app/Provider/favorite_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:shoppix/Provider/favourite_provider.dart';
// import '../../constants.dart';

// class Favourite extends StatefulWidget {
//   const Favourite({super.key});

//   @override
//   State<Favourite> createState() => _FavoriteState();
// }

// class _FavoriteState extends State<Favourite> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = FavoriteProvider.of(context);
//     final finalList = provider.favorites;
//     return Scaffold(
//       backgroundColor: kcontentColor,
//       appBar: AppBar(
//         backgroundColor: kcontentColor,
//         title: const Text(
//           "Favorite",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//               child: ListView.builder(
//                   itemCount: finalList.length,
//                   itemBuilder: (context, index) {
//                     final favoriteItems = finalList[index];
//                     return Stack(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: Container(
//                             padding: const EdgeInsets.all(10),
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.white,
//                             ),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   padding: const EdgeInsets.all(10),
//                                   width: 85,
//                                   height: 85,
//                                   decoration: BoxDecoration(
//                                     color: kcontentColor,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Image.asset(favoriteItems.image),
//                                 ),
//                                 const SizedBox(width: 10),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       favoriteItems.title,
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       favoriteItems.category,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.grey.shade400,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Text(
//                                       "\$${favoriteItems.price}",
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         // for delete button
//                         Positioned(
//                           top: 50,
//                           right: 35,
//                           child: GestureDetector(
//                             onTap: () {
//                               finalList.removeAt(index);
//                               setState(() {});
//                             },
//                             child: const Icon(
//                               Icons.delete,
//                               color: Colors.red,
//                               size: 25,
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   }))
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shoppix/Provider/favourite_provider.dart';
import '../../constants.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Favorites",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Dark Green Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white], // Dark to Medium Green
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          finalList.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.favorite_border, size: 80, color: Color(0xFF1B5E20)), // Dark Green
                    const SizedBox(height: 10),
                    const Text(
                      "No favorites yet!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Browse and add items to your favorites.",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: finalList.length,
                    itemBuilder: (context, index) {
                      final favoriteItems = finalList[index];
                      return Dismissible(
                        key: Key(favoriteItems.title),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(Icons.delete, color: Colors.red),
                        ),
                        onDismissed: (direction) {
                          finalList.removeAt(index);
                          setState(() {});
                        },
                        child: Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          shadowColor: Colors.green.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      favoriteItems.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        favoriteItems.title,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        favoriteItems.category,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$${favoriteItems.price}",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xFF1B5E20),
                                            ),
                                          ),
                                          Row(
                                            children: List.generate(
                                              5,
                                              (i) => Icon(
                                                i < 4 ? Icons.star : Icons.star_border,
                                                color: Colors.amber,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.favorite, color: Colors.red),
                                  onPressed: () {
                                    finalList.removeAt(index);
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

          // Decorative Bottom Section in Dark Green
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: 100,
                color: Colors.green, // Dark Green
                child: const Center(
                  child: Text(
                    "Your Favorite Items 💚",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Curved Bottom Design
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(3 / 4 * size.width, size.height - 40, size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
