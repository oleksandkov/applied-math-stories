ds2 %>% 
  slice(1) %>% 
  select(ends_with("index")) %>% 
  pivot_longer(
    cols = everything()
    ,names_to = "index"
    ,values_to = "value"
  ) %>% 
  mutate(
    sum = sum(value)
  )
ds2 %>% 
  slice(1) %>% 
  select(1:3)
