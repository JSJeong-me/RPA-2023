*** Variables ***
@{mammals}      cat    dog    cow


*** Tasks ***
Loop Test
    Log To Console    Four mammals:
    FOR    ${var}    IN    @{mammals}
        Log To Console    ${var}
    END
    Log    ${var}    console=${TRUE}
