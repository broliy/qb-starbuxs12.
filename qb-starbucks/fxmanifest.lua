fx_version 'cerulean'

game 'gta5'

author 'SC'

description 'Nexus Team Devloper'

version '0.1'

client_scripts{
    'client.lua',
    'targets.lua',
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua'
}

shared_scripts{
    'config.lua',
}

server_scripts{
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }