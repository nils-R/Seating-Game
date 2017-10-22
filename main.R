source("functions.R")
UsePackage("igraph")

characterVector <- c("Annie Lööf", "Sten Sture d.y.", "Mange Schmidt", "Hans Rosling", "Ace of Base-Uffe", "Bellman", "Tomas Ravelli", "Franz Beckenbauer", "Magnus Uggla","Lucky Luke" ,"Pavarotti", "Mark Levengood","Zlatan", "Paavo Nurmi", "Batman", "Grodan Boll", "Leif GW", "James Bond", "Carl Bildt", "Donald Trump", "Pekka Heino")

nPlayers <- unlist(ChooseNumberOfPlayers())[1]
playerFrame <- data.frame(matrix(ncol = 3, nrow = nPlayers))
colnames(playerFrame) <- c("Left Hand", "Player", "Right Hand")

# Generate all characters to be used in the game 
playerFrame <- GenerateCharacterList(nPlayers, playerFrame, characterVector)

# Establish connections between characters
playerFrame <- EstablishConnections(nPlayers, playerFrame)

# Print and graph output
knitr::kable(playerFrame)
rn <- make_ring(nPlayers)
plot(rn, vertex.size=10, vertex.label=playerFrame[,2], vertex.shape="none",vertex.label.color="black",vertex.label.font=2, vertex.label.cex=1)

