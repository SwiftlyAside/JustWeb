const isEmpty = function (value) {
  return value === '' || value == null || (typeof value === 'object' && !Object.keys(value).length);
};

function checkMember(authString) {
  const ids = ['memberId', 'memberPw', 'memberPwOk', 'authNum'];
  for (const id of ids) { if (!checkField(id, '필수항목이 비어있습니다.')) return; }
  if (!checkPassword(ids[1], ids[2])) return;
  if (checkAuth(ids[3], authString)) { document.getElementById('memberForm').submit(); }
}

function checkField(textField, message) {
  const id = document.getElementById(textField);
  if (isEmpty(id.value)) {
    alert(message);
    id.focus();
    return false;
  }
  return true;
}

function checkPassword(password, passwordOk) {
  const pw = document.getElementById(password);
  const pwOk = document.getElementById(passwordOk);
  if (pw.value !== pwOk.value) {
    alert('비밀번호가 일치하지 않습니다.');
    pw.value = '';
    pwOk.value = '';
    pw.focus();
    return false;
  } return true;
}

function checkAuth(authNum, authString) {
  const auth = document.getElementById('authNum');
  const authTarget = authString.toString();

  const authCredentialBefore = CryptoJS.SHA512(auth.value);
  const authCredential = CryptoJS.enc.Hex.stringify(authCredentialBefore);
  console.log(`Target: ${authTarget}`);
  console.log(`Resource: ${authCredential}`);
  if (authCredential !== authTarget) {
    alert('인증번호가 일치하지 않습니다.');
    auth.focus();
    return false;
  } return true;
}
