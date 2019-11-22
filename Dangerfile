SCHEME = "Actions"
PROJECT = "Actions.xcodeproj"

# Swiftlint check
swiftlint.lint_all_files = true
swiftlint.lint_files inline_mode: true

# Code coverage check
xcov.report(
   scheme: SCHEME,
   project: PROJECT,
   xccov_file_direct_path: Dir.glob("./**/*.xcresult").first,
   minimum_coverage_percentage: 20.0
)
