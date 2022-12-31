fx_version 'cerulean'
game 'gta5'
lua54 'yes' --requirements

description "k_elevator Supported ESX/QBCore"

author 'Keyz. ℣#0666'

version '1.0.0'

client_scripts {
	'client/*.lua',
}

server_scripts {
	'server/*.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

dependencies {
	'ox_lib'
}
