This was the following output after rubocop auto-corrected most of the issues.
As far as I inspected, most of the issues were tied to not describing certain classes, for better documentation, as well as many methods having too many lines - more than recommended for clean code, or lines having to many characters.
CyclomaticComplexity and PerceivedComplexity were some warnings in a part of generated code.
Style/Documentation was triggered mostly in parts of the code that was automatically generated or pretty self explanatory.
I also had a warning about defining a constant in a block for rspec unit tests was not recommended.

Output:
alex@DESKTOP-APL5503:~/projects/vvs_project$ rubocop
Inspecting 66 files
..................................................................

66 files inspected, no offenses detected

I configured myselft some rules for rubocop:

Style/Documentation:
  Enabled: false

Metrics/BlockLength:
  Max: 200

Metrics/MethodLength:
  Max: 200

Layout/LineLength:
  Max: 256

Metrics/CyclomaticComplexity:
  Enabled: false

Metrics/PerceivedComplexity:
  Enabled: false

Metrics/AbcSize:
  Enabled: false

AllCops:
  NewCops: enable
