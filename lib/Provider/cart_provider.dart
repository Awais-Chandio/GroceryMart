import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppix/models/product_model.dart';

class CartProvider extends ChangeNotifier {

  List<Product> _cartItems = [];
  List<Product> get cartItems => _cartItems;
  void toogleFavourite(Product product){
  if (_cartItems.contains(product)){ 
    for (Product element in _cartItems){
      element.quantity++;
      }
      
    }
    else{
      _cartItems.add(product);}
    notifyListeners();



    }

    increamentQuantity(int index){
      _cartItems[index].quantity++;
      notifyListeners();
  
    }

    decreamentQuantity(int index){
        if (_cartItems[index].quantity <= 1) {
      return;
    }
    _cartItems[index].quantity--;
    notifyListeners();
    }

    totalPrice(){
      double total1 = 0.0;
      for(Product element in _cartItems){
        total1+=element.price*element.quantity;
      }
      return total1;
    }
    static CartProvider of (BuildContext context,
    
    {
      bool listen = true
    }

    )
    {
      return Provider.of<CartProvider>(context, listen: listen);
    }
  }
