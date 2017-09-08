local widget = require("widget")
local function onRowRender(event)
  local row = event.row

  local rowTitle = display.newText(row, "Row"..row.index, 10, 10, nil, 14)
  rowTitle:setFillColor(0)
end

local tableView = widget.newTableView({
  left=10,
  top=10,
  width=470,
  height=670,
  onRowRender=onRowRender
})

for i=1, 40 do
  tableView:insertRow({})
end
