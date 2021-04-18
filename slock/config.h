/* user and group to drop privileges to */
static const char *user  = "giovanni";
static const char *group = "giovanni";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
static const int bell = 0;	/* Play bell sound on wrong password */
