import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Statemanagement/Providerapp/Movieprovider.dart';
import 'package:provider/provider.dart';

class WishList extends StatelessWidget {
  //const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mylists = context
        .watch<MovieProvider>()
        .myList;
    return Scaffold(

      appBar: AppBar(
        title: Text("My Whishlist ${mylists.length}"),
      ),
      body: ListView.builder(
          itemCount: mylists.length,
          itemBuilder: (BuildContext, index) {
        final currentMovie = mylists[index];
        return Card(
          key: ValueKey(currentMovie.title),
          child: ListTile(
            title: Text(currentMovie.title),
            subtitle: Text(currentMovie.time ?? "No time"),
            trailing: TextButton(onPressed: () {
              context.read<MovieProvider>().removeFromList(currentMovie);
            }, child: Text("Remove"),

            ),
          ),
        );
      }),
    );
  }
}
