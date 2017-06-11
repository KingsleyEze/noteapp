#SpringMVC Note App Help File
@Author: Kingsley Eze

#About
	This is a simple web note application, built using java spring web mvc framework.
	Based on the principles of MVC, the views renders the user interface with
	supporting javascript/jquery framework for validation and Bootstrap CSS tools
	for intuit design.	The Business logics are properly separated using required components
	such as controllers, models and services. All dependencies are managed by Maven build tool,
	Log4J for logging, Hibernate for Object Relational Mapping (ORM) with MySQL Database(insightbase.sql... also attached).
	
#Structure
	
	#Views
		AppStart.jsp - List All Notes + Title with Link to note + Action (Edit & Delete) + Create Button
		Note.jsp - renders note
		NoteForm - For creating and updating existing notes
	
	#Assets
		JS - For application custom javascript scripts.
		CSS - For page styling.
		Vendors - For vendors such as Jquery and Bootstrap libraries.
		IMG - For images
	
	#Java
		Controllers - Controls the flow of the application execution.
		Models	- Business objects.
		Services - Manages Data Access Object(dao) integration layer.
		System - Spring App Configurations
		
	#Maven
		pom.xml - manages build/project dependencies