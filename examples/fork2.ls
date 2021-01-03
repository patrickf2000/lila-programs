
# An example of calling fork-exec on Linux

use std.text_io;
use std.os;

func main -> int
    pid : int64 = 0;
    exe_args : str[1];
    status : int = 0;
begin
    pid = fork();
    
    if pid == -1
        println("Error calling fork.");
        return pid;
    elif pid == 0
        exe_args[0] = 0;
        exec("/usr/bin/sh", exe_args);
        
        println("Error");
    else
        waitpid(pid);
        println("Process done!");
        return 0;
    end
    
    
    return 0;
end
