install.packages("gapminder")
library(gapminder)
data("gapminder")

summary(gapminder)
x <- mean (gapminder$gdpPercap)
x

attach(gapminder)
median(pop)
hist(lifeExp)
hist(log(pop))

boxplot(lifeExp ~ continent)
plot(lifeExp ~ log(gdpPercap))


install.packages("dyplr")
library(dyplr)

df1 <- gapminder %>%
  select(country, lifeExp) %>%
  filter(country == "South Africa" |country == "Ireland") %>%
  group_by(country) %>%
  summarise(Average_life = mean(lifeExp))


install.packages("ggplot2")
library(ggplot2)

gapminder %>%
  filter(gdpPercap <50000) %>%
  ggplot(aes(x=log(gdpPercap), y=lifeExp, col = year, size =pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method=lm)
  facet_wrap(~continent)
  

summary(lm(lifeExp ~ gdpPercap+pop))



