import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:dartz/dartz.dart';

//Биздин <usecase> методдорубуз үчүн ар кандай аттарды колдонууга жол бербөө үчүн, биз жыйынтык чыгарууга мүмкүн болбогон ачык-айкын абстракттуу классты бере алабыз.
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
