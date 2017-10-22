---
output:
  html_document:
        keep_md: true
---
# Seating-Game
This is a game to randomly assign seating at parties and get-togethers in a fun way. The basic idea is to make people mix and mingle through role playing. It is divided into two phases:

<b>Phase1</b>:
Each player receives a character that they are to play throughout the game. Now they are to move around the floor and act as if they are their character. Ideally, they should not give away their identity in a too obvious way. Try to imitate the characters general personality traits at first and only give away obvious attributes later on.

Note: If the player does not recognize the character, he can request a new one. This should be done as soon as possible, as minumum before the end of phase 1.

<b>Phase2</b>:
When phase 2 starts, each player receives two characters that they are to look for. E.g., they may receive "James Bond" on their left hand side and "Dalai Lama" on their right. Now they should try to find these characters by observing and asking questions to the people around them. Once found, they are to lock arms and continue looking together for the person at the end of each side of their "chain". This continues until the whole group is arm-locked together and a big circle is formed.

```{r, echo=FALSE}
knitr::kable(playerFrame)
plot(rn, vertex.size=10, vertex.label=playerFrame[,2], vertex.shape="none",vertex.label.color="black",vertex.label.font=2, vertex.label.cex=1)
```
