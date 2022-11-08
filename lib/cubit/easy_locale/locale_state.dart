part of 'locale_bloc.dart';

@immutable
abstract class LocaleState {}

class LocaleInitial extends LocaleState {}

class ChangeLocaleSuccessState extends LocaleState {
  final Locale locale;

  ChangeLocaleSuccessState({required this.locale});
}
