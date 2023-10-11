class ReptileModel {
  String name;
  String scientificName;
  String lifeSpan;
  String size;
  String weight;
  String about;
  String habitat;
  String image;
  String link;

  ReptileModel(
      {required this.name,
      required this.scientificName,
      required this.lifeSpan,
      required this.size,
      required this.weight,
      required this.about,
      required this.habitat,
      required this.image,
      required this.link});
}

var reptilesList = [
  ReptileModel(
      name: 'Komodo dragons',
      scientificName: 'Varanus komodoensis',
      lifeSpan: 'Up to 30 years',
      size: '10 feet',
      weight: '330 pounds',
      about:
          'Reaching up to 10 feet in length and more than 300 pounds, Komodo dragons are the heaviest lizards on Earth. They have long, flat heads with rounded snouts, scaly skin, bowed legs, and huge, muscular tails.',
      habitat:
          'Komodo dragons have thrived in the harsh climate of Indonesia\'s Lesser Sunda Islands for millions of years. They prefer the islands’ tropical forests but can be found across the islands. Though these athletic reptiles can walk up to seven miles per day, they prefer to stay close to home—rarely venturing far from the valleys in which they hatched.',
      image:
          'https://plus.unsplash.com/premium_photo-1661898166024-7d141970335b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1991&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/komodo-dragon'),
  ReptileModel(
      name: 'Bearded dragons',
      scientificName: 'Pogona',
      lifeSpan: '4 to 10 years',
      size: '18 to 22 inches',
      weight: '10 to 18 ounces',
      about:
          'The bearded dragon lives up to its name: Like a dragon, it’s equipped with armor of spiny reptilian scales, which include a “beard” of spikes under its chin that puffs up depending on its mood. There are eight species species of bearded dragons recognized today, all of which are affectionately called “beardies.”',
      habitat:
          'In the wild, bearded dragons’ range extends across most of Australia. They typically prefer to stick to warm, arid areas: deserts, subtropical woodlands, savannas, and scrublands. In the 1960s, Australia banned the export of wild bearded dragons; however, they’ve been bred in the United States for decades for the pet trade, and they come in a variety of color “morphs” not commonly found in the wild.',
      image:
          'https://images.unsplash.com/photo-1525219659402-5d77cda79c06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1721&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/bearded-dragon'),
  ReptileModel(
      name: 'Green Iguana',
      scientificName: 'Iguana iguana',
      lifeSpan: '20 years',
      size: '6.6 feet',
      weight: '11 pounds',
      about:
          'Green, or common, iguanas are among the largest lizards in the Americas, In Captivity as Pets They are also among the most popular reptile pets in the United States, despite being quite difficult to care for properly.',
      habitat:
          'The green iguana’s extensive range comprises the rain forests of northern Mexico, Central America, the Caribbean Islands, and southern Brazil. They spend most of their lives in the canopy, descending only infrequently to mate, lay eggs, or change trees.',
      image:
          'https://images.unsplash.com/photo-1544705769-7e4671d4eb28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/green-iguana'),
  ReptileModel(
      name: 'Green Anaconda',
      scientificName: 'Eunectes murinus',
      lifeSpan: '10 years',
      size: '20 to 30 feet',
      weight: 'Up to 550 pounds',
      about:
          'A member of the boa family, South America’s green anaconda is, pound for pound, the largest snake in the world. Its cousin, the reticulated python, can reach slightly greater lengths, but the enormous girth of the anaconda makes it almost twice as heavy.',
      habitat:
          'Anacondas live in swamps, marshes, and slow-moving streams, mainly in the tropical rain forests of the Amazon and Orinoco basins. They are cumbersome on land, but stealthy and sleek in the water. Their eyes and nasal openings are on top of their heads, allowing them to lay in wait for prey while remaining nearly completely submerged.',
      image: 'https://wallpapercave.com/dwp2x/wp3294089.jpg',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/green-anaconda'),
  ReptileModel(
      name: 'King Cobra',
      scientificName: 'Ophiophagus hannah',
      lifeSpan: '20 years',
      size: '13 feet',
      weight: 'Up to 20 pounds',
      about:
          'The king cobra—one of the most venomous snakes on the planet—can literally "stand up" and look a full-grown person in the eye. When confronted, they can lift up to a third of its body off the ground and still move forward to attack.',
      habitat:
          'King cobras live mainly in the rain forests and plains of India, southern China, and Southeast Asia, and their coloring can vary greatly from region to region. They are comfortable in a variety of habitats, including forests, bamboo thickets, mangrove swamps, high-altitude grasslands, and in rivers.',
      image:
          'https://images.unsplash.com/photo-1584244072876-04494890e37b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/king-cobra'),
  ReptileModel(
      name: 'Burmese Python',
      scientificName: 'Python bivitattus',
      lifeSpan: '20 to 25 years',
      size: '16 to 23 feet',
      weight: 'Up to 200 pounds',
      about:
          'Burmese pythons, with their beautifully patterned skin, rapid growth rate, and generally docile disposition, may be best known as the large snake of choice among reptile owners. Unfortunately these potentially huge constrictors are often poorly cared for and are frequently released into the wild. Attacks on handlers, sometimes deadly, are not uncommon.',
      habitat:
          'Native to the jungles and grassy marshes of Southeast Asia, Burmese pythons are among the largest snakes on Earth. They are capable of reaching 23 feet or more in length and weighing up to 200 pounds with a girth as big as a telephone pole. When young, they will spend much of their time in the trees. ',
      image:
          'https://images.unsplash.com/photo-1529978025782-84b96d461eaf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1734&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/burmese-python'),
  ReptileModel(
      name: 'Saltwater Crocodile',
      scientificName: 'Crocodylus porosus',
      lifeSpan: '70 years',
      size: '17 feet',
      weight: '1,000 pounds',
      about:
          'Earth’s largest living crocodilian—and, some say, the animal most likely to eat a human—is the saltwater or estuarine crocodile.',
      habitat:
          'Saltwater crocs, or "salties," as Australians affectionately refer to them, have an enormous range, populating the brackish and freshwater regions of eastern India, Southeast Asia, and northern Australia. They are excellent swimmers and have often been spotted far out at sea.',
      image:
          'https://images.unsplash.com/photo-1501808723803-f10b401a67a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1833&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/saltwater-crocodile'),
  ReptileModel(
      name: 'Alligator snapping turtles',
      scientificName: 'Macrochelys temminckii',
      lifeSpan: '20 to 70 years',
      size: '26 inches',
      weight: '220 pounds',
      about:
          'The prehistoric-looking alligator snapping turtle is the largest freshwater turtle in North America and among the largest in the world. With its spiked shell, beaklike jaws, and thick, scaled tail, this species is often referred to as the "dinosaur of the turtle world."',
      habitat:
          'Alligator snappers spend most of their lives in water, the exception being when females trudge about 160 feet inland to nest. They can stay submerged for 40 to 50 minutes before surfacing for air.',
      image:
          'https://images.unsplash.com/photo-1634610144526-f331965438a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/alligator-snapping-turtle'),
  ReptileModel(
      name: 'Gila monster',
      scientificName: 'Heloderma suspectum',
      lifeSpan: 'Up to 40 years',
      size: '20 inches',
      weight: '20 inches',
      about:
          'The Gila monster (pronounced HEE-luh) is a small, striking lizard with black scales and an array of orange stripes and spots. Along with their close cousins, the beaded lizards, Gila monsters belong to one of the only families of venomous lizards on Earth.',
      habitat:
          'Gila monsters are native to the American Southwest and Northwestern Mexico. They inhabit dry areas, such as the Mojave, Sonoran, and Chihuahuan deserts.',
      image:
          'https://images.unsplash.com/photo-1562578327-f599489e50fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1804&q=80',
      link:
          'https://www.nationalgeographic.com/animals/reptiles/facts/gila-monster'),
];
