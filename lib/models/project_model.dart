class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    required this.description, 
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    description: "Banking System Project created using Netbeans provides a secure, user-friendly platform for managing various banking services, including account management, transactions, and customer support.",
    imgURL: 'asset/images/Bank-img.png',
    projectName: 'Banking System',
  ),
  ProjectModel(
    description: "E-Commerce Project created using Djanog framework provides a seamless shopping experience for customers while allowing the business to effectively manage its online presence.",
    imgURL: 'asset/images/e-com.png',
    projectName: 'Pixie: e-commerce',
  ),
];