JsOsaDAS1.001.00bplist00�Vscript_)var App = Application.currentApplication();
App.includeStandardAdditions = true;

// Get computer name
var computerName = App.systemInfo()["computerName"];
// Get current caffeinate state
var state = App.doShellScript("ps ax | grep -v grep | grep caffeinate 2>&1 || echo \"\"");
if (state === "") {
	App.doShellScript("/usr/bin/caffeinate -d > /dev/null 2>&1&");
	App.displayNotification(computerName + " is wide awake!");
} else {
	App.doShellScript("killall caffeinate 2> /dev/null");
	App.displayNotification(computerName + " feels sleepy again!");
}                              ? jscr  ��ޭ