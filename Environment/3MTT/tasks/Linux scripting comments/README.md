
```bash
#!/bin/bash

# This is a single-line comment
# The next line of code will print a welcome message to the user.
echo "Hello, you are learning Bash Scripting on DAREY.IO!" # This is a comment following the command

# The following section demonstrates using multiple single-line comments
# to explain a larger block of code. This is helpful when you want to provide
# a brief explanation for each line or group of lines in your script.

# Here, we're printing a message to indicate the start of the script execution
echo "Starting script execution..."

# This is an example of a simple loop that iterates through numbers
# and prints each number from 1 to 5
for i in {1..5}
do
    # Displaying the current number in the loop
    echo "Current number: $i"
done

# The following block is used to show an example of a multi-line comment
# Each line begins with a hash (#) symbol, allowing you to add comments
# across multiple lines. This helps you explain more complex logic.
#
# In this example, we're simulating the checking of system disk space.
# This would typically be useful for monitoring purposes in a server script.

# Uncomment the following line if you want to check disk usage in your system
# df -h

# Final message to indicate the script has completed execution
echo "Script execution completed!"
```

### Breakdown:
1. **Single-Line Comments**:
   - `#` is used to create single-line comments.
   - These comments can be placed above or beside the command to explain the code's functionality.
   - Example: `echo "Hello, you are learning Bash Scripting on DAREY.IO!" # This is a comment following the command`.

2. **Multiple Single-Line Comments**:
   - Each line is prefixed with `#` to add a comment on multiple lines, explaining a larger section of the script.
   - Example:
     ```bash
     # Here, we're printing a message to indicate the start of the script execution
     # The next line will output a simple message to the terminal.
     ```

3. **Best Practices**:
   - **Clarity**: Each comment clearly explains the intention behind the code or logic.
   - **Maintainability**: Comments are updated to remain relevant if the script is modified.
   - **Usefulness**: Complex logic or less obvious parts of the script are commented on for better understanding.
   - **Avoid Overcommenting**: Only the necessary parts of the code are commented on.

