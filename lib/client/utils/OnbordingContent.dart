class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent({required this.image, required this.title, required this.discription});
}

 List<OnbordingContent> contents = [
  OnbordingContent(
    title: 'Biom',
    image: 'images/planet.png',
    discription: "“A biome is a specific environment that's home to living things suited for that place and climate”"
  ),
  OnbordingContent(
    title: 'Go green, plant  trees!',
    image: 'images/flower1.png',
    discription: "What a way to save the planet,Buy a tree virtually which will be planted in real life by organisations"
  ),
  OnbordingContent(
    title: 'Reward surprises',
    image: 'images/flower2.png',
    discription: "Plant caring, your duty"
    "Take care of your plants and figure out any disease they might have"
  ),
];