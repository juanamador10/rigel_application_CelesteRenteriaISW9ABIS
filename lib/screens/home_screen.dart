import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rigel_application/screens/product_details_screen.dart';

import '../reusable_widgets/category_button.dart';
import '../reusable_widgets/galerie_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 70),
            Row(children: const [
              Icon(Icons.menu, size: 30),
              Spacer(),
              Icon(Icons.shopping_bag, size: 30)
            ]),
            const SizedBox(height:20),
            const Text("Hello"),
            const Text("What today's taste?",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height:20),
            Row(
              children: [
                CategoryButton1(),
                CategoryButton2(),
                Spacer(),
                Icon(Icons.search, size: 40,)
              ],
            ),
            const SizedBox(height:20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange[300]),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            "https://cdn11.bigcommerce.com/s-cy4lua1xoh/images/stencil/1280x1280/products/13145/78406/monster-high-jackson-jekyll-doll-2011-mattel-x3649__69310.1654905875.jpg?c=1?imbypass=on"),
                        height: 250.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            Text("Title",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)),
                            Text("Price", style: TextStyle(color: Colors.white),),
                            const SizedBox(height: 10),
                            RatingBar.builder(
                              itemSize: 25,
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) =>
                                    const Icon(Icons.star, color: Colors.white),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                }),
                               const SizedBox(height: 10,),
                            FloatingActionButton.extended(
                                onPressed: () {
                                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProductScreen()));
                                },
                                label: const Text("Add to the car", style: TextStyle(color: Colors.black, fontSize: 12,)),
                                backgroundColor: Colors.white,
                                icon: const Icon(Icons.shopping_cart, size: 20.0, color: Colors.black,))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GalleryProduct(Image_URL: "https://cdn11.bigcommerce.com/s-cy4lua1xoh/images/stencil/1280x1280/products/13145/78406/monster-high-jackson-jekyll-doll-2011-mattel-x3649__69310.1654905875.jpg?c=1?imbypass=on"),
                  
                  GalleryProduct(Image_URL: "https://cdn11.bigcommerce.com/s-cy4lua1xoh/images/stencil/1280x1280/products/13145/78406/monster-high-jackson-jekyll-doll-2011-mattel-x3649__69310.1654905875.jpg?c=1?imbypass=on"),
                  GalleryProduct(Image_URL: "https://cdn11.bigcommerce.com/s-cy4lua1xoh/images/stencil/1280x1280/products/13145/78406/monster-high-jackson-jekyll-doll-2011-mattel-x3649__69310.1654905875.jpg?c=1?imbypass=on"),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProductScreen()));
                    },
                    child: Icon(Icons.add, color: Colors.grey, size: 30,),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        primary: Colors.white,
                        side: BorderSide(width: 3.0, color: Colors.grey)),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
