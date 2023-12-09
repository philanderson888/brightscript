function init()
    m.myLabel = m.top.findNode("myLabel")
    m.myLabel.font.size=92
    m.myLabel.color="0x72D7EEFF"
    m.myLabel.focusable = true

    m.button01 = createObject("roSGNode", "Button")
    m.button01.translation = "[300,300]"
    m.button01.observeField("buttonSelected", "button01Selected")

    m.button02 = m.top.findNode("button02")
    m.button02.translation = "[600,200]"
    m.button02.observeField("buttonSelected", "button02Selected")

    m.buttonGroup01 = m.top.findNode("buttonGroup01")
    m.buttonGroup01.buttons = [ "OK", "Cancel" ]
    m.buttonGroup01.translation = "[400,600]"
    m.buttonGroup01.observeField("buttonSelected", "buttonGroup01Selected")
    m.buttonGroup01.observeField("buttonFocused", "buttonGroup01Focused")

    m.buttonGroup02 = m.top.findNode("buttonGroup02")
    m.buttonGroup02.buttons = [ "Yes", "No" ]
    m.buttonGroup02.translation = "[500,500]"
    m.buttonGroup02.observeField("buttonSelected", "buttonGroup02Selected")
    m.buttonGroup02.observeField("buttonFocused", "buttonGroup02Focused")
    
    m.focusableLabel = CreateObject("roSGNode","FocusableLabel")
    m.focusableLabel.text = "hello"
    m.focusableLabel.translation = "[100,100]"
    m.focusableLabel.focusable = true
    

    m.horizontalList = createObject("roSGNode", "HorizontalList")
    m.horizontalList.translation = "[200,200]"

    m.top.appendChild(m.focusableLabel)
    m.top.appendChild(m.horizontalList)
    m.top.appendChild(m.buttonGroup02)
    m.top.appendChild(m.buttonGroup01)
    m.top.appendChild(m.button01)
    m.top.appendChild(m.button02)

    m.button01.setFocus(true)
    m.buttonGroup01.setFocus(true)
    m.buttonGroup02.setFocus(true)

end function

sub onKeyEvent(key as String) 
    print "key event " + key
end sub

sub button01Selected()
    print "button 01 selected"
    printStuff()
    m.button02.setFocus(true)
end sub

sub button02Selected()
    print "button 01 selected"
    printStuff()
    m.buttonGroup02.setFocus(true)
end sub

sub buttonGroup01Selected()
    print "button group 01 selected"
    m.button01.setFocus(true)
end sub

sub buttonGroup01Focused()
    print "button group 01 focused"
end sub

sub buttonGroup02Selected()
    print "button group 02 selected"
    'm.buttonGroup01.setFocus()
    m.button01.setFocus(true)
    m.buttonGroup01.setFocus(true)
end sub

sub buttonGroup02Focused()
    print "button group 02 focused"
end sub

sub printStuff()
    print "m"
    print m
    print "m.top"
    print m.top
    print "m.button01"
    print m.button01
    print "m.buttonGroup01"
    print m.buttonGroup01
    print "m.buttonGroup02"
    print m.buttonGroup02
end sub
