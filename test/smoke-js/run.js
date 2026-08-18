const DCImGui = require('../../lib/prebuilt/web/dcimgui.js');
const smoke = require('./out/smokejs.js');
DCImGui().then(M => {
    smoke.runSmoke(M);
}).catch(e => { console.error('FAIL', e); process.exit(1); });
