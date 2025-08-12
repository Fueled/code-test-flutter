import 'package:injectable/injectable.dart';
import 'package:code_test_flutter/core/navigation/app_router.dart';
import 'package:code_test_flutter/core/string_ids.dart';
import 'package:code_test_flutter/core/string_provider.dart';
import 'package:code_test_flutter/extensions/context_extensions.dart';

@Injectable(as: StringProvider)
class StringProviderImpl extends StringProvider {
  @override
  String getString(StringId id) {
    final translations = rootNavigatorKey.currentContext!.translations;
    switch (id) {
      case StringId.requestCancelled:
        return translations.errorRequestCancelled;
      case StringId.timeout:
        return translations.errorTimeout;
      case StringId.noNetwork:
        return translations.errorNoNetwork;
      case StringId.genericError:
        return translations.errorGeneric;
    }
  }
}
