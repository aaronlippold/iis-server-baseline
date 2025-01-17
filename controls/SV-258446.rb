control 'SV-258446' do
  title 'The version of IIS running on the system must be a supported version.'
  desc 'Security flaws with software applications are discovered daily. Vendors are constantly updating and patching their products to address newly discovered security vulnerabilities. Organizations (including any contractor to the organization) are required to promptly install security-relevant software updates (e.g., patches, service packs, and hot fixes). Flaws discovered during security assessments, continuous monitoring, incident response activities, or information system error handling must also be addressed expeditiously.

Organization-defined time periods for updating security-relevant software may vary based on a variety of factors including, for example, the security category of the information system or the criticality of the update (i.e., severity of the vulnerability related to the discovered flaw).

This requirement will apply to software patch management solutions used to install patches across the enclave and to applications themselves that are not part of that patch management solution. For example, many browsers today provide the capability to install their own patch software. Patch criticality, as well as system criticality will vary. Therefore, the tactical situations regarding the patch management process will also vary. This means that the time period used must be a configurable parameter. Time frames for application of security-relevant software updates may be dependent upon the Information Assurance Vulnerability Management (IAVM) process.

The application will be configured to check for and install security-relevant software updates within an identified time period from the availability of the update. The specific time period will be defined by an authoritative source (e.g., IAVM, CTOs, DTMs, and STIGs).'
  desc 'check', 'IIS 8.5 is no longer supported by the vendor. If the system is running IIS 8.5, this is a finding.'
  desc 'fix', 'Upgrade to a supported version.'
  impact 0.7
  ref 'DPMS Target Microsoft IIS 8.5 Server'
  tag check_id: 'C-62185r928851_chk'
  tag severity: 'high'
  tag gid: 'V-258446'
  tag rid: 'SV-258446r928857_rule'
  tag stig_id: 'IISW-SV-009999'
  tag gtitle: 'SRG-APP-000456-WSR-000187'
  tag fix_id: 'F-53958r798705_fix'
  tag 'documentable'
  tag cci: ['CCI-002605']
  tag nist: ['SI-2 c']

  describe 'This test currently has no automated tests, you must check manually' do
    skip 'This check must be preformed manually'
  end
end
