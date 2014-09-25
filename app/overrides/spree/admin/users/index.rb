Deface::Override.new(virtual_path: "spree/admin/users/index",
  name: "new table",
  insert_before: "th.actions",
  text: '<th>Admin?</th>')

Deface::Override.new(virtual_path: "spree/admin/users/index",
  name: "new table2",
  insert_before: "td.actions",
  text: "<td><%= user.admin? %></td>")

