function Test-PasswordSecurity([System.String]$Pass)
{
	if ( $Pass.Length -le 1 ) { return $false }
	if ( $Pass -match "\s" ) { return $false }
	if ( $Pass -match "\W" ) { return $false }
	return $true
}

Test-PasswordSecurity "Mazinkaiser"
Test-PasswordSecurity "hello world_"
Test-PasswordSecurity "PassW0rd"
Test-PasswordSecurity "    "