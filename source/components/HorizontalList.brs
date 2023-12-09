sub init()
    m.labels = ["Label1", "Label2", "Label3", "Label4", "Label5"]
    m.selectedLabelIndex = 0
    for i = 0 to m.labels.count() - 1
        label = m.top.CreateChild("FocusableLabel")
        label.text = m.labels[i]
        label.translation = [i * 150, 0]
        label.focusable = true
        if i = m.selectedLabelIndex then
            label.setFocus(true)
        end if
    end for
end sub

sub onKeyEvent(key as String)
    print "key event horizontal list"
    if key = "left"
        m.selectedLabelIndex = (m.selectedLabelIndex - 1 + m.labels.count()) mod m.labels.count()
        m.top.GetChild(m.selectedLabelIndex).setFocus(true)
    else if key = "right"
        m.selectedLabelIndex = (m.selectedLabelIndex + 1) mod m.labels.count()
        m.top.GetChild(m.selectedLabelIndex).setFocus(true)
    end if
end sub