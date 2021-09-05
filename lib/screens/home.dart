import 'package:ecommerce/provider/user_provider.dart';
import 'package:ecommerce/screens/product_details.dart';
import 'package:ecommerce/widgets/custom_app_bar.dart';
import 'package:ecommerce/widgets/featured_products.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
//           Custom App bar
            CustomAppBar(),

//          Search Text field
            Search(),

//            featured products
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Featured products')),
                ),
              ],
            ),
            FeaturedProducts(),

//          recent products
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Recent products')),
                ),
              ],
            ),
            ProductCard(
              brand: 'SantosBrand',
              name: 'Lux Blazer',
              price: 24.00,
              onSale: true,
              picture: '',
            ),
            ProductCard(
              brand: 'SantosBrand',
              name: 'Lux Blazer',
              price: 24.00,
              onSale: true,
              picture: '',
            ),
            ProductCard(
              brand: 'SantosBrand',
              name: 'Lux Blazer',
              price: 24.00,
              onSale: true,
              picture: '',
            ),
          ],
        ),
      ),
    );
  }
}
