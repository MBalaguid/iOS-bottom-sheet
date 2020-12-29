class Account {
  String name;
  String subn;
  String pics;

  Account(this.name, this.subn, this.pics);
}

List<Account> ac = [
  Account("mohamed balaguid", "BLVCKGHOST",
      "https://avatars2.githubusercontent.com/u/55538999?s=460&u=91d926c03c4d48ecd93f5630d1ebb717b8a8f72a&v=4"),
  Account("karim achedmi", "scratch",
      "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/1679ac54975d94566938e934ceba3941-1607721659820/3363db01-2291-4971-a68a-0fc980ca8e01.png"),
  Account("moussa bitami", "Gruz",
      "https://cdn.intra.42.fr/users/small_mbistami.jpg"),
  Account("yassine achchab", "ghostsniper",
      "https://instagram.fcmn1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/128368202_384984746038821_742440394539806521_n.jpg?_nc_ht=instagram.fcmn1-1.fna.fbcdn.net&_nc_ohc=E9wrkVlOjV8AX-VRchJ&tp=1&oh=bd1e337f57f57acfcb4c1df87751bc69&oe=60115FF2"),
  Account("aymen mahfoudi", "aymenmf",
      "https://instagram.fcmn1-1.fna.fbcdn.net/v/t51.2885-19/s150x150/131895259_1257486164624402_7092754738910304638_n.jpg?_nc_ht=instagram.fcmn1-1.fna.fbcdn.net&_nc_ohc=_aT13S2MNicAX9D0GCm&tp=1&oh=0d9bc0f66e4049aa0303197d635c34aa&oe=6012A974"),
];

List<Account> acc = List.from(ac);
