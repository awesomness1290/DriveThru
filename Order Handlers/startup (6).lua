rednet.open("front")
print(“Pizza Bagel”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “pizza bagel” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end