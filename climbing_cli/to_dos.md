To Do's:

1. Pull out the common methods into a/the parent module, or extend/include them from another module (ex. concerns-findable). Think about best place to add this. 
Current module is defined in Version. So could do it there? But might be better to do a Concerns::Findable or something like that. Look at examples and figures out what's best. 
Def these two (check for others, as well):

       def self.clear
         @@all.clear
       end 
       
       def self.all
         @@all.uniq / @@further_info.uniq
         [Might need to change @@further_info for this.]
       end 

2. Add config-env and move code from climbing_cli.rb into that, require that in the climbing_cli.rb file instead. (See Restaurants for example.) See other examples to figure out the best way to do it.

3. BONUS - Scrape in weather data and call on that/interpolate it as part of welcome line. (If this gets too complicated or you run out of time, just adjust the opening wording so it's not needed.)

4. BONUS - Add the font colorize thing for your puts out messages. (See this on the Student Scraper one.)

5. BONUS - Add a tick-list method where a user can add a climb to their tick-list and then ask for the full list when they're done.


Ask Corinna/address as needed:

1. Conf./env best practice or is main file as env. ok?
2. Where should common methods be held? (Main module, concerns::findable, etc.)
3. Rspec needed?

4. Gems - update if needed based on call with Corinna. (Or check with her during am office hours so you can update before your call.)
5. Error message possible for further_info method in Cli?



