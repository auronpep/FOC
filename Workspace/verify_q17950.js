const fs = require('fs');
const path = require('path');
const content = fs.readFileSync(path.join(__dirname, 'Finished', 'CQ17950.md'), 'utf8');

// Check JSON blocks
// CQ files use CRLF endings, so the newline after the fence may be \r\n.
const jsonBlocks = content.match(/```json\r?\n([\s\S]*?)\r?\n```/g) || [];
console.log('JSON blocks found: ' + jsonBlocks.length);
let allJsonOk = true;
for(let i = 0; i < jsonBlocks.length; i++) {
  try {
    const raw = jsonBlocks[i];
    const json = raw.replace(/^```json\r?\n/, '').replace(/\r?\n```$/, '');
    const parsed = JSON.parse(json);
    const name = parsed.question_id || parsed.subject || 'unnamed';
    console.log('  JSON block ' + (i+1) + ' (' + name + '/' + (parsed.constructor ? parsed.constructor.name : '?') + '): OK (' + json.length + ' bytes)');
  } catch(e) {
    console.log('  JSON block ' + (i+1) + ' ERROR: ' + e.message.substring(0, 150));
    allJsonOk = false;
  }
}

// Check YAML for \\n issues
const yamlMatch = content.match(/```yaml\r?\n([\s\S]*?)\r?\n```/);
if(yamlMatch) {
  const yaml = yamlMatch[1];
  const hasBackslashN = /[A-D]:\\n/.test(yaml);
  console.log('YAML has A\\\\n pattern issues: ' + hasBackslashN);
  console.log('YAML block size: ' + yaml.length + ' bytes');
} else {
  console.log('No YAML block found');
}

// Post-shuffle key consistency
const keyMatches = content.match(/credited_answer["\:\s]+"([^"]+)"/g);
console.log('\ncredited_answer references: ' + (keyMatches ? keyMatches.join(', ') : 'none'));

const officialKeyMatches = content.match(/official_key["\:\s]+"?([A-D])"?/g);
console.log('official_key references: ' + (officialKeyMatches ? officialKeyMatches.join(', ') : 'none'));

// red_zone_dimensions check
console.log('\nred_zone_dimensions: ' + (content.includes('red_zone_dimensions') ? 'present' : 'MISSING'));
console.log('red_zones (legacy, should NOT be in program_elements): ' + (content.match(/\"red_zones\"/) ? 'WARNING - found' : 'correctly absent'));

console.log('\n' + (allJsonOk ? 'ALL JSON: PASS' : 'JSON ERRORS: FAIL'));