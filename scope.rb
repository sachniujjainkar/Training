puts $0 #showing the current working file path
puts $: # path Ruby searches when you load an external file.
puts $$ #contains the process id of Ruby process.

# The top level (outside of all definition blocks) has its own local scope.
# Every class or module definition block (class, module) has its own local scope, 
# even nested class/module definition blocks.
# Every method definition (def) has its own local scope.