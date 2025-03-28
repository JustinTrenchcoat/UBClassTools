getPermutations <- function(num_choice, answer_hash) {
  rsf <- c()
  vec <- LETTERS[1:num_choice]
  for (i in 1:length(vec)) {
    for (j in i:length(vec)) {
      temp <- vec[i:j]
      rsf <- c(rsf, paste(temp, collapse= ''))
      if (i < j) {
        for (k in i:j) {
          rsf <- c(rsf, paste(temp[-k], collapse=''))
        }
      }
    }
  }
  possible_answers <- unique(rsf)
  for (ans in possible_answers){
    check = digest::digest(tolower(ans))
    if (check==answer_hash){
      print("The answer is:")
      print(ans)
    }
  }
  return("Function Complete!")
}
