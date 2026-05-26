import 'package:flutter/widgets.dart';

import '../../_shared/generated/l10n.dart';

extension ContextUtils on BuildContext {
  L get l => L.of(this);
}
