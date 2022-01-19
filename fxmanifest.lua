fx_version 'cerulean'
game { 'gta5' }

author 'dbgdexit'
description 'FiveM Teamchat'
version '1.0.0'

client_script {

  'client/main.lua'

}

server_scripts {

  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'

}
