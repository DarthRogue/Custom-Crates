# Custom-Crates
Custom Loot Crate Spawning
//Random Loot Crates by Darth_Rogue & Chisel (tdwhite)  
//HUGE thanks to deadeye & Robio for helping work out the last bugs!
//To be ran server side via addon PBO

I've come up with a way to have a random and dynamic loot crate spawn system that is fully customizable.  You can change the number of crates, their position on the map, what type of crate is used, what loot goes in each crate and how much of it, and add or remove loot items as needed.  You can also specify a static amount of any given item, such as explosives, to prevent large random amounts of them from spawning in.
 
To use this addon -  simply download the files and place the PBO in your @epochhive folder.  You're done!  No BE filters are needed for this to work.  If you want to make edits, make your changes in fn_random_crateLoot.sqf from the files folder and then copy it into the included PBO, overwriting the existing file.
 
The coordinates that are currently listed in the script for the crates are for a custom area that I designed for Bornholm, Object X-99.  So those of you using my map pack addon for Bornholm will be all set already, especially if you have AI soldiers guarding the area.  If you are running other maps then you will likely need to edit the coords for the crates and possibly the number of crates you want to spawn.  But using this as a base template you should be able to create a solution that will fit your needs.  
 
Included here is a screenshot of the main file and a short explanation of what each section is for and a general idea of how it works.  Use these instructions as a guide and you should be all set.  Of course, questions in this thread are welcome!  I will be happy to help with any hiccups.

Screenshot - http://i.imgur.com/FNbpJq4.png
