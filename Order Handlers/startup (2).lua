rednet.open("front")
print(“Onigiri”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “onigiri” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end