rednet.open("front")
print(“Ice Cream”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “ice cream” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end