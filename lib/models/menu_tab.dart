enum MenuTab {
  about(title: "About"), 
  projects(title: "Projects"),
  contact(title: "Contact"),;

  const MenuTab({
    required this.title
  });

  final String title;
}