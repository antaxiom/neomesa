local g = vim.g
local fn = vim.fn

g.dashboard_disable_at_vimenter = 1 -- dashboard is disabled by default
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣶⣿⣿⣿⣿⣿⣿⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⠿⠟⠋⠉⠉⠀⠀⠀⠀⠉⠉⠙⠛⠿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⣠⣾⣿⡿⠋⠁⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣄⣀⠀⠀⠀⠙⠻⣿⣷⣄⠀⠀⠀⠀",
"⠀⠀⢀⣼⣿⡿⠁⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠈⠻⣿⣦⡀⠀⠀",
"⠀⢠⣾⣿⠏⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠙⣿⣷⡀⠀",
"⢀⣾⣿⠃⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠘⣿⣷⡀",
"⣸⣿⡏⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⢸⣿⡇",
"⣿⣿⠁⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⣿⣿",
"⣿⣿⠀⠀⠀⣿⣿⣿⣿⣿⣿⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⣿⣿⣿⣿⡇⠀⠀⣿⣿",
"⣿⣿⡀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⠇⠀⠀⣿⣿",
"⢹⣿⣇⠀⠀⢹⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡟⠀⠀⢰⣿⡇",
"⠈⢿⣿⡄⠀⠀⢻⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⢀⣿⡿⠀",
"⠀⠈⢿⣿⣄⠀⠀⠙⠿⠿⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⡿⠁⠀",
"⠀⠀⠈⠻⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⠀",
"⠀⠀⠀⠀⠙⢿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⡿⠋⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣶⣤⣀⣀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣾⡿⠟⠁⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

g.dashboard_custom_section = {
   a = { description = { "New File                             洛" }, command = "DashboardNewFile" },
   b = { description = { "Recents                              " }, command = "Telescope oldfiles" },
   c = { description = { "Find File                            " }, command = "Telescope find_files" },
   d = { description = { "Find Word                            " }, command = "Telescope live_grep" },
   e = { description = { "Bookmarks                            " }, command = "Telescope marks" },
}

g.dashboard_custom_footer = {
   "Black Mesa Mach Project",
}
