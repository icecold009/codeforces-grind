<?php
// Codeforces 71A - Way Too Long Words (800)

$handle = fopen("php://stdin", "r");
if ($handle === false) {
    exit(0);
}

$line = fgets($handle);
if ($line === false) {
    fclose($handle);
    exit(0);
}

$t = (int)trim($line);

while ($t-- > 0) {
    $word = fgets($handle);
    if ($word === false) {
        break;
    }
    $word = trim($word);

    if (strlen($word) > 10) {
        $abbreviated = $word[0] . (string)(strlen($word) - 2) . $word[strlen($word) - 1];
        echo $abbreviated . PHP_EOL;
    } else {
        echo $word . PHP_EOL;
    }
}

fclose($handle);

