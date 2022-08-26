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
            bat "dotnet sonarscanner begin /k:Calculator /d:sonar.host.url=http://localhost:9001 /d:sonar.cs.vscoveragexml.reportsPaths=${unitTestPath}/coverage.xml /d:sonar.coverage.exclusions='**/*Tests.csproj' /d:sonar.login=${token}"
            bat "dotnet coverage collect \"dotnet test ${unitTestPath}/xUnitTests\" -f xml -o ${unitTestPath}/coverage.xml"
            bat "dotnet build ./Unit_Testing_with_mock/src"
            bat "dotnet sonarscanner end /d:sonar.login=${token}"
          }
        }
        stage('Mobile Tests') {
          steps{
            echo "Running Mobile Test"

          }
        }
        stage('End-to-end Tests') {
          steps {
            echo "Running End to end tests"
          }
        }
      }
    }
  }
}
