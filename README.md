# Chat with OpenAI - Fortran CLI

This Fortran program allows you to chat with an OpenAI language model through a command-line interface.

## Prerequisites

- GCC Fortran compiler (gfortran)
- Bash shell (or compatible shell)
- OpenAI API key

Make sure you have the OpenAI API key set as an environment variable `OPENAI_API_KEY`.

## Compilation

1. Save the provided Fortran code in a file, e.g., `chat.f90`.

2. Open a terminal or command prompt.

3. Navigate to the directory where you saved the `chat.f90` file.

4. Compile the program using the gfortran compiler:

```
gfortran -o chat chat.f90
```

This will create an executable file named `chat`.

## Usage

1. Make sure the `chat_curl.sh` script is in the same directory as the `chat` executable.

2. Run the compiled program:

```
./chat
```

The program will prompt you to start chatting with the OpenAI language model. Type your messages and press Enter. To exit the program, type "exit" and press Enter.

## How it Works

The Fortran program `chat` does the following:

1. Retrieves the OpenAI API key from the `OPENAI_API_KEY` environment variable.
2. Prompts the user to start chatting and reads the user's input.
3. Prepares a shell command to call the `chat_curl.sh` script, passing the API key and user input as arguments.
4. Executes the shell command and waits for the script to finish.
5. Displays the result of the API request to the user.
