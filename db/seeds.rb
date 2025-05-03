# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy any existing records
# Studio.destroy_all
# Movie.destroy_all
# Actor.destroy_all
# Role.destroy_all

# Create Studios
# new_studio = Studio.new
# new_studio["name"] = "Warner Bros."
# new_studio.save

# # if new_studio.save
# #     puts "Studio saved: #{new_studio.name}"
# #   else
# #     puts "Error saving studio: #{new_studio.errors.full_messages}"
# #   end

# # Create Movies
# new_movie = Movie.new
# new_movie["title"] = "Batman Begins"
# new_movie["year_released"] = 2005
# new_movie["rated"] = "PG-13"
# new_movie["studio_id"] = new_studio.id
# new_movie.save

# # if new_movie.save
# #     puts "Movie saved: #{new_movie.title}"
# #   else
# #     puts "Error saving movie: #{new_movie.errors.full_messages}"
# #   end

# new_movie = Movie.new
# new_movie["title"] = "The Dark Knight"
# new_movie["year_released"] = 2008
# new_movie["rated"] = "PG-13"
# new_movie["studio_id"] =  new_studio.id
# new_movie.save

# # if new_movie.save
# #     puts "Movie saved: #{new_movie.title}"
# #   else
# #     puts "Error saving movie: #{new_movie.errors.full_messages}"
# #   end

# new_movie = Movie.new
# new_movie["title"] = "The Dark Knight Rises"
# new_movie["year_released"] = 2012
# new_movie["rated"] = "PG-13"
# new_movie["studio_id"] =  new_studio.id
# new_movie.save

# # if new_movie.save
# #     puts "Movie saved: #{new_movie.title}"
# #   else
# #     puts "Error saving movie: #{new_movie.errors.full_messages}"
# #   end

# # Create Actors
# new_actor = Actor.new
# new_actor["name"] = "Christian Bale"
# new_actor.save

# # if new_actor.save
# #     puts "Actor saved: #{new_actor.name}"
# #   else
# #     puts "Error saving actor: #{new_actor.errors.full_messages}"
# #   end

# new_actor = Actor.new
# new_actor["name"] = "Michael Caine"
# new_actor.save

# # if new_actor.save
# #     puts "Actor saved: #{new_actor.name}"
# #   else
# #     puts "Error saving actor: #{new_actor.errors.full_messages}"
# #   end

# new_actor = Actor.new
# new_actor["name"] = "Liam Neeson"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Katie Holmes"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Gary Oldman"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Heath Ledger"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Aaron Eckhart"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Maggie Gyllenhaal"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Tom Hardy"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Joseph Gordon-Levitt"
# new_actor.save

# new_actor = Actor.new
# new_actor["name"] = "Anne Hathaway"
# new_actor.save

# # # Create Roles
# # # Batman Begins
# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "Batman Begins"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Christian Bale"}).id
# new_role["character_name"] = "Bruce Wayne"
# new_role.save

# # if new_role.save
# #     puts "Role saved: #{new_role.character_name} in #{new_role.movie.title} played by #{new_role.actor.name}"
# #   else
# #     puts "Error saving role: #{new_role.errors.full_messages}"
# #   end

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "Batman Begins"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Michael Caine"}).id
# new_role["character_name"] = "Alfred"
# new_role.save

# # if new_role.save
# #     puts "Role saved: #{new_role.character_name} in #{new_role.movie.title} played by #{new_role.actor.name}"
# #   else
# #     puts "Error saving role: #{new_role.errors.full_messages}"
# #   end

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "Batman Begins"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Liam Neeson"}).id
# new_role["character_name"] = "Ra's Al Ghul"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "Batman Begins"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Katie Holmes"}).id
# new_role["character_name"] = "Rachel Dawes"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "Batman Begins"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Gary Oldman"}).id
# new_role["character_name"] = "Commissioner Gordon"
# new_role.save

# # The Dark Knight
# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Christian Bale"}).id
# new_role["character_name"] = "Bruce Wayne"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Heath Ledger"}).id
# new_role["character_name"] = "Joker"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Aaron Eckhart"}).id
# new_role["character_name"] = "Harvey Dent"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Michael Caine"}).id
# new_role["character_name"] = "Alfred"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Maggie Gyllenhaal"}).id
# new_role["character_name"] = "Rachel Dawes"
# new_role.save

# # The Dark Knight Rises
# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Christian Bale"}).id
# new_role["character_name"] = "Bruce Wayne"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Gary Oldman"}).id
# new_role["character_name"] = "Commissioner Gordon"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Tom Hardy"}).id
# new_role["character_name"] = "Bane"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Joseph Gordon-Levitt"}).id
# new_role["character_name"] = "John Blake"
# new_role.save

# new_role = Role.new
# new_role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"}).id
# new_role["actor_id"] = Actor.find_by({"name" => "Anne Hathaway"}).id
# new_role["character_name"] = "Selina Kyle"
# new_role.save

# # Check
# # puts Movie.count
#     # puts Actor.count
#     # puts Role.count
#     # puts Studio.count