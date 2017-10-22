source("functions.R")
UsePackage("igraph")

characterVector <- c("Sten Sture d.y.", "Mange Schmidt", "Hans Rosling", "Pekka Heino", "Ace of Base-Uffe", "Bellman", 
                     "Tomas Ravelli", "Franz Beckenbauer", "Magnus Uggla","Lucky Luke" ,"Pavarotti", 
                     "Zlatan", "Paavo Nurmi", "Leif GW") #, "James Bond", "Carl Bildt", 
                     #"Donald Trump","Harry Potter", "Mark Levengood","Grodan Boll")

nPlayers <- unlist(ChooseNumberOfPlayers())[1]
if (nPlayers > length(characterVector)) {
  stop("Not enough characters for this many players. Either extend the character list or play with a smaller group")
}

playerFrame <- data.frame(matrix(ncol = 3, nrow = nPlayers))
colnames(playerFrame) <- c("Left Hand", "Player", "Right Hand")

# Generate all characters to be used in the game 
playerFrame <- GenerateCharacterList(nPlayers, playerFrame, characterVector)

# Establish connections between characters
playerFrame <- EstablishConnections(nPlayers, playerFrame)

# Graph and print output
rn <- graph.ring(nPlayers)
plot(rn, vertex.label=playerFrame[,2], vertex.shape="none",vertex.label.color="black",vertex.label.font=2
    , vertex.label.cex=0.8, rescale =TRUE)
knitr::kable(playerFrame)