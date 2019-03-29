import './chat/index.dart' as Chat;

class WidgetDemoList {
  WidgetDemoList();

  List getDemos() {
    List result = [];
    result.addAll(Chat.widgetPoints);
//    result.addAll(components.getWidgets());
//    result.addAll(themes.getWidgets());
    return result;
  }
}
