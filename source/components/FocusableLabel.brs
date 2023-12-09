sub init()
    m.upLabel = invalid
    m.downLabel = invalid
    m.top.id = "focusableLabel"
    m.top.setFocus(true)
end sub

sub setNeighbours(upLabel as Object, downLabel as Object)
    m.upLabel = upLabel
    m.downLabel = downLabel
end sub

sub onKeyEvent(key as String)
    print "key event horizontal list"
    if key = "up" and m.upLabel <> invalid
        m.upLabel.setFocus(true)
    else if key = "down" and m.downLabel <> invalid
        m.downLabel.setFocus(true)
    end if
end sub