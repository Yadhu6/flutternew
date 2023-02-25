import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Passing%20data%20between%20screens/dummy_data.dart';

class Screen2 extends StatelessWidget {
  //const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final productID = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((element) => element['ID'] == productID);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(product['Image']))
              ),
            ),
            Text('${product['Company']}'),
            Text('${product['Product']}'),
            Text('${product['Price']}'),
            Text('${product['Memory size']}'),
            Text('${product['RAM']}'),
            Text('${product['Rating']}'),
          ],
        ),
      ),
    );
  }
}
