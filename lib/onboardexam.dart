import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'Expansion tile.dart';

void main() {
  runApp(DevicePreview (enabled: !kReleaseMode,
    builder: (context) =>MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardex(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Onboardex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   PageDecoration pagedecoration = const PageDecoration(
     //pageColor: Colors.lightGreenAccent,
     titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),
     bodyTextStyle: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 25),
     boxDecoration: BoxDecoration(gradient: LinearGradient(begin:Alignment.topRight,
       end:Alignment.bottomLeft,
       stops:[.1,.5,.7],colors: [Colors.lightGreenAccent,Colors.orangeAccent,Colors.indigoAccent]))
   );
   return IntroductionScreen(
     globalBackgroundColor: Colors.lightBlue[50],
     pages: [
       PageViewModel(
         decoration: pagedecoration,
         title: 'First Page',
         body: "Instead of having to buy an entire share, invest any amount you want.",
         image: introImage('https://unsplash.com/photos/Ai8TnVoEjDU')
       ),
       PageViewModel(
           title: 'Second Page',
           body: "Instead of having to buy an entire share, invest any amount you want.",
           image: introImage('https://unsplash.com/photos/Ai8TnVoEjDU')
       ),
       PageViewModel(
         decoration: pagedecoration,
           title: 'Third Page',
           body: "Instead of having to buy an entire share, invest any amount you want.",
           image: introImage('assets/images/idukki.jpg')
       ),
     ],
     onDone: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Expansiontiles())),
     onSkip: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Expansiontiles())),
     showSkipButton: false,
    showBackButton: true,
     skip: const Text('Skip'),
     next: const Icon(Icons.arrow_forward_rounded),
     done: const Text('Continue'),
     back: const Icon(Icons.arrow_back_rounded),
   );
  }

 Widget introImage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.network(image,width: 250,),
    );
 }
}
