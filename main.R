source("functions.R")

characterVector <- c("Sten Sture d.y.", "Mange Schmidt", "Hans Rosling", "Ace of Base-Uffe", "Bellman", "Tomas Ravelli", "Franz Beckenbauer", "Magnus Uggla","Lucky Luke" ,"Stryktipset-Kent", "Mark Levengood","Zlatan", "Paavo Nurmi", "Batman", "Grodan Boll", "Leif GW Persson", "James Bond", "Carl Bildt", "Donald Trump", "Pekka Heino")


nPlayers <- unlist(ChooseNumberOfPlayers())[1]
playerFrame <- data.frame(matrix(ncol = 3, nrow = nPlayers))
colnames(playerFrame) <- c("Left Hand", "Player", "Right Hand")

# Generate all characters to be used in the game 
playerFrame <- GenerateCharacterList(nPlayers, playerFrame, characterVector)

# Establish connections between characters
playerFrame <- EstablishConnections(nPlayers, playerFrame)

PrintAllNames(nPlayers, playerFrame)



