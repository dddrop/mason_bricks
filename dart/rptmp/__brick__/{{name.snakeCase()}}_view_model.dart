import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part '{{name.snakeCase()}}_view_model.freezed.dart';

// MARK: - Provider
final StateNotifierProvider<{{name.pascalCase()}}ViewModel, {{name.pascalCase()}}State> {{name.snakeCase()}}ViewModelProvider = StateNotifierProvider<{{name.pascalCase()}}ViewModel, {{name.pascalCase()}}State>(
  (StateNotifierProviderRef<{{name.pascalCase()}}ViewModel, {{name.pascalCase()}}State> ref) => {{name.pascalCase()}}ViewModel(
    const {{name.pascalCase()}}State(),
  ),
);

// MARK: - State
@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State() = _{{name.pascalCase()}}State;
}

// MARK: - ViewModel
class {{name.pascalCase()}}ViewModel extends StateNotifier<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}ViewModel(super.state);
}
