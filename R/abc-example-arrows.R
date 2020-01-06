# Packages needed for the test
library(DiagrammeR)
library(magrittr)

# Node and edge df solution
create_graph() %>% 
  add_node( # id 1
    label = "A",
    type = "group_1",
    node_aes = node_aes(
      style = "filled",
      shape = "rectangle",
      fixedsize = FALSE)
  ) %>% 
  add_node( # id 2
    type = "group_1",
    node_aes = node_aes(
      style = "invisible",
      height = 0,
      width = 0)
  ) %>% 
  add_edge(
    from = 1,
    to = 2,
    edge_aes = edge_aes(
      arrowhead = "none")
  ) %>% 
  add_node( # id 3
    type = "group_2",
    node_aes = node_aes(
      style = "invisible",
      height = 0,
      width = 0)
  ) %>%
  add_edge(
    from = 2,
    to = 3,
    edge_aes = edge_aes(
      arrowhead = "none")
  ) %>% 
  add_node( # id 4
    type = "group_3",
    node_aes = node_aes(
      style = "invisible",
      height = 0,
      width = 0)
  ) %>%
  add_edge(
    from = 2,
    to = 4,
    edge_aes = edge_aes(
      arrowhead = "none")
  ) %>% 
  add_node( # id 5
    label = "B",
    type = "group_2",
    node_aes = node_aes(
      style = "filled",
      shape = "rectangle",
      fixedsize = FALSE)
  ) %>% 
  add_edge(
    from = 3,
    to = 5,
    edge_aes = edge_aes(
      arrowhead = "normal")
  ) %>% 
  add_node( # id 6
    label = "C",
    type = "group_3",
    node_aes = node_aes(
      style = "filled",
      shape = "rectangle",
      fixedsize = FALSE)
  ) %>%
  add_edge(
    from = 4,
    to = 6,
    edge_aes = edge_aes(
      arrowhead = "normal")
  ) %>% 
  render_graph()