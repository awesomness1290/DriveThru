rednet.open("front")
print(“Rice Bowl”)
 
while true do
  id,choice = rednet.receive()
  if id == 917 then
    if choice == “rice bowl” then
      rs.setOutput("back",true)
      sleep(1)
      rs.setOutput("back",false)
    end
  end
end