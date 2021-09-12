function test_sqllite()
    startupMessage("1.0", "Bryce Fitzgerald");
    printf(num2str(accept_input_data()))


end



function startupMessage(version_, author)
    printf("TEST_SQLLITE \n");
    printf(strcat("VERSION:", version_, '\n'));
    printf(strcat("AUTHOR:" , author, '\n'));
end

function output = accept_input_data()
    x = input("Enter data");
    output = x * x;
end

