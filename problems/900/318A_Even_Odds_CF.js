// Codeforces 318A - Even Odds (900)

'use strict';

const fs = require('fs');

function main() {
    const data = fs.readFileSync(0, 'utf8').trim();
    if (!data) return;

    const parts = data.split(/\s+/);
    if (parts.length < 2) return;

    const n = BigInt(parts[0]);
    const k = BigInt(parts[1]);

    const odds = (n + 1n) / 2n;
    let ans;
    if (k <= odds) {
        ans = 2n * k - 1n;
    } else {
        ans = 2n * (k - odds);
    }

    process.stdout.write(ans.toString());
}

main();

