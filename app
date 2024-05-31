import React, { useState, useRef, useEffect } from "react";
import { Image, StyleSheet, Text, TouchableOpacity, View, Animated } from "react-native";

const App = () => {
  const [page, setPage] = useState(1);
  const opacity = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.timing(opacity, {
      toValue: 1,
      duration: 500,
      useNativeDriver: true,
    }).start();
  }, [page]);

  const handlePageChange = (pageNumber) => {
    Animated.timing(opacity, {
      toValue: 0,
      duration: 500,
      useNativeDriver: true,
    }).start(() => {
      setPage(pageNumber);
      Animated.timing(opacity, {
        toValue: 1,
        duration: 500,
        useNativeDriver: true,
      }).start();
    });
  };

  const Page1 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/b7dd4888-6101-47d3-917e-a61b24e20ca4-z0cqay.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Once upon a time, there was a Potato. Ever since he was a little spud he wanted to be an{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(2)}>
          ASTRONAUT
        </Text>
        .
      </Text>
    </Animated.View>
  );

  const Page2 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/b234be79-04b2-42d4-a036-2e93ede14ac1-mm87lp.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        One day, Potato's friend, Carrot, came bounding over with exciting news. "Potato, have you heard? The Interstellar Space Agency is recruiting new astronauts! They're looking for the best and brightest to embark on a daring mission to{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(3)}>
          EXPLORE
        </Text>{" "}
        the far reaches of the galaxy."
      </Text>
    </Animated.View>
  );

  const Page3 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/e00fbbd5-c6ba-4a50-9070-b3c4da9190eb-1jfxvj.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Excited by the possibility of fulfilling his lifelong dream, Potato's eyes widened with determination. "That's it! I'm going to be an astronaut!" he declared, setting his sights on the stars.{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(4)}>
          BEGIN TRAINING{" "}
        </Text>
        immediately, the road to space is not an easy one. OR{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(5)}>
          SEEK GUIDANCE{" "}
        </Text>
        from wise old Vegetable elders. OR{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(6)}>
          BUILD{" "}
        </Text>
        a makeshift rocket in the backyard and launch it. OR{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(7)}>
          SIT AROUND{" "}
        </Text>
        and wait for the rocket to build itself.
      </Text>
    </Animated.View>
  );

  const Page4 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/354855b9-f96c-4188-91f5-d473941df6c7-1t1zn.png.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Potato wasted no time. He rolled up his sleeves, or rather, his peel, and began training immediately. He started with physical exercises to build strength and endurance. Every day, he ran laps around the garden, did push-ups using his starchy arms, and even practiced zero-gravity maneuvers by bouncing around in a{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(8)}>
          TRAMPOLINE
        </Text>
        .
      </Text>
    </Animated.View>
  );

  const Page5 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/d854ad04-ed4b-40b5-bb72-65937ee2ae5b-1lib62.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Potato sought out the wise old Vegetable elder who lived in a groovy little corner of the Great Garden. This "baked" Potato was always adorned in tie-dye and had a perpetually relaxed demeanor, a true embodiment of the hippie spirit.

        "Hey there you, young tater," the elder greeted Potato with a laid-back smile. "So, you wanna be an astronaut, huh? Far out, spud. But you know, maybe instead of shootin' for the stars, you should{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(10)}>
          SEEK MEDIOCRITY
        </Text>
        .
      </Text>
    </Animated.View>
  );

  const Page6 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/e9ce89ae-d43c-4c43-b5f4-1a5703a12c87-1k0s4u.png.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Potato's backyard became a bustling construction site as he worked tirelessly to build his makeshift rocket. He scrounged up materials and pieced together his{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(12)}>
          SPACECRAFT
        </Text>{" "}
        using random pieces he found around town.
      </Text>
    </Animated.View>
  );

  const Page7 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/52e98773-b036-4fa7-abb0-aa3039dbd6d8-1kgzhq.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Potato settled into his favorite spot on the couch, lazily waiting for the rocket to build itself. Days turned into weeks, and still, the rocket remained nothing more than a pile of unassembled parts in the backyard.

        As Potato lounged around, watching television and munching on snacks, he began to realize that his dream of becoming an astronaut wasn't going to happen on its own. But the allure of{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(15)}>
          COMFORT AND APATHY
        </Text>
        was too strong to resist.
      </Text>
    </Animated.View>
  );

  const Page8 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/4e16211c-bf19-421a-8788-3d6cb6c84980-20e95.png.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        His mental training was just as rigorous. Potato spent hours studying astrophysics, learning about space navigation, and practicing problem-solving in simulated{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(9)}>
          SPACE MISSIONS
        </Text>
        .
      </Text>
    </Animated.View>
  );

  const Page9 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/1e846104-f914-49ea-875b-477960295b06-fb4hm4.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        After months of dedicated training, Potato finally felt ready to apply to the Interstellar Space Agency. His hard work paid off when he received an acceptance letter!

        Potato soared into space, fulfilling his lifelong dream of becoming an astronaut. He marveled at the beauty of the cosmos and made groundbreaking discoveries on his intergalactic journey.
      </Text>
      <TouchableOpacity onPress={() => handlePageChange(1)} style={styles.navigateButton}>
        <Text style={styles.navigateText}>&lt; START A NEW SPUD</Text>
      </TouchableOpacity>
    </Animated.View>
  );

  const Page10 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/5ac6be06-e1a4-4f7d-986c-16589c911f27-1wq5h.png.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Perplexed by this unconventional advice, Potato furrowed his brow. "But I've always dreamed of exploring the cosmos, of reaching for something greater than myself."

        The elder chuckled softly. "I hear ya, spud. But sometimes, the real adventure is right here, in the simple things. Take a{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(11)}>
          STROLL THROUGH THE GARDEN
        </Text>
        , feel the breeze on your peel, and maybe you'll find that the stars aren't the only things worth reaching for."

        With the old vegetable's words echoing in his mind, Potato pondered the idea of seeking mediocrity. Could there be wisdom in embracing the ordinary, in finding fulfillment in the everyday moments of life?
      </Text>
    </Animated.View>
  );

  const Page11 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/50afd256-6b2c-47c9-9e3e-421b04b6e9b4-l73gd9.png.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Inspired by his elder, Potato decided to forgo his dreams of becoming an astronaut and instead embraced a life of simplicity and contentment. He found joy in the small pleasures of gardening, spending time with friends, and watching the sunset, realizing that true happiness could be found in the here and now.
      </Text>
      <TouchableOpacity onPress={() => handlePageChange(1)} style={styles.navigateButton}>
        <Text style={styles.navigateText}>&lt; START A NEW SPUD</Text>
      </TouchableOpacity>
    </Animated.View>
  );

  const Page12 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/ac07a7b8-ad53-42c7-b438-625780bbcc33-l8pw7o.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        As the final "bolts" were tightened and the engines roared to life, Potato felt a surge of excitement coursing through him. With a mighty{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(13)}>
          LAUNCH...
        </Text>{" "}
        he blasted off into the unknown expanse of space. Potato's homemade rocket held together surprisingly well, and he successfully reached the stars.
      </Text>
    </Animated.View>
  );

  const Page13 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "crash.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Unfortunately, Potato's backyard rocket sputtered and fizzled and crashed back down to Earth. Undeterred, Potato swore to return to space and set out right away to do more{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(4)}>
          TRAINING
        </Text>
        .
      </Text>
    </Animated.View>
  );

  const Page14 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/b7dd4888-6101-47d3-917e-a61b24e20ca4-z0cqay.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        Potato settled into his favorite spot on the couch, lazily waiting for the rocket to build itself. Days turned into weeks, and still, the rocket remained nothing more than a pile of unassembled parts in the backyard.

        As Potato lounged around, watching television and munching on snacks, he began to realize that his dream of becoming an astronaut wasn't going to happen on its own. But the allure of{" "}
        <Text style={styles.highlight} onPress={() => handlePageChange(15)}>
          COMFORT AND APATHY
        </Text>{" "}
        was too strong to resist.
      </Text>
    </Animated.View>
  );

  const Page15 = () => (
    <Animated.View style={[styles.container, { opacity }]}>
      <Image
        source={{ uri: "https://utfs.io/f/27b02280-5428-4344-a081-13b739e0ff89-1jo1pn.png" }}
        style={styles.image}
      />
      <Text style={styles.text}>
        With each passing day, Potato sank deeper into the cushions of the couch, content to live out his days as a sofa spud. His dreams of space exploration faded into distant memories as he embraced the life of a true couch potato.
      </Text>
      <TouchableOpacity onPress={() => handlePageChange(1)} style={styles.navigateButton}>
        <Text style={styles.navigateText}>&lt; START A NEW SPUD</Text>
      </TouchableOpacity>
    </Animated.View>
  );

  return (
    <>
      {page === 1 ? <Page1 /> : 
       page === 2 ? <Page2 /> : 
       page === 3 ? <Page3 /> :
       page === 4 ? <Page4 /> :
       page === 5 ? <Page5 /> : 
       page === 6 ? <Page6 /> : 
       page === 7 ? <Page7 /> : 
       page === 8 ? <Page8 /> : 
       page === 9 ? <Page9 /> : 
       page === 10 ? <Page10 /> : 
       page === 11 ? <Page11 /> : 
       page === 12 ? <Page12 /> : 
       page === 13 ? <Page13 /> : 
       page === 14 ? <Page14 /> : 
       page === 15 ? <Page15 /> : 
       null}
    </>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#c8b8ab", // Updated background color
  },
  image: {
    width: 512,
    height: 512,
    marginBottom: 20,
  },
  text: {
    fontSize: 18,
    color: "#4b4b4b",
    textAlign: "center",
    marginBottom: 20,
  },
  navigateButton: {},
  navigateText: {
    fontSize: 30,
    color: "white", // Updated navigate text color to white
  },
  highlight: {
    color: "white", // Updated highlight color to white
    fontWeight: "bold",
  },
});

export default App;
