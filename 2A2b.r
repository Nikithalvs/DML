2A

library(party)
input_data <- readingSkills
png(file = "decision-tree.png")
my_formula <- nativeSpeaker ~ age + shoeSize + score
output_tree <- ctree(my_formula, data = input_data)
plot(output_tree)
dev.off()


2.B

# Initialize counter
counter <- 1

# Start while loop
while (counter <= 5) {
  print(paste("Counter:", counter))
  counter <- counter + 1 # Increment counter
}
