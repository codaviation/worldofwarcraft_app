class WowClass{

  String _className;
  String _classType;
  String _classDetail;
  String _classSmallImage;
  String _classBigImage;

  WowClass(this._className, this._classType, this._classDetail,
      this._classSmallImage, this._classBigImage);

  String get classBigImage => _classBigImage;

  set classBigImage(String value) {
    _classBigImage = value;
  }

  String get classSmallImage => _classSmallImage;

  set classSmallImage(String value) {
    _classSmallImage = value;
  }

  String get classDetail => _classDetail;

  set classDetail(String value) {
    _classDetail = value;
  }

  String get classType => _classType;

  set classType(String value) {
    _classType = value;
  }

  String get className => _className;

  set className(String value) {
    _className = value;
  }
}