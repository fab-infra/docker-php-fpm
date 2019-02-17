<?php
// Process HTTP Authorization header manually when passed through CGI/FastCGI
if (!isset($_SERVER['PHP_AUTH_USER']) && !isset($_SERVER['HTTP_AUTHORIZATION']) && isset($_SERVER['Authorization']) &&
    preg_match('/Basic\s+(.*)$/i', $_SERVER['Authorization'], $matches)) {
	list($_SERVER['PHP_AUTH_USER'], $_SERVER['PHP_AUTH_PW']) = explode(':', base64_decode($matches[1]));
	$_SERVER['HTTP_AUTHORIZATION'] = $_SERVER['Authorization'];
	unset($matches, $_SERVER['Authorization']);
}
?>