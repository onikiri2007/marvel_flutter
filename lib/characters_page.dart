import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marvel/api/api.dart';
import 'package:marvel/character_page.dart';
import 'package:marvel/dtos/character.dart';
import 'package:marvel/models/characters_page_bloc.dart';
import 'package:marvel/models/criteria.dart';
import 'package:marvel/models/operation_result.dart';

class CharactersPage extends StatefulWidget {
  CharactersPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _CharactersPageState createState() => new _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {

  final ScrollController scrollController = ScrollController();
  CharactersPageBloc _vm;

  bool _isSearchMode;
  TextEditingController searchTextController = TextEditingController();

  @override
    void initState() {
      // TODO: implement initState
      _vm = CharactersPageBloc();
      _isSearchMode = false;
      super.initState();

      scrollController.addListener(() {
         if(scrollController.position.pixels == scrollController.position.maxScrollExtent) {
           _getMoreData();
         }
      });

    searchTextController.addListener(() {
       _vm.textChangedCommand.execute(searchTextController.text);
    });

     _getMoreData();
  }

  @override
    void dispose() {
      // TODO: implement dispose
      scrollController.dispose();
      searchTextController.dispose();
      _vm.dispose();
      super.dispose();
    }
      
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    var streamBuilder = StreamBuilder<OperationResult<List<Character>>>(
       initialData: OperationResult<List<Character>>.asSuccess(List<Character>()),
       stream: _vm.searchCommand.results,
       builder: (BuildContext context, AsyncSnapshot<OperationResult<List<Character>>> snapshot) {
             switch(snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
               return Center(
                      child: Text("Loading ...."),
                  );
               default: 
                if(snapshot.hasError) {
                 return Center(
                      child: Text("Error ....${snapshot.error.toString()}"),
                  );
                }
                else if(snapshot.hasData) {
                  if(snapshot.data.isSuccess) {
                       return snapshot.data.results.length > 0 ? _buildListView(scrollController , snapshot.data.results)
                       :
                       Center(
                          child: Text("No data found"),
                      );
                  }
                  else  {
                    return Center(
                          child: Text("${snapshot.data.exception.toString()}"),
                      );
                  }
                }
                 else {
                    return Center(
                          child: Text("no data found"),
                      );
                  }
           }
       }
    );


    return new Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: streamBuilder,
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

   _getMoreData() {
     _vm.search();
  }


  Widget _buildAppBar() {
    return new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: _isSearchMode ? _buildSearchTextField(): new Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              _isSearchMode ? Icons.close : Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
               if(_isSearchMode) {
                  searchTextController.clear();
               }

               setState(() {
                   _isSearchMode = !_isSearchMode;
                });
            },
          )
        ],
      );
  }

  Widget _buildSearchTextField() {

    return StreamBuilder<bool>(
      initialData: false,
      stream: _vm.isSearching,
      builder: (BuildContext context , AsyncSnapshot<bool> snapshot) {
        return Stack(
          children: <Widget>[
            TextField(
                controller: searchTextController,
                autofocus: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintStyle: TextStyle(color:Colors.white),
                  hintText: "Enter name ...",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white)
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white)
                  )
                ),
              ),   
             Positioned(
               width: 15.0,
               height: 25.0,
               right: 0.0,
               bottom: 0.0,
               child: Opacity(
                 opacity: snapshot.hasData && snapshot.data ? 1.0 : 0.0,
                 child: Padding(
                  padding: EdgeInsets.only(bottom:8.0),
                  child:  CircularProgressIndicator(valueColor:new AlwaysStoppedAnimation<Color>(Colors.white), strokeWidth: 2.0),
                )
               ),
             ),
          ],


        );
      },
    );
  }


  Widget _buildProgressIndicator() {
    return StreamBuilder<bool>(
      initialData: false,
      stream: _vm.isSearching,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
         return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
            child: Opacity(
              opacity: snapshot.data ? 1.0 : 0.0,
              child: CircularProgressIndicator()
            ) 
            ),
          );
      },
    );
   
  }

  Widget _buildListView(ScrollController scrollController, List<Character> characters) {
     return ListView.builder(
       itemCount: characters.length + 1,
       controller: scrollController,
       itemBuilder: (BuildContext context, int index) {
       if(index == characters.length) {
         return _buildProgressIndicator();
       }
       else {
        var character = characters[index];
        return Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: const Color(0xffe2e2e2), style: BorderStyle.solid))
            ),
            child:  ListTile(
                contentPadding: EdgeInsets.all(8.0),
                leading: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("${character.thumbnail?.path}/standard_medium.${character.thumbnail.extension}"),
                        ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(character.name),
                ),
                subtitle:  Text(character.description),
                onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => new CharacterPage(character: character)),
                  );
                },
          
          ),
        ); 
       }
      },
     );

  }
}
