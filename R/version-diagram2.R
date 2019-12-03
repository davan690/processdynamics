
#version control figures below
rmarkdown::render(input = "./R/version-diagram-new.R", 
                  output_format = "word_document",
                  output_dir = "./docs",clean = FALSE)
