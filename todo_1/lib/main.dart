import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_1/app/app.dart';
import 'package:todo_1/firebase_options.dart';

/*
1 Фарбейзте проект ачылат
2 приложенияга Firebaseти кошуу.
3 Облако Firestore кошуу 
4. Чтение данных read мисал катары.
5. Маалыматтын UIын тарт.(title, description, isCompleted, author) жана 
буларга контроллер жана булар баары толтурулганы же толтурулбаганы тууралуу форм ачкыч колдон.
6.Маалыматты датабазага алып баруу үчүн модел түз жана генерацияла.
7. Маалыматты датабазага алып баруучу Функция түз.



 */
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
