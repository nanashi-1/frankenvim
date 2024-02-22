local M = { "goolord/alpha-nvim" }

function M.config()
	local dashboard = require("alpha.themes.dashboard")

	dashboard.section.header.val = {
		[[             ::--:::..            ]],
		[[     .--=*#%%%%%%%#%%#%#*---.     ]],
		[[  .-+%#@%@#%#%#%#**%#%%@@@@%#*=.  ]],
		[[.*#%%%##*+====-+=-=*#%++###%%@@#= ]],
		[[*##%%*+==+=---=+##===+==+==*#%%%* ]],
		[[*#%@#*++#**++==+##+==++#+#***@##* ]],
		[[+#@@%#*++#+---==++-::--+*=*#%@@@# ]],
		[[.@@@%**+===+++++++=+++====+*#@@#: ]],
		[[ =#@%*#*++=---::::::--:-=+*#%@@#  ]],
		[[  %*@@*=+==+*#%#**#%#+=++++*@@%%. ]],
		[[  +%%*%@@@@@@@@@@@@@@@@@@@@%*@%+  ]],
		[[ .+@#%@@@###%#@@##@@#%###@@@%*@=  ]],
		[[*%#%%**@#%###%@@++@@%##%%%%###%%%+]],
		[[@%%%***++===*#%%::%%#*=--==+**#@%@]],
		[[#+*%*#*+===*#*+=--=+**++**#%*+%*+#]],
		[[.*##%*%###*+##@@%%@@##+**#%#*#%#*.]],
		[[  #%%*#%%*+++++*%%*++++-**#+%%%*  ]],
		[[   ==%++%-#==++---++==++**#+@=:   ]],
		[[     +**+-%+*###%%###***+=#+#     ]],
		[[   ::+#**=**##**####**+===%*#::   ]],
		[[  +++*%+#+-=***#*****+===*###++*. ]],
		[[  *##%@%**+=+==-:-==-=+++*#@%###. ]],
		[[   ::=%#@#*#+*+=+#+=*+**@@@##::.  ]],
		[[     :##*@@@%#***###%%%@@@*+%     ]],
		[[     =+#**#@@@@@@@@@@@@%##***-    ]],
		[[     #=**+=#%@@@@@@@@@##++**+*    ]],
		[[     -+**+==##%%#@@@##*===++-     ]],
		[[       .:---=*+*#*+*+=---:.       ]],
		[[            ...::-::..            ]],
		[[                                  ]],
		[[            FrankenVIM            ]],
	}

	dashboard.section.buttons.val = {
		dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
		dashboard.button("g", " " .. " Find git files", ":Telescope git_files <CR>"),
		dashboard.button("q", " " .. " Quit", ":qa<CR>"),
	}

	require("alpha").setup(dashboard.config)
end

return M