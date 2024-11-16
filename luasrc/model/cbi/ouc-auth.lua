m = Map("ouc-auth", "ouc校园网认证助手") 

s = m:section(TypedSection, "ouc-auth")
s.addremove = false
s.anonymous = true

enabled = s:option(Flag, "enabled", translate("Enable"))
enabled.default = 1
enabled.rmempty = false

name = s:option(Value, "username", translate("用户名"))
name.rmempty = false
name.default = ""
name.description = translate("填入校园网用户名")

name = s:option(Value, "password", translate("密码"))
name.rmempty = false 
name.default = ""
name.description = translate("填入校园网密码")


run = s:option(Button, "run_button", translate("上号"))
run.inputstyle = "apply"
function run.write(self, section)
	io.popen("/etc/init.d/ouc-auth start")
end

return m
