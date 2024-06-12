import 'package:e_commerce_flutter_app/screens/cart/cart_page.dart';
import 'package:e_commerce_flutter_app/widget/home_page-widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

final List<String> items = [
  "Hello",
  "How",
  "are",
  "you",
  "today?",
];

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text(
          "KH E-Commerce",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const CartPage());
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const TextFormFieldHome(),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            height: 500,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              color: Colors.green,
            ),
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 250 / 2,
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
                childAspectRatio: 3 / 2,
                //crossAxisSpacing: 5.0,
                //mainAxisSpacing: 5.0,
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(
                    child: Text(
                      items[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
