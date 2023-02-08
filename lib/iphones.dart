import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iphone extends StatelessWidget {
  var phone=<String>['Iphone 12','Iphone 13','Iphone 14','Iphone SE'];
  var spec=<String>['Face ID','New chip','HD image','Better design'];
  var phoneimage=<String>['https://media.croma.com/image/upload/v1662424194/Croma%20Assets/Communication/Mobiles/Images/234253_tumty3.png',
  'https://media.croma.com/image/upload/v1664009491/Croma%20Assets/Communication/Mobiles/Images/243460_0_n90peu.png',
  'assets/images/iphone14.jpeg','https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-se-finish-select-202207-product-red_FMT_WHH?wid=1280&hei=492&fmt=p-jpg&qlt=80&.v=1655316260532'];
  var phoneprice=[999,1099,1199,899];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Iphone details',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),
      body:ListView.builder(itemCount: phone.length,
    itemBuilder:(BuildContext,index){
        return SizedBox(
            height: 100,
            width: 40,
            child: Card(
              color: Colors.cyan,
              child:
       ListTile(
         isThreeLine: true,
              leading: CircleAvatar(
                backgroundImage:NetworkImage(phoneimage[index]) ,
              ),
              title: Text(phone[index],textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(spec[index],textAlign: TextAlign.center,),
              trailing: Text("\$ ${phoneprice[index]}",style: TextStyle(fontSize: 20),),
            ),

    ),
          );
      }));
}}
