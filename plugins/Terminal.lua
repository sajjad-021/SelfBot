local function run(msg, matches)
 if is_sudo(msg) then
local text = io.popen(matches[1]):read('*all')
  return text.."🔄Electrovirus selfbot"
end
 if not is_sudo(msg) then
local text = "⏹Needs sudo acces\n┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅\n📶Local sudo∶Electrovirus"
  return text
end
  end
return {
  usage = {
    '$ cmd : run commands in linux'
  },
  patterns = {
    '^$(.*)$'
  },
  run = run,
  moderated = true
}
