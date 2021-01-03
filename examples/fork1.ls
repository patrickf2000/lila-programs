
# An example of calling fork-exec on Linux

const int linux_fork = 57;
const int linux_exec = 59;

use std.text_io;
use std.os;

func main -> int
    pid : int64 = 0;
    exe_args : str[3];
begin
    pid = fork();
    
    if pid == -1
        println("Error calling fork.");
        return pid;
    elif pid == 0
        exe_args[0] = "/bin/ls";
        exe_args[1] = "-l";
        exe_args[2] = 0;
        syscall(linux_exec, "/bin/ls", exe_args, 0);
        
        println("Error");
        
        return 0;
    end
    
    return 0;
end
