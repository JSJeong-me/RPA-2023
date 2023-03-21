*** Settings ***
Library          RPA.Desktop.Windows
Suite Teardown   Close all applications

*** Tasks ***
Open Calculator using run dialog
    ${result}=              Open using run dialog    calc.exe   계산기
    ${result}=              Get Window Elements
    Send Keys               5*2=
    ${result}=              Get element             partial name:표시는
    Log Many                ${result}
    ${result}=              Get element rich text   id:CalculatorResults
    Should Be Equal As Strings  ${result}  표시는 10
    ${result}=              Get element rectangle   partial name:표시는
    ${result}=              Is Element Visible      CalculatorResults
    ${result}=              Is Element Enabled      partial name:표시는
