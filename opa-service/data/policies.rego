package opablog
default allow=false
allow=true{
    input.group == data.GroupPermissions[input.resource][_]
}
