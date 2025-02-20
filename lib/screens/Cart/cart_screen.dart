// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shoppix/Provider/cart_provider.dart';
// import 'package:shoppix/constants.dart';
// import 'package:shoppix/nav_bar_screen.dart';
// import 'package:shoppix/screens/Cart/checkout.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final Provider = CartProvider.of(context);
//     final finalList = Provider.cartItems;
//     ProductQuantity(IconData icon, int index) {
//       return GestureDetector(
//         onTap: () {
//           setState(() {
//             icon == Icons.add
//                 ? Provider.increamentQuantity(index)
//                 : Provider.decreamentQuantity(index);
//           });
//         },
//         child: Icon(
//           icon,
//           size: 20,
//         ),
//       );
//     }

//     return Scaffold(
//       bottomSheet: const CheckOutBox(),
//       backgroundColor: kcontentColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       style: IconButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           padding: const EdgeInsets.all(15)),
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                           return const BottomNavBar();
//                         }));
//                       },
//                       icon: const Icon(Icons.arrow_back_ios)),
//                   const Text(
//                     "My Cart",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                   Container(),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: finalList.length,
//                   itemBuilder: (context, index) {
//                     final cartItem = finalList[index];
//                     return Stack(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(15),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20)),
//                             padding: const EdgeInsets.all(10),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: 120,
//                                   width: 100,
//                                   decoration: BoxDecoration(
//                                     color: kcontentColor,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   padding: const EdgeInsets.all(10),
//                                   child: Image.asset(cartItem.image),
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       cartItem.title,
//                                       style: const TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text(
//                                       cartItem.category,
//                                       style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey.shade400,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     const SizedBox(
//                                       height: 10,
//                                     ),
//                                     Text(
//                                       "\$${cartItem.price}",
//                                       style: const TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                             top: 35,
//                             right: 35,
//                             child: Column(
//                               children: [
//                                 IconButton(
//                                     color: Colors.red,
//                                     onPressed: () {
//                                       finalList.removeAt(index);
//                                       setState(() {});
//                                     },
//                                     icon: const Icon(
//                                       Icons.delete,
//                                       size: 22,
//                                     )),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Container(
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                       color: kcontentColor,
//                                       border: Border.all(
//                                           color: Colors.grey.shade200,
//                                           width: 2),
//                                       borderRadius: BorderRadius.circular(20)),
//                                   child: Row(
//                                     children: [
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       ProductQuantity(Icons.add, index),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       Text(
//                                         cartItem.quantity.toString(),
//                                         style: const TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       ProductQuantity(Icons.remove, index),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ))
//                       ],
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppix/Provider/cart_provider.dart';
import 'package:shoppix/constants.dart';
import 'package:shoppix/nav_bar_screen.dart';
import 'package:shoppix/screens/Cart/checkout.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final cartItems = provider.cartItems;

    Widget productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.increamentQuantity(index)
                : provider.decreamentQuantity(index);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
              ),
            ],
          ),
          padding: const EdgeInsets.all(6),
          child: Icon(icon, size: 22, color: Colors.black),
        ),
      );
    }

    return Scaffold(
      bottomSheet: const CheckOutBox(),
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const BottomNavBar();
                        },
                      ));
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final cartItem = cartItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              cartItem.image,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cartItem.title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  cartItem.category,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "\$${cartItem.price}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    productQuantity(Icons.remove, index),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        cartItem.quantity.toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    productQuantity(Icons.add, index),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 26,
                            ),
                            onPressed: () {
                              setState(() {
                                cartItems.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
