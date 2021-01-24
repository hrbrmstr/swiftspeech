library(swiftspeech)

parts_of_speech(paste0(c(
  "The comm wasn't working. Feeling increasingly ridiculous, he pushed",
  "the button for the 1MC channel several more times. Nothing. He opened",
  "his eyes and saw that all the lights on the panel were out. Then he",
  "turned around and saw that the lights on the refrigerator and the",
  "ovens were out. It wasn’t just the coffeemaker; the entire galley was",
  "in open revolt. Holden looked at the ship name, Rocinante, newly",
  "stenciled onto the galley wall, and said, Baby, why do you hurt me",
  "when I love you so much?"
), collapse = " ")) -> res

expect_true(inherits(res, "data.frame"))

expect_true("Preposition" %in% res$tag)