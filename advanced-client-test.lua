--!client

print("Begin Testing")

wait(5)

print("Waited 5")
print("Attempting to try task Library")

local Success, Return = pcall(function()
    task.wait(1)  
end)

if not Success then
  print(Return)
end

print("Task Library Check Done, Attempting Type Checks")
wait(5)

local Hi:string = "Hello"

print(Hi, "Test Concluded")
