rednet.open("front")
print(“Bread”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “bread” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end