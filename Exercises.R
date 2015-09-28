## SOME Exercises

library(car)  	# Load the library containing the sample data
head(Duncan)
plot(Duncan$education,Duncan$prestige) # Baic scatterplot

# Exercise 1
# Here is a truly ugly scatter plot. As an exercise, play with the parameters
#to creating something that is more pleasing to the eye. 
# Here are a few web pages that you may find helpful.    
#   http://www.statmethods.net/advgraphs/parameters.html
#   http://www.statmethods.net/graphs/scatterplot.html 
#   http://students.washington.edu/mclarkso/documents/line%20styles%20Ver2.pdf

attach(Duncan)  	# make variables in data frame available in environment
#
plot(education,prestige,
main="Simple but ugly scatter plot", #add a title
col="red",                  # Change the color of thepoints
pch=15,                     # Change the symbol to plot  
cex=2,                      # Change size of plotting symbol   	
xlab="EDUCATION",		        # Add a label on the x-axis
ylab="PRESTIGE",            # Add a label on the y-axis
bty="n",                    # Remove the box around the plot
asp=1,                      # Change the y/x aspect ratio see help(plot)
font.axis=4,                # Change axis font to bold italic
col.axis="green",           # Change axia color to green
las=1)                      # Make axis labels parallel to x-axis
abline(lm(prestige~education), col="red") # regression line (y~x) 
lines(lowess(prestige,education), col="blue") # lowess line (y~x)

# Exercise 2
# Make profession a column in the data set

# Exercise 3
# Explore the Duncan data set computing elementary statistics,
# producing histograms, box plots etc. Try building some simple linear models

# Exercise 4
# Use ggplot2 to produce a plot that groups data by type