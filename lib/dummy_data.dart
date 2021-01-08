import 'models/contents.dart';

class ContentData {
  int _contentNumber = 0;
  List<Content> _contentData = [
    Content('Content 1'),
    Content('Content 2'),
    Content('Content 3'),
  ];

  void nextContent() {
    if (_contentNumber < _contentData.length - 1) {
      _contentNumber += 1;
    }
  }

  String getContentText() {
    return _contentData[_contentNumber].title;
  }

  bool isFinished() {
    if (_contentNumber >= _contentData.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _contentNumber = 0;
  }
}
