-----------------------------------------------------------------------------------------
-- created on : March 26
-- created by : Adam
-- main.lua
--says if you can get student pricing or not
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0, 0.5, 0.5 )

local myText = display.newText( "type the day of the week", 100, 200, native.systemFont, 70 )
myText.x = 1000
myText.y = 600

local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY , 450, 120 )
dayTextField.id = "answer textField"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150 , 450, 120 )
ageTextField.id = "answer textField"


local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY + 300
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    local day
    local age
    local agetonumber

    age = ageTextField.text
    agetonumber = tonumber(age)
	day = dayTextField.text

	
	if dayTextField == ("tuesday" or dayTextField == "thursday") or (agetonumber > 12 and agetonumber < 21 ) then
		display.newText("you get student discount", 1024, 1200, native.systemFont, 100)
		print(dayTextField.text)
	else 
		display.newText("you get regular price", 1024, 1200, native.systemFont, 100)
	
	end
end

enterButton:addEventListener( "touch", enterButtonTouch )