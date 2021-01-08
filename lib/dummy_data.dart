import 'models/contents.dart';

class ContentData {
  int _contentNumber = 0;
  List<Content> _contentData = [
    Content('Happy Valentine\'s Day Baby'),
    Content('There is only one happiness in life: to love and be loved.'),
    Content('Valentine’s Day is the poet’s holiday.'),
    Content('Your flaws are perfect for the heart that’s meant to love you.'),
    Content(
        'You know you’re in love when you can’t fall asleep because reality is finally better than your dreams.'),
    Content(
        'Lovers don’t finally meet somewhere. They’re in each other all along.'),
    Content(
        'A flower cannot blossom without sunshine, and man cannot live without love.'),
    Content('The art of love…is largely the art of persistence.'),
    Content('Love planted a rose, and the world turned sweet.'),
    Content(
        'A successful marriage requires falling in love many times, always with the same person.'),
    Content(
        'Love doesn’t make the world go round. Love is what makes the ride worthwhile.'),
    Content('Grow old with me! The best is yet to be.'),
    Content('It is astonishing how little one feels alone when one loves.'),
    Content('Love is the greatest refreshment in life.'),
    Content('Where there is love, there is life.'),
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
