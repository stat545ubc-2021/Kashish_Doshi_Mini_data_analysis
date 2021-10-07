I would also like to check the reviews for the games to see that can be used to differentiate the good games from the bad easily
```{r}
select(steam_games, c(all_reviews, recent_reviews)) %>% head(n=5)
```
It seems like the reviews are also long strings with both numbers and words. Maybe I could separate the first word/words of the all_reviews column to sort the games by
```{r}
steam_games %>% select(all_reviews) %>% separate(all_reviews, into = "overall_review", sep = ",", extra= "drop") %>% head(n=5)
```
