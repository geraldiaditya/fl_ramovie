class AppValidator{

  static String? required(String? value) {
    value??="";
    if(value.isEmpty) {
      return "Required";
    }
    return null;
  }
}