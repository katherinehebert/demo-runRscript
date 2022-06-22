# Script to prepare a dataset and subset it for a project

## Install and load libraries ----

# we will use the Palmer Penguins dataset
library(palmerpenguins)

# to filter our data
library(dplyr)

# to plot
library(ggplot2)

## Plot a relationship =========================================================

ggplot(data = palmerpenguins::penguins, 
       aes(x = flipper_length_mm,
           y = body_mass_g,
           group = species,
           colour = species)) +
  geom_point(aes(shape = species),
             size = 2,
             alpha = 0.2) +
  geom_smooth(method = "lm",
              se = FALSE) +
  theme_minimal() +
  scale_color_manual(values = c("darkorange",
                                "purple",
                                "cyan4")
  ) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_minimal()

## Save plot ===================================================================

ggsave("figures/fig1_penguins.png", width = 6.04, height = 7.58)
