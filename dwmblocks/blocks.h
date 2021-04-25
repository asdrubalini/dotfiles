// Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/* Icon */  /* Command */ 													/* Update Interval */ /* Update Signal */
	{ "", 			"date '+%H:%M %d-%m-%y'", 										  			10, 	0 },
	{ "ip: ", 		"ip -o -4 addr list eno1 | awk '{print $4}' | cut -d/ -f1", 			120, 	0 },
	{ "vpn: ", 		"pgrep -x 'openvpn' > /dev/null && echo yes || echo no",					10, 	0 },
	{ "docker: ", 		"systemctl is-active docker > /dev/null && echo running || echo stopped",					10, 	0 },
	{ "battery: ", 	"battery | tr -d '\n' && echo %",											60, 	0 },
};

// sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
