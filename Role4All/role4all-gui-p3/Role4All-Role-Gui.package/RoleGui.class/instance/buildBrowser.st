initialize-release
buildBrowser
	"Creates a browser for the roles."
	browser := GLMTabulator new.
	browser 
		title: 'Role browser';
		row: #navigator;
		row: #diagAttachment;
		row: #commandEditor;
		act: [:b | b update ] icon: (GLMUIThemeExtraIcons glamorousRefresh ) on: $u entitled: 'Update Context browser'.
	
	browser updateOn: GLMItemAdded  from: #yourself  .
	browser updateOn: GLMItemRemoved  from: #RoleOrganizer .
	browser transmit to: #navigator; andShow: [ :a | self navigatorIn: a].
	browser transmit to: #diagAttachment; andShow: [ :a | self  diagIn: a].
	browser transmit to: #commandEditor; andShow: [ :a | self commandIn: a].