

import 'package:flutter/cupertino.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
    '/'      : ( BuildContext context ) => HomePage(),
    'alert'  : ( BuildContext context ) => AlertPage(),
    AvatarPage.pageName : ( BuildContext context ) => AvatarPage(),
    'card'   : ( BuildContext context ) => CardPage(),

  };

}
