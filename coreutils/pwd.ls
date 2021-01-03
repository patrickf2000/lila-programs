
# A clone of the UNIX pwd program
# Currently, getcwd is not part of the standard library

use std.text_io;

# This is x86-64 specific
const int linux_getcwd = 79;

func main -> int
    buf_size : int = 100;
    buf : byte[buf_size];
begin
    syscall(linux_getcwd, buf, buf_size);
    println(buf);
    
    return 0;
end

