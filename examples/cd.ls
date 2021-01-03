
# This doesn't really do anything; its just an example of the chdir syscall
# If everything works correctly, it should output your argument

use std.os;

# This is x86-64 specific
const int linux_getcwd = 79;

func main(args:str[]) -> int
    argc : int = sizeof(args);
    path : str = "";
    
    buf_size : int = 100;
    buf : byte[buf_size];
begin
    if argc == 1
        println("Please specify a path.");
        return 1;
    end
    
    path = args[1];
    chdir(path);
    
    syscall(linux_getcwd, buf, buf_size);
    println(buf);
    
    return 0;
end

