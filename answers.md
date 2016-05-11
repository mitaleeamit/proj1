# Q0: Why is this error being thrown?

Ans:
Steps:
bundle install --without production
rvm install ruby-2.2.0
rvm use 2.2.0
bin/rake db:migrate RAILS_ENV=development
rake db:migrate
bundle install


Reason: Because of no Pokemon model. 

Code:
Change code in controllers/home_controller.rb file
trainerless_pokemon = Pokemon.where(trainer_id:nil)
instead of 
trainerless_pokemon = Pokemon.where(trainer:nil)

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Ans: 
Steps:
rails generate model Pokemon name:string level:integer trainer_id:integer
rails generate controller Pokemon belongs_to :trainer in pokemon has_many :pokemons
rake db:migrate
rake db:seed

They appear randomly.
Common factor between all of them are trainerless.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Ans:It will generate an empty form with a submit button, which will post a PATCH request back to capture path with given pokemon ID capture_path(id: @pokemon) and will generate the URL to capture action with ID of given pokemon.

# Question 3: What would you name your own Pokemon?

Ans: Audino

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

Ans:redirect_to controller: "home", action: "index".
The best way to redirect is hash, because it indicates exactly controller and action to redirect_to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Ans: It shows readble sentence for displaying on the view by transforming the array of error messages.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app