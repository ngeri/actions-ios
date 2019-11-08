SCHEME = "Actions-iOS"
PROJECT = "Actions-iOS.xcodeproj"

swiftlint.lint_all_files = true
swiftlint.lint_files inline_mode: true

xcov.report(
   scheme: SCHEME,
   project: PROJECT,
   xccov_file_direct_path: Dir.glob("./**/*.xcresult").first,
   minimum_coverage_percentage: 90.0
)
