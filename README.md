# EventFiend
 A tool that simplifies filtering through the Windows event logs

 This is written in Powershell, although it has a full graphical user interface.
 Base functionality is there, but it still needs a lot of work, and I'm going
 to be redesigning it.  It's still pretty useful though even in it's current state
 and it's  under active development

 There are two files.  One contains most of the code that does work, and the design form that has most of 
 the GUI and form parts.  These will likely be combined at some point, but not until the redesign and I 
 see how much I've been able to shrink the code.  Despite being in early/mid development, it's safe
 to run and doesn't make changes or make any writes to the system beyond writing a save file when requested.

 Also, the EventViewerGUI files are the current (yet already I'm considering them old) version before I 
 rewrite it. The future files that I should have in here within the week will be named EventFiend and they 
 will be the newer rewritten code.  And if you are interested in contributing, drop me a line

 What it does:
 Filters through the event viewer and takes a lot of the work out of finding what's important.  It:
 1) (not started yet, but basically ready when I finish some of the other more important primary steps) 
 	Check for certain types of logs like crashes, reboots, last users to log in to give a quick
	picture of significant events that may have contributed to a servers problems
 2) (working)Lets you choose a data range to filter, level of alerts you want to sort through, and which
	event logs and gathers them together
3) (working)It then takes those logs and and filters them down to a set of unique logs based on Event Id
	or message, and gets a count of how often those events occur.  You can toggle between unique by ID,
	Message, or the full list
4) (work in progress, but partially working and will be a major focus of the redesign) has a menubar with 
	specific categories (like Network, Firewall, SQL Server, Active Directory, etc), where it searches for 
	specific event ids that indicate problems for that particular application.
5) (working) Allows you to save the resulting datasets to .txt or .csv files

Basic To Do List: (will be dumped into the proper places in Github when I get some time)
1) Turn the entire existing event menu section into generated code that will be created by a .JSON file
	This will allow the script to be improved on and makes it more customizable
2) write the code to connect to a remote host.  The GUI is there, that's just been low on the list.  I
	need to get everything working locally first.
3) Write the Events of Interest section that I currently have space for, but don't have populating with
	Anything.
4) Write the save/load settings part.  That will be tied into the .JSON menu rebuild and will allow any 
	changes you make in the menu to be saved
