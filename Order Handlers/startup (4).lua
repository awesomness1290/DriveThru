rednet.open("front")
print(“Pasta”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “pasta” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end