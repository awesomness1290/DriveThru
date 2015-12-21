rednet.open("front")
print(“Peanut Butter Cookie”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “peanut butter cookie” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end