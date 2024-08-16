// Equatable => Чтобы облегчить сравнение значений, это поможет нам позже в управлении состоянием в BLOC. Equatable поставляется со свойством props, которое имеет свою собственную цель, и реквизиты для сравнения объектов. proparty решает, какие объекты мы должны рассматривать для сравнения объектов. все объекты, доступные в нашем классе.

// класс ArticleEntity, который наследует от класса Equatable. Класс Equatable является частью пакета equatable, который предоставляет удобный способ реализации сравнения объектов в Dart.

import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

//Метод @override List<Object?> get props определен в классе ArticleEntity и используется для определения списка свойств (properties), которые будут участвовать в сравнении объектов этого класса при вызове метода == или при использовании оператора ==. В данном случае, этот метод возвращает список всех свойств объекта ArticleEntity, таких как id, author, title, и так далее.

//Это позволяет сравнивать два объекта типа ArticleEntity, и если все их свойства имеют одинаковые значения, то эти объекты будут считаться равными.
  @override
  List<Object?> get props => [
id,
author,
title,
description,
url,
urlToImage,
publishedAt,
content,
  ];
}
