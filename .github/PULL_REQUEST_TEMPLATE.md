## Checks before completing the PR
- [ ] This is a small demo / blueprint / blog sample (not a standalone project/product)
- [ ] There is no PII or any other sensitive data
- [ ] I have documented and tested my code so others can understand and reproduce
- [ ] (Optional) I ran ASH locally (easiest: `pre-commit run ash-simple-scan --all-files`, or the ASH CLI — https://github.com/awslabs/automated-security-helper) and addressed the Critical and High findings
- [ ] (Optional) I pasted the ASH summary (Critical / High counts) below (or noted that it was not run)
- [ ] (Optional) For every suppressed finding (e.g. cdk-nag), I explain WHY it is acceptable
