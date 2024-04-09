// single responsibility priciple

// a class should have only sigle resposibility

class User {
  bool auth(String username, String password) {
    return true;
  }

  void anyother(String xy, String yz) {
    // using this anyother mathod we can do other things
  }
}

// this user class violates Single Responsibility principle because user class can user to authenticate and can do other things also

class Auth {
  bool auth(String username, String password) {
    return true;
  }
}

class doanother {
  void anyother(String xy, String yz) {
    // using this anyother mathod we can do other things
  }
}

// makes code understand reusability also maintainable because any if i make changes in User class auth mathod it  might affect anyother mathod 

/*

if i made chages in Auth class auth method it will not affect in doanother class methods 
*/
