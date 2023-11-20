GRAY1 <- "#231F20"
GRAY2 <- "#414040"
GRAY3 <- "#555655"
GRAY4 <- "#646369"
GRAY5 <- "#76787B"
GRAY6 <- "#828282"
GRAY7 <- "#929497"
GRAY8 <- "#A6A6A5"
GRAY9 <- "#BFBEBE"
BLUE1 <- "#174A7E"
BLUE2 <- "#4A81BF"
BLUE3 <- "#94B2D7"
BLUE4 <- "#94AFC5"
BLUE5 <- "#22435e"
BLUE6 <- "#95B3D7"
RED1 <- "#C3514E"
RED2 <- "#E6BAB7"
RED3 <- "#800000"
GREEN1 <- "#0C8040"
GREEN2 <- "#9ABB59"
GREEN3 <- "#31859C"
GREEN4 <- "#4BACC6"
GREEN5 <- "#93CDDD"
ORANGE1 <- "#F79747"
ORANGE2 <- "#FAC090"

theme_test <- function(base_aspect=0.5,font="Times New Roman",axes_text=T){
  theme_minimal() %+replace% 
    if (axes_text){
    theme(
      ## Grid elements
      panel.grid.major = element_blank(), # strip major gridlines
      panel.grid.minor = element_blank(), # same for minor ones
      aspect.ratio = 0.5, #just one number? ... height:width (for fixed display)
      panel.background = element_rect(
        fill = "#fcfcf4",
        colour = "#ff4100"
        # linetype = "dash"
      ),
      axis.ticks = element_blank(),
      
      # panel.spacing = 2, # for facet_wrap
      
      
      # theme_minimal() already strips axis lines so we don't have to do it again
      ## Text elements
      plot.title = element_text(
        family = font,
        size = 20,
        face = 'bold',
        hjust = 0,
        vjust = 2),
      
      plot.subtitle = element_text(
        family = font,
        size = 14),
      
      plot.caption = element_text(
        family = font,
        size = 9,
        hjust = 1),
      
      axis.title = element_text(
        family = font,
        size = 10),
      
      axis.text = element_text(
        family = font,
        size = 9),
      
      axis.text.x = element_text(
        margin = margin(5,b=10),
        hjust=0.5)
    )} else{
      theme(
        ## Grid elements
        panel.grid.major = element_blank(), # strip major gridlines
        panel.grid.minor = element_blank(), # same for minor ones
        aspect.ratio = 0.5, #just one number? ... height:width (for fixed display)
        panel.background = element_rect(
          fill = "#fcfcf4",
          colour = "#ff4100"
          # linetype = "dash"
        ),
        axis.ticks = element_blank(),
        
        # panel.spacing = 2, # for facet_wrap
        
        
        # theme_minimal() already strips axis lines so we don't have to do it again
        ## Text elements
        plot.title = element_text(
          family = font,
          size = 20,
          face = 'bold',
          hjust = 0,
          vjust = 2),
        
        plot.subtitle = element_text(
          family = font,
          size = 14),
        
        plot.caption = element_text(
          family = font,
          size = 9,
          hjust = 1),
        
        axis.title = element_blank(),
        
        axis.text = element_blank(),
        
        axis.text.x = element_blank()
      )
    }
  
}