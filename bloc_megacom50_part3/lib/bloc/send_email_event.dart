part of 'send_email_bloc.dart';

@immutable
sealed class EmailEvent {}

final class SendEmailEvent extends EmailEvent {
  final String email;
  final String name;
  final String message;
  SendEmailEvent(
      {required this.email, required this.name, required this.message});
}
