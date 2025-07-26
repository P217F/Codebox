# os: operating system
import os

# Return the filename corresponding to the controlling terminal of the process.
print(os.ctermid())

# Terminates a running process immediately(force kernel stop and raise IOT error)
#while True:
#    os.abort()

# Exits the process with the specified status
#while True:
#    os._exit(0)
#    print("Exit")

# Uses the real uid/gid to check access to a path
print(os.access("./README.md", os.F_OK))    # os.F_OK: file exist
print(os.access("./README.md", os.R_OK))    # os.R_OK: file can read
print(os.access("./README.md", os.W_OK))    # os.W_OK: file can write
print(os.access("./README.md", os.X_OK))    # os.X_OK: file can execute

# Returns the current working directory
print(os.getcwd())

# Make a new directory
#os.mkdir("./New_Folder")

# Change current directory
#print("Before change dir: ", os.getcwd())
#os.chdir("New_Folder")
#print("After change dir: ", os.getcwd())

# Return the number of CPUs present
print(os.cpu_count())

# Open file with low-level, close descriptor file
fd = os.open("./README.md", os.O_CREAT | os.O_WRONLY)
os.close(fd)


# Duplicates a file descriptor
#fd1 = os.open("./README.md", os.O_RDONLY)
#fd2 = os.dup(fd1)
#os.close(fd1)
#os.close(fd2)

# Duplicates a file descriptor to a given value

#fd3 = os.open("./README.md", os.O_RDONLY)
#fd4 = 1
#os.dup2(fd3, fd4)
#print("Duplicated file descriptor: ", fd4)
#os.close(fd3)
#os.close(fd4)

#
