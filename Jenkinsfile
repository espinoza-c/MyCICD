def unitTestPath = './Unit Testing with mock'
def mobileTest = './Mobile Testing'
def endToEnd = './SpecFlowProject_Selenium'
def token = "730d0045ddda3c8cdbbeb6304a127b9bf4b9d4cb"

pipeline{
  agent any
  stages{
    stage('Run Test') {
      parallel {
        stage('Unit test'){
          steps{
            bat "dotnet sonarscanner begin /k:'Calculator' /d:sonar.host.url='http://localhost:9001' /d:sonar.cs.vscoveragexml.reportsPaths=${unitTestPath}/coverage.xml /d:sonar.coverage.exclusions='${unitTestPath}/**/src/**/*.csproj,!${unitTestPath}/xUnitTests/xUnitTests.csproj' /d:sonar.login=${token}"
            bat "dotnet coverage collect 'dotnet test ${unitTestPath}/xUnitTest' -f xml  -o '${unitTestPath}/coverage.xml'"
            bat "dotnet build ${unitTestPath}/src"
            bat "dotnet sonarscanner end /d:sonar.login=${token}"

          }

        }
      }
    }
  }
}
