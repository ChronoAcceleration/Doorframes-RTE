--!client

print('hi')
task.delay(3, function()
    print('bye')
end)
