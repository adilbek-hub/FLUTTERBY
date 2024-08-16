import 'package:bloc/bloc.dart';
import 'package:bloc_megacom50_part3/repasitory/email.repository.dart';
import 'package:meta/meta.dart';

part 'send_email_event.dart';
part 'send_email_state.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc({required this.emailRepository}) : super(EmailInitial()) {
    on<SendEmailEvent>((event, emit) async {
      emit(EmailLoading());
      try {
        await emailRepository.sendEmail(
            name: event.name, email: event.name, message: event.message);
      } catch (e) {
        EmailError(errorText: e.toString());
      }
      emit(EmailSuccess());
    });
  }
  final EmailRepository emailRepository;
}
