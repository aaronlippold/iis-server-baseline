control 'SV-228573' do
  title 'An IIS Server configured to be a SMTP relay must require authentication.'
  desc 'Anonymous SMTP relays are strictly prohibited. An anonymous SMTP relay can be a vector for many types of malicious activity not limited to server exploitation for the sending of SPAM mail, access to emails, phishing, DoS attacks, etc. Enabling TLS, authentication, and strictly assigning IP addresses that can communicate with the relay greatly reduce the risk of the implementation.'
  desc 'check', 'Interview the System Administrator about the role of the IIS 8.5 web server.

If the IIS 8.5 web server is running SMTP relay services, have the SA provide supporting documentation on how the server is hardened. A DoD-issued certificate, and specific allowed IP address should be configured.

If the IIS 8.5 web server is not running SMTP relay services, this is Not Applicable.

If the IIS web server running SMTP relay services without TLS enabled, this is a finding.

If the IIS web server running SMTP relay services is not configured to only allow a specific IP address, from the same network as the relay, this is a finding.'
  desc 'fix', 'Configure the relay server with a specific allowed IP address, from the same network as the relay, and implement TLS.'
  impact 0.5
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag check_id: 'C-30805r505381_chk'
  tag severity: 'medium'
  tag gid: 'V-228573'
  tag rid: 'SV-228573r879587_rule'
  tag stig_id: 'IISW-SV-000161'
  tag gtitle: 'SRG-APP-000141-WSR-000075'
  tag fix_id: 'F-30784r505382_fix'
  tag 'documentable'
  tag legacy: ['V-102893', 'SV-111855']
  tag cci: ['CCI-000381']
  tag nist: ['CM-7 a']

  describe 'This test currently has no automated tests, you must check manually' do
    skip 'This check must be preformed manually'
  end
end
