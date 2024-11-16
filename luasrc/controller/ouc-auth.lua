
module("luci.controller.ouc-auth", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/ouc-auth") then
		return
	end

	entry({"admin", "services", "ouc-auth"},firstchild(), _("ouc校园网认证助手"), 50).dependent = false
	
	entry({"admin", "services", "ouc-auth", "general"},cbi("ouc-auth"), _("设置"), 1)
	
end
