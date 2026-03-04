// Codeforces 96A - Football (900)

'use strict';

const fs = require('fs');

function main() {
    const data = fs.readFileSync(0, 'utf8').trim();
    if (!data) return;

    const s = data.split(/\s+/)[0];
    if (/0000000|1111111/.test(s)) {
        process.stdout.write('YES');
    } else {
        process.stdout.write('NO');
    }
}

main();

