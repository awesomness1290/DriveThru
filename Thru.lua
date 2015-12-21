slogan = "Thanks for choosing Leafy Eats!" -- Change Resturant Slogan
rednet.open("back")
function clear()
  term.clear()
  term.setCursorPos(1,1)
end

function subMenu(sub)
  clear()
  term.setCursorPos(1,1)
  print("Menu:")
  term.setCursorPos(1,3)
  for k,v in pairs(sub) do
   	print(k..": "..v)
  end
  term.setCursorPos(1,11)
  term.write("Choose: ")
  oldChoice = read()
  choice = string.lower(oldChoice)
  rednet.broadcast(choice)
  sleep(2)
  clear()
  print(slogan)
end
Rice = {
  "Rice Bowl",
  "Onigiri",
  "Sushi"
}
Tomato = {
  "Pasta",
  "Pizza",
  "Pizza Bagel"
}
Strawberry = {
  "Jam",
  "Strawberry Cake",
  "Ice Cream",
  "Milkshake",
  "Fruit Pie"
}
Coffee = {
  "Normal",
  "Milky",
  "Pumpkin",   
  "Chocolate",
  "Black Forest",
  "Vanilla",
  "Shroom"
}
Peanut = {
  "PB&J",
  "Peanut Butter Cookie"
}
Wheat = {
  "Cake",
  "Bread",
  "Chocolate Cake"
}

clear()
print("Menu Groups:")
term.setCursorPos(1,3)
term.setTextColor(colors.green)
print("Rice")
print("Tomato")
print("Strawberry")
print("Coffee")
print("Peanut")
print("Wheat")
term.setTextColor(colors.white)
term.setCursorPos(1,9)
term.write("Choose One: ")
choice = read()
if string.lower(choice) == "rice" then
  subMenu(Rice)
elseif string.lower(choice) == "tomato" then
  subMenu(Tomato)
elseif string.lower(choice) == "strawberry" then
  subMenu(Strawberry)
elseif string.lower(choice) == "coffee" then
  subMenu(Coffee)
elseif string.lower(choice) == "peanut" then
  subMenu(Peanut)
elseif string.lower(choice) == "wheat" then
  subMenu(Wheat)
else
  clear()
  print("Unknown Food Group.")
  sleep(2)
end