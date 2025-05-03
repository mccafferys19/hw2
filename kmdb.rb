# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# # TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
# Steps:
    # rails generate model _________ (Studio, Movie, Actor, Role)
    # input structure to migrate files
    # run using rails db:migrate

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
# Create Studios
warner = Studio.new
warner["name"] = "Warner Bros."
warner.save

# if warner.save
#     puts "Studio saved: #{warner.name}"
#   else
#     puts "Error saving studio: #{warner.errors.full_messages}"
#   end

# Create Movies
batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["rated"] = "PG-13"
batman_begins["studio_id"] = warner.id
batman_begins.save

# if batman_begins.save
#     puts "Movie saved: #{batman_begins.title}"
#   else
#     puts "Error saving movie: #{batman_begins.errors.full_messages}"
#   end

dark_knight = Movie.new
dark_knight["title"] = "The Dark Knight"
dark_knight["year_released"] = 2008
dark_knight["rated"] = "PG-13"
dark_knight["studio_id"] =  warner.id
dark_knight.save

# if dark_knight.save
#     puts "Movie saved: #{dark_knight.title}"
#   else
#     puts "Error saving movie: #{dark_knight.errors.full_messages}"
#   end

knight_rises = Movie.new
knight_rises["title"] = "The Dark Knight Rises"
knight_rises["year_released"] = 2012
knight_rises["rated"] = "PG-13"
knight_rises["studio_id"] =  warner.id
knight_rises.save

# if knight_rises.save
#     puts "Movie saved: #{knight_rises.title}"
#   else
#     puts "Error saving movie: #{knight_rises.errors.full_messages}"
#   end

# Create Actors
bale = Actor.new
bale["name"] = "Christian Bale"
bale.save

# if bale.save
#     puts "Actor saved: #{bale.name}"
#   else
#     puts "Error saving actor: #{bale.errors.full_messages}"
#   end

caine = Actor.new
caine["name"] = "Michael Caine"
caine.save

# if caine.save
#     puts "Actor saved: #{caine.name}"
#   else
#     puts "Error saving actor: #{caine.errors.full_messages}"
#   end

  neeson = Actor.new
  neeson["name"] = "Liam Neeson"
  neeson.save
  
  holmes = Actor.new
  holmes["name"] = "Katie Holmes"
  holmes.save
  
  oldman = Actor.new
  oldman["name"] = "Gary Oldman"
  oldman.save
  
  ledger = Actor.new
  ledger["name"] = "Heath Ledger"
  ledger.save
  
  eckhart = Actor.new
  eckhart["name"] = "Aaron Eckhart"
  eckhart.save
  
  gyllenhaal = Actor.new
  gyllenhaal["name"] = "Maggie Gyllenhaal"
  gyllenhaal.save
  
  hardy = Actor.new
  hardy["name"] = "Tom Hardy"
  hardy.save
  
  gordon_levitt = Actor.new
  gordon_levitt["name"] = "Joseph Gordon-Levitt"
  gordon_levitt.save
  
  hathaway = Actor.new
  hathaway["name"] = "Anne Hathaway"
  hathaway.save

# # Create Roles
# # Batman Begins
new_role = Role.new
new_role.movie = batman_begins
new_role.actor = bale
new_role.character_name = "Bruce Wayne"
new_role.save

new_role = Role.new
new_role.movie = batman_begins
new_role.actor = caine
new_role.character_name = "Alfred"
new_role.save

new_role = Role.new
new_role.movie = batman_begins
new_role.actor = neeson
new_role.character_name = "Ra's Al Ghul"
new_role.save

new_role = Role.new
new_role.movie = batman_begins
new_role.actor = holmes
new_role.character_name = "Rachel Dawes"
new_role.save

new_role = Role.new
new_role.movie = batman_begins
new_role.actor = oldman
new_role.character_name = "Commissioner Gordon"
new_role.save

# The Dark Knight
new_role = Role.new
new_role.movie = dark_knight
new_role.actor = bale
new_role.character_name = "Bruce Wayne"
new_role.save

new_role = Role.new
new_role.movie = dark_knight
new_role.actor = ledger
new_role.character_name = "Joker"
new_role.save

new_role = Role.new
new_role.movie = dark_knight
new_role.actor = eckhart
new_role.character_name = "Harvey Dent"
new_role.save

new_role = Role.new
new_role.movie = dark_knight
new_role.actor = caine
new_role.character_name = "Alfred"
new_role.save

new_role = Role.new
new_role.movie = dark_knight
new_role.actor = gyllenhaal
new_role.character_name = "Rachel Dawes"
new_role.save

# The Dark Knight Rises
new_role = Role.new
new_role.movie = knight_rises
new_role.actor = bale
new_role.character_name = "Bruce Wayne"
new_role.save

new_role = Role.new
new_role.movie = knight_rises
new_role.actor = oldman
new_role.character_name = "Commissioner Gordon"
new_role.save

new_role = Role.new
new_role.movie = knight_rises
new_role.actor = hardy
new_role.character_name = "Bane"
new_role.save

new_role = Role.new
new_role.movie = knight_rises
new_role.actor = gordon_levitt
new_role.character_name = "John Blake"
new_role.save

new_role = Role.new
new_role.movie = knight_rises
new_role.actor = hathaway
new_role.character_name = "Selina Kyle"
new_role.save

# # Check
#     puts Movie.count
#     puts Actor.count
#     puts Role.count
#     puts Studio.count

# # Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# # Query the movies data and loop through the results to display the movies output.
# # TODO!

all_movies = Movie.all

for movie in all_movies
    studio = movie.studio  # Access the studio through the relationship
    puts "#{movie.title}  #{movie.year_released}  #{movie.rated}  #{studio.name}"
  end

# # Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# # Query the cast data and loop through the results to display the cast output for each movie.
# # TODO!

all_roles = Role.all

for role in all_roles
    movie = role.movie  # Access the movie through the relationship
    actor = role.actor  # Access the actor through the relationship
    puts "#{movie.title}  #{actor.name}  #{role.character_name}"
  end