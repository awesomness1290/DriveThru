rednet.open("front")
print(“Vanilla”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “vanilla” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end