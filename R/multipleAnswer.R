#' Title
#'
#' @param num_choice number of choices you have in the question
#' @param answer_hash the hash number of your right answer, it should be shown to you on the screen if you get it wrong at the first time.
#'
#' @returns a string indicating that function is complete.
#' @export
#'
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
