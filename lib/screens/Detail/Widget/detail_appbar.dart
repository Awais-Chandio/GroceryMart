import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppix/Provider/favourite_provider.dart';
import 'package:shoppix/constants.dart';
import 'package:shoppix/models/product_model.dart';

class DetailAppbar extends StatelessWidget {
  final Product product;
  const DetailAppbar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final Provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: const EdgeInsets.all(15)),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          const Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: const EdgeInsets.all(15)),
              onPressed: () {},
              icon: const Icon(Icons.share_outlined)),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: const EdgeInsets.all(15)),
              onPressed: () {
                Provider.toggleFavorite(product);
              },
              icon: Icon(
                Provider.isExist(product)
                    ? Icons.favorite
                    : Icons.favorite_border,
                size: 25,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
