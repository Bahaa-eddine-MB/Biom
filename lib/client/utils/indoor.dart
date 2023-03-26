class IndoorContent {
  String image;
  String title;
  String description;
  String info1;
  String info2;
  String info3;
  String info4;
  String info5;
  String info6;

  IndoorContent(
      {required this.image,
      required this.title,
      required this.description,
      required this.info1,
      required this.info2,
      required this.info3,
      required this.info4,
      required this.info5,
      required this.info6});
}

List<IndoorContent> Indoorcontents = [
  IndoorContent(
      title: 'Snake Plant',
      image: 'images/indoor/plant1.png',
      description:
          "The snake plant, also known as Sansevieria or mother-in-law's tongue, is a species of evergreen perennial plant characterized by its long, upright leaves that are thick and sword-shaped with pointed tips. It is a low-maintenance indoor plant that is tolerant of low light and drought conditions.",
      info1: '50-100ml\n2 weeks',
      info2: 'Bright indirect light',
      info3: '40-50%',
      info4: 'warm spot\nabove 10°C',
      info5: '1-2 times\na year',
      info6: 'up to\n10 years'),
  IndoorContent(
      title: 'Spider Plant',
      image: 'images/indoor/plant2.png',
      description:
          "Spider plants, also known as Chlorophytum comosum, are popular indoor plants that are easy to care for and are known for their long, slender leaves that resemble spider legs. They are native to tropical and southern Africa and can also be found in some parts of Asia.",
      info1: '5-10days\nUntil soil is moistened',
      info2: 'bright indirect light',
      info3: '50-60%',
      info4: 'warm temperature\n15-24C',
      info5: '1-2 times\n growing seasons',
      info6: 'up to\n10 years'),
  IndoorContent(
      title: 'Aloe Vera',
      image: 'images/indoor/plant3.png',
      description:
          "Aloe vera is a succulent plant species that is widely cultivated for its gel-like sap, which has a variety of medicinal and cosmetic uses. It is native to North Africa but is now grown worldwide in both tropical and subtropical regions.",
      info1: '2-3 week\nUntil soil is moistened',
      info2: 'Bright indirect light',
      info3: '30-50%',
      info4: '15-24C',
      info5: '2-3 times\ngrowing seasons',
      info6: '10-20 years'),
  IndoorContent(
      title: 'Peace Lily',
      image: 'images/indoor/plant4.png',
      description:
          "Peace lily (Spathiphyllum spp.) is a popular indoor plant that is valued for its attractive foliage and graceful white flowers. It is native to tropical regions of Central and South America and is widely cultivated as a houseplant around the world.",
      info1: '5-10 days\nUntil soil is moistened',
      info2: 'Bright indirect light',
      info3: '50-70%',
      info4: 'warm temperture \n18-27C',
      info5: ' 2-3 months',
      info6: '3-5 years'),
  IndoorContent(
      title: 'Rubber Plant',
      image: 'images/indoor/plant5.png',
      description:
          "The rubber plant (Ficus elastica) is a popular houseplant known for its large, glossy leaves and easy care requirements. It is native to Southeast Asia and is a member of the fig family.\nRubber plants can grow up to 100 feet tall in their natural habitat, but they can also be pruned to a more manageable size for indoor cultivation. The leaves are typically dark green and can be up to 12 inches long and 6 inches wide.",
      info1: '1-2 weeks\nuntil soil is moistened',
      info2: 'Medium indirect light',
      info3: '40-60%',
      info4: 'warm spot\n16-24C',
      info5: 'once a week\ngrowing season',
      info6: '20 years or more')
];
