$project    = '../Unit_Testing_with_mock'
$xml        = '$project/dotCover.Output.xml'
$res = Select-Xml -Xml $report -XPath "//Root//Assembly[@Name='Calculators']"