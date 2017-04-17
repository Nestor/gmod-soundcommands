print(" ")
print("+++++++++++++++++++++++++++++++++++")
print("+    Loading SoundCommands        +")
print("+    by @NicolasStr_              +")
print("+    +        +++++++        +    +")
print("+                                 +")
if not soundcmd then soundcmd = {} end
for k, v in pairs(file.Find("soundcmd/sv_*.lua", "LUA")) do
	include("soundcmd/".. v)
	print("Loading: soundcmd/".. v)
end
for k, v in pairs(file.Find("soundcmd/sh_*.lua", "LUA")) do
	AddCSLuaFile("soundcmd/".. v)
	include("soundcmd/".. v)
	print("Loading: soundcmd/".. v)
end
for k, v in pairs(file.Find("soundcmd/cl_*.lua", "LUA")) do
	AddCSLuaFile("soundcmd/".. v)
	print("Added CSLua: soundcmd/".. v)
end
print("+                                 +")
print("+++++++++++++++++++++++++++++++++++")
print(" ")