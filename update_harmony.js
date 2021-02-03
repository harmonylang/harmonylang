// eslint-disable-next-line @typescript-eslint/no-var-requires
const dotenv = require('dotenv');
// eslint-disable-next-line @typescript-eslint/no-var-requires
const axios = require('axios');
// eslint-disable-next-line @typescript-eslint/no-var-requires
const fs = require('fs');
// eslint-disable-next-line @typescript-eslint/no-var-requires
const path = require('path');
// eslint-disable-next-line @typescript-eslint/no-var-requires
const child_process = require('child_process');

dotenv.config();

async function update() {
  const HARMONY_SOURCE = process.env.HARMONY_SOURCE;
  const response = await axios.get(HARMONY_SOURCE);
  if (200 <= response.status && response.status < 300) {
    const rawData = response.data.toString();
    const utilizedHarmonyPath = path.join(__dirname, 'harmony-0.9', 'harmony.py');
    const destination = path.join(__dirname, 'harmony-0.9', 'harmony_updated.py');
    const diffOutput = path.join(__dirname, 'harmony-0.9', 'harmony_diff.txt');
    fs.writeFileSync(destination, rawData);
    child_process.exec(`diff '${utilizedHarmonyPath}' ${destination}`, (_, stdout) => {
      fs.writeFileSync(diffOutput, stdout);
    });
  }
}


update();
