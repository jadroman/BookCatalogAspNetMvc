Short overview:
===============




What is this?
-------------

Very simple book catalog web application I created for the purpose of exercise. 

![screenshot](doc/booksScreen.png "app screenshot")




What is utilized?
-------------------

* .NET 5.0
* MS SQL 2019
* Entity framework 5
* ASP.NET Identity
* DataTables (jQuery plug-in)
* Server-side paging and searching
* Twitter-bootstrap 4
* Serilog
*	Xunit



How to run?
-----------

*	Clone or download code
*	Open solution (Visual studio 2019 or later)
*	Project "BookCatalog.Web" => set as startup project
*	File "appsettings.json" => change "server name" and "database name" if needed
*	Choose "BookCatalog.Web" (Kestrel) launch setting from upper menu
*	Run the app ("play" icon from upper menu)
*	When app starts, database is created (migrated) with few tables
*	Open the database and execute the Serilog script from the folder "doc => seriLogSql.sql"
*	Go back to the running app in browser
*	Register a user (no email confirmation needed)
*	Create a few categories
*	Create a few books



## Work in progress...

- Create partial view to share same html between "Create" and "Edit" views.
  - The point is we reduce unneeded code repetition
- Create partial view to share same html between "Details" and "Delete" views.
  - The point is we reduce unneeded code repetition
- Add "Result Pattern", a layer between service and controller which contains the logic of determining if result is eg. "Ok", "Invalid", "Unauthorized" etc. 
  - The point is to remove that logic from controller.
  - https://alexdunn.org/2019/02/25/clean-up-your-client-to-business-logic-relationship-with-a-result-pattern-c/
- There is only one unit test for now. We could add more unit or integration tests
- Account management module is not finished completely. Email confirmation is disabled because I didn't setup smtp yet.
