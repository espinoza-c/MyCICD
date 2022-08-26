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
            bat "dotnet sonarscanner begin /k:'Calculator' /d:sonar.host.url='http://localhost:9001' /d:sonar.cs.vscoveragexml.reportsPaths="./Unit Testing with mock/coverage.xml" /d:sonar.coverage.exclusions=./Unit Testing with mock/**/src/**/*.csproj,!./Unit Testing with mock/xUnitTests/xUnitTests.csproj' /d:sonar.login="730d0045ddda3c8cdbbeb6304a127b9bf4b9d4cb""
            bat "dotnet coverage collect 'dotnet test ./Unit Testing with mock/xUnitTest' -f xml  -o './Unit Testing with mock/coverage.xml'"
            bat "dotnet build ./Unit Testing with mock/src"
            bat "dotnet sonarscanner end /d:sonar.login="730d0045ddda3c8cdbbeb6304a127b9bf4b9d4cb""
          }
        }
      }
    }
  }
}
