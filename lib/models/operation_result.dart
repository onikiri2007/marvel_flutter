import 'package:quiver/strings.dart';

class OperationResult<T> {

   T results;
   Exception exception;

   OperationResult.asSuccess(T results) {
     this.results = results;
   }

   OperationResult.asError(Exception ex, [T results]) {
     this.exception = ex;
     this.results = results;
   }


   bool get isSuccess => this.exception == null;
}