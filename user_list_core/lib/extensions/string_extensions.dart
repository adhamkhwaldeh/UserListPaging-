extension StringExtensions on String? {
  bool isValidEmail() {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return this == null
        ? false
        : (!regex.hasMatch(this!))
            ? false
            : true;

    // return RegExp(
    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(this);
  }

  bool isNumeric() {
    return (this == null) ? false : double.tryParse(this!) != null;
  }

  bool? isBoolen() {
    return (this == null)
        ? null
        : (this == "true" ? true : (this == "false" ? false : null));
  }

  Map<String, dynamic> convert2Map() {
    Map<String, dynamic> res = {};

    this?.replaceFirst("{", "").split(", ").forEach(
      (element) {
        var pair = element.split(":");
        var firstPart = pair[0].trim();
        var secondPart = pair[1].trim();
        res[firstPart] = secondPart.isEmpty
            ? ""
            : (secondPart.isNumeric()
                ? int.parse(secondPart)
                : (secondPart.isBoolen() ??
                    (secondPart.startsWith("[")
                        ? secondPart
                            .split(",")
                            .map((e) =>
                                e.replaceAll("[", "").replaceAll("]", ""))
                            .toList()
                        : secondPart)));
      },
    );

    return res;
  }
}
