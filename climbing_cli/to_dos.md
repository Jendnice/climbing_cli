To Do's:

Overall project:
1. Film video walkthrough - anywhere from 2 - 10 minutes.
2. README file
3. Blog post
4. See Learn lesson and checklist for any others
5. Complete Learn checklist and submit when everything done

Code:
1. Watch gem video and update any of that if needed.
2. Save necessary info from and then delete all your additional files. (And code in climbing_cli.rb file that's commented out.)
3. See if you actually need the .all and .clear methods in the Scraper. If not, remove them. Shouldn't need to extract any of these out into main module. (They should likely only be used in Climb file.) See notes below if needed.
4. Watch common anti-patterns video and address any of that if needed.
5. Refactoring (see notes in notebook) - clean up code, delete add_by_url method in climb file?, etc.
6. Bonus: (See notes below if needed.)
     a. Scrape in weather data.
     b. Colorize or better format cli conversation.
    (c. Add tick-list method.)


Additional notes on above:

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

2. BONUS - Scrape in weather data and call on that/interpolate it as part of welcome line. (If this gets too complicated or you run out of time, just adjust the opening wording so it's not needed.)

3. BONUS - Add the font colorize thing for your puts out messages. (See this on the Student Scraper one.)

4. BONUS - Add a tick-list method where a user can add a climb to their tick-list and then ask for the full list when they're done.



