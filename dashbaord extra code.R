
Shiny
===============================================================================
  ```{r eval=FALSE, include=FALSE}
unique_brand <- unique(all_data$Brand)
unique_shoe <- unique(all_data$Sneaker.Name)

selectInput("Select_Brand", label = "Select Brand", choices = unique_brand, selected = " Yeezy")
selectInput("Select_Shoe", label = "Select Sneaker", choices = unique_shoe, selected = "Adidas Yeezy Boost 350 Low Turtledove")

filter_data <- reactive({all_data %>% 
    filter(Brand == input$Select_Brand, Sneaker == input$Select_Shoe)})

```

```{r eval=FALSE, include=FALSE}
output$plot <- renderPlotly({
  ggplotly(
    ggplot(filter_data(), aes(x = Order.Date, Sale.Price)) +
      geom_line() +
      labs(title = "Sale Price Over Time")
  )
})


plotlyOutput("plot")
```

```{r}

```

EX
===============================================================================
  Column {data-width=650 .tabset}
----------------------------------------------------------------------
  
  ### Chart A
  
  ```{r}

```

### Chart B

```{r}

```

Column {data-width=350}
-----------------------------------------------------------------------
  
  ### Chart C
  
  ```{r}

```

### Chart D

```{r}

```



