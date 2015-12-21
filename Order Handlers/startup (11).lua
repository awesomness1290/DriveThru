rednet.open("front")
print(“Fruit Pie”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “fruit pie” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end