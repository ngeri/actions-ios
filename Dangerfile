SCHEME = "Actions-iOS"
PROJECT = "Actions-iOS.xcodeproj"

# Swiftlint check
swiftlint.lint_all_files = true
swiftlint.lint_files inline_mode: true

# All file headers should be removed
clorox.check

# Code coverage check
xcov.report(
   scheme: SCHEME,
   project: PROJECT,
   xccov_file_direct_path: Dir.glob("./**/*.xcresult").first,
   minimum_coverage_percentage: 90.0
)
