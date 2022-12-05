require("alpha").setup({
	layout = {
		{ type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
		{
			type = "text",
			val = {
				"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMMMMMW#WMMMMMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMMMMWW<hWMMWMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMM#cdMWO;'l#MMhwWMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMWM-pMMMW( xMMMMt/MMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMWX'LMMMMW(.rMMMMMvikMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMk>`0MWMMMW(.rMMMMMMf'n#MMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMM#v''cMMMMMMW) jMMMMMWM_':#&MMMMMMMMMMMMM",
				"MMMMMMMMMMMMMW0^.,LMWMMMMW) jMMMMMW*f..!kMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMWWt^.`dWMMMW1 jMMMMMZ'.>qMWMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMn''-WWMW) jMMMo>'iqWMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMWMW&j^^x#W1.jM*t.iZWMWMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMWM&/'.L1.fd.,qWWMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMWan.. ..Q*WMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMMk}.. ..~kWMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMW-''[1'1v. >oMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMM{'.?aW( |#o}.'|#WMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMWMM*(..;wMMW| |MMWbl'.nMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMWM*1.'.cMMMMW| |#MMMMZ'.^Y#MWMMMMMMMMMMMM",
				"MMMMMMMMMMMMMWx..`jMWMMMMW| (MMMMMM#1. 'wMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMM#U` 'QMMMMMW| (MMMMW#{ .hhWMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMWW#Y'.,0WMMW| (MMW*n'.'0#MMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMM1'.;pWW|./#Mq;..n#MMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMW*]''lM( (W}'.fMWMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMo[//^., .aaMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMWMM~. .lpMMMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMMMMMa|w#WMMMMMMMMMMMMMMMMMMMMMMM",
				"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
			},
			opts = { position = "center", hl = "DashboardHeader" },
		},
	},
	opts = { noautocmd = true },
});


