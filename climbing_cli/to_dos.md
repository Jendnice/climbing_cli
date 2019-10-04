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
       
2. Map out/finish mapping out method to add a single climb based on URL. (You should be able to use the URL method in the scraper, but write a method for adding a single climb into the climb file and have it call on the one in the scraper.)

3. Update the wording options in the Cli for the different climbing types. ("volume || Volume") Shouldn't need the various options with the downcase on input, but check it first!

4. BONUS - Scrape in weather data and call on that/interpolate it as part of welcome line where you give the weather. (If this gets too complicated or you run out of time, just adjust the opening wording so it's not needed.)

5. BONUS - Add the font colorize thing for your puts out messages. (See this on the Student Scraper one.)

6. BONUS - Add a tick-list method where a user can add a climb to their tick-list and then ask for the full list when they're done.


Ask Corinna/address as needed:

1. Gems - update if needed based on call with Corinna. (Or check with her during am office hours so you can update before your call.)
2. Extra files with my notes - should I delete them when I'm done or are they ok?
3. Error message possible for further_info method in Cli?


