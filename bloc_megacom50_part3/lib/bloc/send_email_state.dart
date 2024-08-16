part of 'send_email_bloc.dart';

@immutable
sealed class EmailState {}

final class EmailInitial extends EmailState {}

final class EmailLoading extends EmailState {}

final class EmailSuccess extends EmailState {}

final class EmailError extends EmailState {
  EmailError({required this.errorText});
  final String errorText;
}
