import 'package:flutter/widgets.dart';

import '../../generated/l10n.dart';

extension ContextUtils on BuildContext {
  S get s => S.of(this);
}
