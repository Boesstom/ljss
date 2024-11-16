import '../database.dart';

class UserProfileTable extends SupabaseTable<UserProfileRow> {
  @override
  String get tableName => 'user_profile';

  @override
  UserProfileRow createRow(Map<String, dynamic> data) => UserProfileRow(data);
}

class UserProfileRow extends SupabaseDataRow {
  UserProfileRow(super.data);

  @override
  SupabaseTable get table => UserProfileTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nama => getField<String>('nama');
  set nama(String? value) => setField<String>('nama', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
