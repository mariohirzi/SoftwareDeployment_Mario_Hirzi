1. Storage über ARM war relativ einfach mithilfe von Microsoft Dokumentation
2. Bei der Web-app gab es ein paar Probleme bezüglich einen App-service-plan, der wurde jetzt manuell auf der Azure website erstellt
	da ich mir nicht sicher war, ob wir das auch über ARM lösen sollen
3. Zuletzt gab es noch ein paar kleine Probleme bei den Parametern


Powershell 7 Abfrage:

$templateFile= "path von der templatefile"
$parameterFile= "path von der parameterfile"

New-AzResourceGroupDeployment `
  -Name myResourceGrouptest `
  -ResourceGroupName myResourceGroup `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile
