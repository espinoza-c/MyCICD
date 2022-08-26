def unitTestPath = './Unit_Testing_with_mock'
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
            bat "dotnet sonarscanner begin /k:Calculator /d:sonar.host.url=http://localhost:9001 /d:sonar.cs.vscoveragexml.reportsPaths='Unit_Testing_with_mock/coverage.xml' /d:sonar.coverage.exclusions='./Unit_Testing_with_mock/**/src/**/*.csproj,!./Unit_Testing_with_mock/xUnitTests/xUnitTests.csproj' /d:sonar.login=730d0045ddda3c8cdbbeb6304a127b9bf4b9d4cb"
            bat "dotnet coverage collect 'dotnet test Unit_Testing_with_mock/xUnitTests'"
            bat "dotnet build ./Unit_Testing_with_mock/src"
            bat "dotnet sonarscanner end /d:sonar.login=730d0045ddda3c8cdbbeb6304a127b9bf4b9d4cb"
          }
        }
      }
    }
  }
}
