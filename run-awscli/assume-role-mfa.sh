MFA='240030'
MFA_ARN='arn:aws:iam::xxxxx:mfa/cm-kawahara.masahiro'
ROLE_ARN='arn:aws:iam::yyyyy:role/cm-kawahara.masahiro'

aws --output json \
  sts assume-role \
  --role-arn "$ROLE_ARN" \
  --role-session-name ar-cred-proc \
  --serial-number "$MFA_ARN" \
  --token-code $MFA \
| jq ".Credentials + {Version: 1}" > ~/.aws/tmp_cred.json
