import 'package:flutter/widgets.dart';

class ModelProvider<T> extends InheritedWidget {

  final T model;

  ModelProvider({Key key, 
            @required this.model, 
            @required Widget child}) : 
              assert(model != null),
              assert(child != null),
              super(key: key, child: child);


  static T of<T>(BuildContext context) => (context.ancestorInheritedElementForWidgetOfExactType(ModelProvider) as ModelProvider).model;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
  }

  
}