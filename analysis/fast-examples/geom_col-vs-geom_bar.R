df <- data.frame(group = c("A", "B", "C"),
                 count = c(3, 5, 6)) %>% 
  as_tibble()
df2 <- data.frame(cat = c("A", "A", "A", 
                          "B", "B", "B", "B", "B",
                          "C", "C", "C", "C", "C", "C")) %>% 
  as_tibble()

df 
df2
df_new <- 
  df2 %>% 
  group_by(group = cat) %>% 
  summarise(
    count = n()
  ) %>% 
  ungroup()
df_new
df

g1 <- 
  df %>% 
  ggplot(mapping = aes(x = group, y = count)) + 
  #geom_col()
  geom_point()
g1
g2 <- 
  df2 %>% 
  ggplot(aes(x = cat)) + 
  geom_bar()
g2
