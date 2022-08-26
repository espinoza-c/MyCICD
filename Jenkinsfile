def unitTestPath = './Unit_Testing_with_mock'
def mobileTest = './Mobile Testing'
def endToEnd = './SpecFlowProject_Selenium'
def token = "f5d98dabf64cef463ec9f68bb47fd3ca90dddbab"
pipeline{
  agent any
  stages{
    stage('Run Test') {
      parallel {
        stage('Unit test'){
          steps{
            bat "dotnet sonarscanner begin /k:Calculator /d:sonar.host.url=http://localhost:9001 /d:sonar.cs.vscoveragexml.reportsPaths='Unit_Testing_with_mock/coverage.xml' /d:sonar.coverage.exclusions='./Unit_Testing_with_mock/xUnitTests/xUnitTests.csproj' /d:sonar.login=${token}"
            bat "dotnet coverage collect \"dotnet test ${unitTestPath}/xUnitTests\" -f xml -o ${unitTestPath}/coverage.xml" 
            bat "dotnet build ./Unit_Testing_with_mock/src"
            bat "dotnet sonarscanner end /d:sonar.login=${token}"
          }
        }
      }
    }
  }
}
