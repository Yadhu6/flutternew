import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Statemanagement/Providerapp/ScreenUI.dart';
import 'package:provider/provider.dart';
import 'Movieprovider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
      create: (BuildContext context) => MovieProvider(),
      child: MaterialApp(home: HomeUI())));
}

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var mylist = context.watch<MovieProvider>().myList;

    return Scaffold(
      appBar: AppBar(
        title: Text('MOVIES'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 85,
              width: 655,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WishList()));
                  },
                  icon: Icon(Icons.favorite),
                  label: Text("Wishlist ${mylist.length}")),
            ),
            Expanded(
                child: ListView.builder(
                    //itemCount: mylist.length,
                    itemBuilder: (context, index) {
                      final currentMovie = movies[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.green[200],
                          child: ListTile(
                            title: Text(currentMovie.title),
                            subtitle: Text(currentMovie.time ?? "No time"),
                            trailing: IconButton(
                                onPressed: () {
                                  if (!mylist.contains(currentMovie)) {
                                    context
                                        .read<MovieProvider>()
                                        .addToList(currentMovie);
                                  } else {
                                    context
                                        .read<MovieProvider>()
                                        .removeFromList(currentMovie);
                                  }
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: mylist.contains(currentMovie)
                                      ? Colors.red
                                      : Colors.white,
                                )),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
