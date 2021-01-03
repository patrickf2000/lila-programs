
# An example of calling fork-exec on Linux

use std.text_io;
use std.os;

const int linux_wait = 61;

func main -> int
    pid : int64 = 0;
    exe_args : str[1];
    status : int = -1;
begin
    pid = fork();
    
    if pid == -1
        println("Error calling fork.");
        return pid;
    elif pid == 0
        return 0;
    end
    
    exe_args[0] = 0;
    exec_process("/bin/ls", exe_args);
    
    println("Error");
    
    return 0;
end
