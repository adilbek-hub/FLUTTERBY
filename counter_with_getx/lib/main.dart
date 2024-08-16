import 'package:counter_with_getx/counter_app_with_getx/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
1.
GetX =  GetxController, Rx, obs, Get.put, Obx.
setstate менен getxтин иштешинин айырмасы.

Obx - Obx бул Flutter үчүн GetX пакети тарабынан берилген виджет, ал реактивдүү өзгөрмөлөр өзгөргөндө
виджеттерди автоматтык түрдө кайра курууга мүмкүндүк берет.


Obx өзгөртүлгөн реактивдүү өзгөрмө менен байланышкан виджеттерди гана натыйжалуу кайра курууну камсыздайт,
кайра чийүүлөрдүн санын азайтат жана колдонмоңуздун иштешин жакшыртат.

Obx'тен тышкары, GetX дагы башка реактивдүү виджеттерди сунуштайт, мисалы, GetX, GetBuilder, GetStream,
GetXController жана башкалар, алар сиздин муктаждыктарыңызга жараша ар кандай state башкарууну 
жана виджетти жаңыртуу опцияларын камсыз кылат.
2. Getx менен counterappтын эки баракта кошуу жана кемитүүлөрүнүн бирдей абалда иштешин камсыздоо.

State menegament
1. Kereksiz uilardy kayra kurbayt
2. Widget daraktaryna kaalagan jerine datany jetkirip beret
3. logic codtordu ui kodtordon bolup aluu
 */
/*
GETX [MVC] - Model View Controller, 
MobX [MVVM],
Bloc [Bloc pattern]
 */
