import 'dart:async';
import 'package:marvel/api/api.dart';
import 'package:marvel/dtos/character.dart';
import 'package:marvel/models/criteria.dart';
import 'package:marvel/models/operation_result.dart';
import 'package:quiver/strings.dart';
import 'package:rx_command/rx_command.dart';
import 'package:rxdart/rxdart.dart';

class CharactersPageBloc {

    String _term;
    int _offset = 0;
    int _limit = 30;
    List<Character> _results = List<Character>();
    bool _isLoading = false;
     RxCommand<String, String> textChangedCommand;
    RxCommand<Criteria, OperationResult<List<Character>>> searchCommand;
    Stream<bool> get isSearching => searchCommand.isExecuting;
   
    CharactersPageBloc() {
       textChangedCommand = RxCommand.createSync3((term) => term);
       textChangedCommand.results
       .debounce(new Duration(milliseconds: 500))
       .distinct()
       .listen((term) {
           _term = term;
           _offset = 0;
            _results.clear();
             searchCommand.execute(Criteria(
             limit: _limit,
             offset: _offset,
             nameStartWith: _term
           ));
       });

       searchCommand = RxCommand.createAsync3((criteria) =>  _search(criteria));
    }

    Future<OperationResult<List<Character>>> _search(Criteria criteria) async {
      var op = await Api.fetchCharacters(criteria);
      _isLoading = false;
      
      if(op.isSuccess) { 
        _offset += op.results.length;
        _results.addAll(op.results);
        return OperationResult.asSuccess(_results);
      }
      else {
          return op;
      }
  }

    void search({int offset}) {
        if(!_isLoading) {
          _isLoading = true;
          searchCommand.execute(Criteria(
            limit: _limit,
            offset: offset ?? _offset,
            nameStartWith: _term
          ));
        }
    }


    void dispose() {
      searchCommand.dispose();
      textChangedCommand.dispose();
     
     
    }
}