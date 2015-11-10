drawing
open
	"Create the morphic layout and open it"
	self buildBrowser .
	browser openOn: (RoleOrganizer uniqueInstance players).