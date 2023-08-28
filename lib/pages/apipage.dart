import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

import '../modals/pomodal.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.white),
    home: Pages(),
  ));
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<SamplePosts> posts = [];
  SamplePosts _samplePosts = SamplePosts(pokemon: List.empty());

  fetchData() async {
    var res = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));
    var decodejson = jsonDecode(res.body);
    _samplePosts = SamplePosts.fromJson(decodejson);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pokemon')),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for (var i = 2; i < 50; i++) ...[
            Card(
              elevation: 3.0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(_samplePosts.pokemon[i].img))),
                    ),
                    Text(
                      _samplePosts.pokemon[i].name,
                      style:
                          TextStyle(fontSize: 20,  fontWeight: FontWeight.bold),
                    )
                  ]),
            )
          ]
        ],
      ),
      // body: ListView.builder(
      //     itemCount: _samplePosts.pokemon.length,
      //     itemBuilder: (context, index) => Card(
      //           child: Text(_samplePosts.pokemon[index].name),
      //         )
      //     // child: Text(_samplePosts.pokemon[index].name),
      //     ),

      // body: FutureBuilder(
      //     future: getData(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return ListView.builder(
      //           itemCount: 2,
      //           itemBuilder: (context, index) => Container(
      //             height: 130,
      //             margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //             padding: EdgeInsets.all(8),
      //             color: Colors.cyan,
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(posts[index].pokemon[index].name)
      //                 // Text(posts[index].next)
      //                 // Text(posts[index].pokemon[index].name),
      //               ],
      //             ),
      //           ),
      //         );
      //       } else {
      //         return Center(
      //           child: Text(
      //             "Error",
      //             style: TextStyle(fontSize: 25),
      //           ),
      //           // child: CircularProgressIndicator(),
      //         );
      //       }
      //     }),
    );
  }

//   Future<List<SamplePosts>> getData() async {
//     final response = await http
//         .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=151'));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         posts.add(SamplePosts.fromJson(index));
//       }
//       return posts;
//     } else {
//       return posts;
//     }
//   }
}
