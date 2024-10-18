enum MenuTab {
  about(title: "About"), 
  contact(title: "Contact"), 
  projects(title: "Projects");

  const MenuTab({
    required this.title
  });

  final String title;
}