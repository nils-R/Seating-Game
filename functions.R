UsePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

ChooseNumberOfPlayers <- function(){
  x <- "10" #readline("How many players are there?")  
  # possible other input to be added here
  x <- as.numeric(unlist(strsplit(x, ",")))
  return(list(x))
}

GenerateCharacterList <- function(nPlayers, playerFrame, characterVector) {
  # Generate all characters to be used in the game 
  for (i in 1:nPlayers) {
    character <- sample(characterVector, 1)
    
    while (character %in% playerFrame[,2]) {
      character <- sample(characterVector, 1)
    }
    playerFrame[i,2] <- character
  }
return (playerFrame)
}

EstablishConnections <- function(nPlayers, playerFrame){
  # Establish connections between characters
  for (i in 1:nPlayers) {
    if (i == 1) {
      playerFrame[i,1] <- playerFrame[nPlayers,2]
      playerFrame[i,3] <- playerFrame[i+1,2]
      next
    }
    else if (i == nPlayers) {
      playerFrame[i,1] <- playerFrame[nPlayers-1,2]
      playerFrame[i,3] <- playerFrame[1,2]
      next
    }
    else
      playerFrame[i,1] <- playerFrame[i-1,2]
      playerFrame[i,3] <- playerFrame[i+1,2]
  }
return (playerFrame)
}

PrintAllNames <- function(nPlayers, playerFrame){
# Print all names
  for (i in 1:nPlayers) {
    print(paste(playerFrame[i,]),sep="\t")
  }
}