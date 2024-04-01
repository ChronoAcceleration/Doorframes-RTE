--!server

print("hello server, from RTE")

local ThisGuy = workspace.ThisGuy
print("Found that guy!", ThisGuy.Name)
print("Goodbye, guy!")
ThisGuy:Destroy()
