program chat_with_openai
    implicit none
    character(len=512) :: user_input
    character(len=512) :: api_key
    character(len=1024) :: command
    integer :: status

    ! Retrieve API key from environment
    call get_environment_variable("OPENAI_API_KEY", api_key)
    if (len_trim(api_key) == 0) then
        print *, "Error: API key not set. Please set OPENAI_API_KEY environment variable."
        stop
    end if

    print *, "Chat with OpenAI LLM (type 'exit' to quit)"
    do
        ! Get user input, reading entire line
        print *, "You: "
        read(*,'(A)') user_input
        if (trim(user_input) == 'exit') exit

        ! Debug: Print user input to verify it’s correct
        print *, "User input:", trim(user_input)

        ! Prepare the shell command to call the script with arguments
        command = './chat_curl.sh "' // trim(api_key) // '" "' // trim(user_input) // '"'

        ! Execute the shell script with the API key and user input
        call execute_command_line(command, wait=.true., exitstat=status)

        if (status /= 0) then
            print *, "Error: Failed to connect to OpenAI API."
        else
            print *, "Request sent successfully."
        end if
    end do
end program chat_with_openai

